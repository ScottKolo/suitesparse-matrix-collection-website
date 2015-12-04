class Matrix < ActiveRecord::Base
  #validates :group, presence: true
  #validates :name, presence: true
  #validates :author, presence: true
  #validates :kind, presence: true
  #validates :email, presence: true

  has_attached_file :matrix_data_file

  ### Download Helpers #########################################################

  # Get the base URL for remote matrix downloads
  def self.get_base_url
    return '//www.cise.ufl.edu/research/sparse/'
  end

  # Get the download URL for a given matrix and file format
  def get_url(file_format)
    base_url = Matrix.get_base_url
    if file_format == :matlab
      return "#{base_url}mat/#{self.group}/#{self.name}.mat"
    elsif file_format == :rutherford_boeing
      return "#{base_url}RB/#{self.group}/#{self.name}.tar.gz"
    elsif file_format == :matrix_market
      return "#{base_url}MM/#{self.group}/#{self.name}.tar.gz"
    else
      raise ArgumentError.new("Unknown matrix file type - only :matlab, :rutherford_boeing, and :matrix_market allowed")
    end
  end

  ### Filtering and Sorting Helpers ############################################

  # Get the set of filterable attributes
  def self.filterable_attributes
    return [
      ["group",     "string"],
      ["name",      "string"],
      ["num_rows",  "int"],
      ["num_cols",  "int"],
      ["nonzeros",  "int"],
      ["pattern_symmetry", "int"],
      ["numeric_symmetry", "int"],
      ["positive_definite", "bool"],
      ["kind",      "string"],
      ["date",      "int"],
      ["author",    "string"],
      ["editor",    "string"],
      ["notes",     "string"]
    ]
  end

  # Get the set of sortable attributes
  def self.sortable_attributes
    return [
      ["group"   ],
      ["name"    ],
      ["num_rows"],
      ["num_cols"],
      ["nonzeros"],
      ["kind"    ],
      ["date"    ],
    ]
  end

  ##############################################################################

  def toggle_pending
    if self.pending?
      self.pending = false
    else
      self.pending = true
    end
  end

end
