% ------------------------------------------------------------------------------
% SuiteSparse Database Generator
% Generates Ruby-readable files for each matrix and group. Relies on ssget.
% * Group data generation requires access to the "canonical" SuiteSparse
%   Collection with group-level README.txt files in each group directory.
% * Figures require UFgplot.m, dsxy2figxy.m, and graphviz.
% ------------------------------------------------------------------------------

function ssdbgen (ids, groups)

%-------------------------------------------------------------------------------
% get inputs
%-------------------------------------------------------------------------------

index = ssget ;
params = ssget_defaults ;
collection_dir = params.topdir;

if (nargin < 1)
    ids = 1:length(index.nrows);
end

if (nargin < 2)
    groups = 1;
end

%--------------------------------------------------------------------------
% Directory setup
%--------------------------------------------------------------------------
if (~exist('collection_data', 'dir'))
    mkdir('collection_data')
end

if (groups && ~exist('./collection_data/groups', 'dir'))
    mkdir('./collection_data', 'groups')
end

if (~exist('./collection_data/matrices', 'dir'))
    mkdir('./collection_data', 'matrices')
end

%--------------------------------------------------------------------------
% Build group database
%--------------------------------------------------------------------------
[~, i] = sort (index.Group) ;
g = index.Group (i) ;
group = '' ;
ngroup = 0 ;
for i = ids
    if (strcmp (group, g {i}))
        continue
    end
    group = g {i} ;
    ngroup = ngroup + 1 ;
    group_list {ngroup} = group ;
end

nmat = 0 ;
new_groups = 0 ;

fprintf ('Updating groups ... \n') ;

for i = 1:ngroup

    group = group_list {i} ;

    % Skip this group if the data file is already present
    if (exist(['./collection_data/groups/', group, '.rb'], 'file'))
        continue
    end

    fprintf ('Create new group: %s\n', group) ;
    new_groups = new_groups + 1 ;

    f = fopen (['./collection_data/groups/', group, '.rb'], 'w');
    if (f < 0)
        error ('unable to create group data file') ;
    end
    group = group_list {i} ;
    fprintf(f, '{\n');
    
    % group name
    fprintf(f, '    name: ''%s'',\n', group);
    
    % number of matrices
    d = dir ([collection_dir 'mat/' group '/*.mat']) ;
    nmat_group = size (d,1) ;
    fprintf(f, '    num_matrices: ''%d'',\n', nmat_group);
    nmat = nmat + nmat_group ;

    % Detailed notes for each group
    f2 = fopen ([collection_dir '/mat/' group '/README.txt'], 'r');
    if (f2 < 0)
        warning (['no README file for group: ' group]) ;
    else
        fprintf(f, '    notes: ''');
        tline = fgetl(f2);
        while ischar(tline)
            fprintf (f, '%s\n', sanitize(tline)) ;
            tline = fgetl(f2);
        end
        fprintf(f, ''',\n');
        fclose (f2);
    end
    
    fprintf(f, '\n}\n\n');
    fclose (f) ;
end

%--------------------------------------------------------------------------
% Build matrix database
%--------------------------------------------------------------------------

fprintf ('Updating matrices ... \n') ;
new_matrices = 0 ;

for i = ids

%-------------------------------------------------------------------------------
% get the Problem and its contents
%-------------------------------------------------------------------------------

grp = index.Group {i} ;
name = index.Name {i} ;

% Create a folder for this group, unless one already exists
if (~exist(['./collection_data/matrices/', grp], 'dir'))
    mkdir('./collection_data/matrices/', grp)
end

% If the data file for this matrix already exists, skip this matrix
if (exist(['./collection_data/matrices/', grp, '/', name, '.rb'], 'file'))
    continue
end

fprintf ('Generating data for matrix %d : %s/%s\n', i, grp, name) ;
new_matrices = new_matrices + 1 ;

Problem = ssget (i,index) ;
disp (Problem)
fullname = Problem.name ;
s = strfind (fullname, '/') ;
assert (isequal (grp,  fullname (1:s-1))) ;
assert (isequal (name, fullname (s+1:end))) ;
id = Problem.id ;
assert (id == i) ;

f = fopen (['./collection_data/matrices/', grp, '/', name, '.rb'], 'w');
fprintf(f, '{\n');

ptitle = Problem.title ;

z = 0 ;
if (isfield (Problem, 'Zeros'))
    z = nnz (Problem.Zeros) ;
    Problem = rmfield (Problem, 'Zeros') ;
end

nblocks = index.nblocks (id) ;
ncc = index.ncc (id) ;

has_b = isfield (Problem, 'b') ;
has_x = isfield (Problem, 'x') ;
has_aux = isfield (Problem, 'aux') ;

if (has_b)
    b = Problem.b ;
    Problem = rmfield (Problem, 'b') ;
    if (iscell (b))
	b = sprintf ('cell %d-by-%d\n', size (b)) ;
    elseif (issparse (b))
	b = sprintf ('sparse %d-by-%d\n', size (b)) ;
    else
	b = sprintf ('full %d-by-%d\n', size (b)) ;
    end
end

if (has_x)
    x = Problem.x ;
    Problem = rmfield (Problem, 'x') ;
    if (iscell (x))
	x = sprintf ('cell %d-by-%d\n', size (x)) ;
    elseif (issparse (x))
	x = sprintf ('sparse %d-by-%d\n', size (x)) ;
    else
	x = sprintf ('full %d-by-%d\n', size (x)) ;
    end
end

if (has_aux)
    aux = Problem.aux ;
    Problem = rmfield (Problem, 'aux') ;
    auxfields = fields (aux) ;
    auxs = cell (1, length (auxfields)) ;
    for k = 1:length(auxfields)
	siz = size (aux.(auxfields{k})) ;
	if (iscell (aux.(auxfields{k})))
	    auxs {k} = sprintf ('cell %d-by-%d\n', siz) ;
	elseif (issparse (aux.(auxfields{k})))
	    auxs {k} = sprintf ('sparse %d-by-%d\n', siz) ;
	else
	    auxs {k} = sprintf ('full %d-by-%d\n', siz) ;
	end
    end
    clear aux
end

kind = Problem.kind ;
if (isfield (Problem, 'notes'))
    notes = Problem.notes ;
else
    notes = '' ;
end

au = Problem.author ;
ed = Problem.ed ;
da = Problem.date ;

m = index.nrows (id) ;
n = index.ncols (id) ;
nz = index.nnz (id) ;

clear Problem

%-------------------------------------------------------------------------------
% create the matrix database
%-------------------------------------------------------------------------------

% Matrix name and description
grp = fullname (1:s-1) ;
name = fullname (s+1:end) ;
fprintf(f, '    matrix_id: ''%d'',\n', id);
fprintf(f, '    name: ''%s'',\n', name);
fprintf(f, '    group: ''%s'',\n', grp);
fprintf(f, '    description: ''%s'',\n', sanitize(ptitle));
fprintf(f, '    author: ''%s'',\n', sanitize(au));
fprintf(f, '    editor: ''%s'',\n', sanitize(ed));
fprintf(f, '    date: ''%s'',\n', da);
fprintf(f, '    kind: ''%s'',\n', kind);
s = index.isND (id) ;
fprintf(f, '    problem_2D_or_3D: ''%d'',\n', s);

% Matrix properties
fprintf(f, '    num_rows: ''%d'',\n', m);
fprintf(f, '    num_cols: ''%d'',\n', n);
fprintf(f, '    nonzeros: ''%d'',\n', nz);
fprintf(f, '    num_explicit_zeros: ''%d'',\n', z);
if (ncc > -2)
    fprintf(f, '    num_strongly_connected_components: ''%d'',\n', ncc);
end
if (nblocks > -2)
    fprintf(f, '    num_dmperm_blocks: ''%d'',\n', nblocks);
end

srank = index.sprank (id) ;
if (srank > -2)
    if (srank == min (m,n))
        fprintf(f, '    structural_full_rank: ''true'',\n');
    else
        fprintf(f, '    structural_full_rank: ''false'',\n');
    end
    fprintf(f, '    structural_rank: ''%d'',\n', srank);
end

s = index.pattern_symmetry (id) ;
fprintf(f, '    pattern_symmetry: ''%.3f'',\n', s);

s = index.numerical_symmetry (id) ;
fprintf(f, '    numeric_symmetry: ''%.3f'',\n', s);

mtype = index.RBtype (id,:) ;
ss = '-' ;
if (mtype (1) == 'r')
    ss = 'real' ;
elseif (mtype (1) == 'c')
    ss = 'complex' ;
elseif (mtype (1) == 'i')
    ss = 'integer' ;
elseif (mtype (1) == 'p')
    ss = 'binary' ;
end
fprintf(f, '    rb_type: ''%s'',\n', ss);

ss = '-' ;
if (mtype (2) == 'r')
    ss = 'rectangular' ;
elseif (mtype (2) == 'u')
    ss = 'unsymmetric' ;
elseif (mtype (2) == 's')
    ss = 'symmetric' ;
elseif (mtype (2) == 'h')
    ss = 'Hermitian' ;
elseif (mtype (2) == 'z')
    ss = 'skew-symmetric' ;
end
fprintf(f, '    structure: ''%s'',\n', ss);


if (index.cholcand (id) == 1)
    ss = 'yes' ;
elseif (index.cholcand (id) == 0)
    ss = 'no' ;
else
    ss = '?' ;
end
fprintf(f, '    cholesky_candidate: ''%s'',\n', ss);

s = index.posdef (id) ;
if (s == 0)
    ss = 'no' ;
elseif (s == 1)
    ss = 'yes' ;
else
    ss = 'unknown' ;
end
fprintf(f, '    positive_definite: ''%s'',\n', ss);

% Notes
if (~isempty (notes))
    fprintf(f, '    notes: ''');
    for k = 1:size(notes,1)
	fprintf (f, '%s\n', sanitize_notes(notes (k,:)));
    end
    fprintf(f, ''',\n');
end

% Auxillary Fields
if (has_b || has_x || has_aux)
    if (has_b)
        fprintf(f, '    b_field: ''%s'',\n', b);
    end
    if (has_x)
        fprintf(f, '    x_field: ''%s'',\n', x);
    end
    if (has_aux)
        fprintf(f, '    aux_fields: ''');
        for k = 1:length(auxfields)
            fprintf (f, '%s: %s', auxfields{k}, char (auxs{k})) ;
        end
        fprintf(f, ''',');
    end
end

%-------------------------------------------------------------------------------
% ordering statistics
%-------------------------------------------------------------------------------

% if (index.amd_lnz (id) > -2 || index.amd_vnz (id) > -2)
%     if (index.amd_lnz (id) > -2)
%     fprintf(f, '    nnz_chol: ''%d'',\n', index.amd_lnz (id));
%     fprintf(f, '    cholesky_flop_count: ''%7.1e'',\n', index.amd_flops (id));
%     fprintf(f, '    nnz_L_plus_U: ''%d'',\n', 2*index.amd_lnz (id) - min(m,n));
%     end
%     if (index.amd_vnz (id) > -2)
%         fprintf(f, '    nnz_v: ''%d'',\n', index.amd_vnz (id));
%         fprintf(f, '    nnz_r: ''%d'',\n', index.amd_rnz (id));
%     end
% end

%-------------------------------------------------------------------------------
% SVD stats
%-------------------------------------------------------------------------------

try
    svdfile = [collection_dir 'svd/' grp '/' name '_SVD.mat'] ;
    S = load (svdfile) ;
    S = S.S ;
    s = S.s ;
catch me
    s = [ ] ;
    % fprintf ('no svd computed for this matrix\n') ;
    % me
    % pause
end
k = min (m,n) ;
if (length (s) == k)
    % s = sort (s, 'descend') ;
    nrm = max (s) ;                             % 2-norm
    tol = max (m,n) * eps (nrm) ;               % tol for rank
    rnk = sum (s > tol) ;                       % rank
    if (min (s) == 0)                           % condition number
        cnd = inf ;
    else
        cnd = max (s) ./ min (s) ;
    end
    fprintf(f, '    norm: ''%d'',\n', nrm);
    fprintf(f, '    min_singular_value: ''%d'',\n', min(s));
    fprintf(f, '    condition_number: ''%d'',\n', cnd);
    fprintf(f, '    svd_rank: ''%d'',\n', rnk);
    if (srank > -2)
        fprintf(f, '    sprank_minus_rank: ''%d'',\n', srank-rnk);
    end
    fprintf(f, '    null_space_dimension: ''%d'',\n', k - rnk);
    if (rnk == k)
        fprintf(f, '    full_numerical_rank: ''yes'',\n');
    else
        fprintf(f, '    full_numerical_rank: ''no'',\n');
        if (rnk > 1)
            gap = s (rnk) / s (rnk+1) ;
            fprintf(f, '    svd_gap: ''%f'',\n', gap);
        end
    end
end

% .png
% _graph.gif
% _APlusAT_graph.gif
% _dmperm.png
% _scc.png
% _gplot.png
% _svd.png

image_file_list = [dir(['/archive/davis/SuiteSparseCollection/files/', fullname, '*.png']);
                   dir(['/archive/davis/SuiteSparseCollection/files/', fullname, '*.gif'])];

k = 1;
while k <= length(image_file_list)
    if ~isempty(regexp(image_file_list(k).name, '.*_thumb\..*', 'ONCE')) ...
        || ~isempty(regexp(image_file_list(k).name, '.*_big\..*', 'ONCE')) ...
        || isempty(regexp(image_file_list(k).name, (strcat(name,'[\._].*')), 'ONCE'))
        % Remove thumbnail or large image from list
        % Also remove matches like matrix10 when processing matrix1
        image_file_list(k) = [];
    else
        k = k + 1;
    end
end
               
fprintf(f, '    image_files: ''');

for k = 1:length(image_file_list)
    fprintf(f, '%s,', image_file_list(k).name);
end

fprintf(f, ''',\n');


% if (img_exists([fullname, '.png']))
%     fprintf(f, '    has_pattern_plot: true,\n');
% else
%     fprintf(f, '    has_pattern_plot: false,\n');
% end

% if (img_exists([fullname, '_graph.gif']))
%     fprintf(f, '    has_graph_plot: true,\n');
% else
%     fprintf(f, '    has_graph_plot: false,\n');
% end

% if (img_exists([fullname, '_APlusAT_graph.gif']))
%     fprintf(f, '    has_AplusAT_plot: true,\n');
% else
%     fprintf(f, '    has_AplusAT_plot: false,\n');
% end

% if (img_exists([fullname, '_dmperm.png']))
%     fprintf(f, '    has_dmperm_plot: true,\n');
% else
%     fprintf(f, '    has_dmperm_plot: false,\n');
% end

% if (img_exists([fullname, '_scc.png']))
%     fprintf(f, '    has_scc_plot: true,\n');
% else
%     fprintf(f, '    has_scc_plot: false,\n');
% end

% if (img_exists([fullname, '_gplot.png']))
%     fprintf(f, '    has_gplot: true,\n');
% else
%     fprintf(f, '    has_gplot: false,\n');
% end

% if (img_exists([fullname, '_svd.png']))
%     fprintf(f, '    has_svd_plot: true,\n');
% else
%     fprintf(f, '    has_svd_plot: false,\n');
% end

fprintf(f, '}\n');
fclose (f) ;
end

fprintf ('%d groups added to the database\n', new_groups) ;
fprintf ('%d matrices added to the database\n', new_matrices) ;

end

% Insert escape sequences for backslashes and apostrophes
function f = sanitize(string)
    f = strrep(string, '\', '\\');
    f = strrep(f, '''', '\''');
end

% Only escape apostrophes in pre-formatted notes
function f = sanitize_notes(string)
    f = strrep(string, '''', '\''');
end

function f = img_exists(img_name)
    url = ['https://sparse.tamu.edu/files/', img_name];

    context = javax.net.ssl.SSLContext.getInstance("TLSv1.2");
    context.init([], [], []);
    javax.net.ssl.SSLContext.setDefault(context);

    J = java.net.URL(url);
    conn = openConnection(J);
    conn.setSSLSocketFactory(context.getSocketFactory());
    status = getResponseCode(conn);

    f = (status >= 200 && status < 400);
end
