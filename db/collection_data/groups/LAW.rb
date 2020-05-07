{
    name: 'LAW',
    num_matrices: '15',
    notes: 'Laboratory for Web Algorithmics (LAW), Università degli Studi di Milano
http://law.di.unimi.it/index.php

When using matrices in the LAW/ group in the collection, please follow the
citation instructions at http://law.di.unimi.it/datasets.php

If you publish results based on these graphs, please acknowledge the usage of
WebGraph and LLP by quoting the following papers:

@inproceedings{BoVWFI,
  author ="Paolo Boldi and Sebastiano Vigna",
  title = "The {W}eb{G}raph Framework {I}: {C}ompression Techniques",
  year = 2004,
  booktitle="Proc. of the Thirteenth International World Wide Web Conference (WWW 2004)",
  address="Manhattan, USA",
  pages="595--601",
  publisher="ACM Press"
}

@inproceedings{BRSLLP,
  author = "Paolo Boldi and Marco Rosa and Massimo Santini and Sebastiano Vigna",
  title = "Layered Label Propagation: A MultiResolution Coordinate-Free Ordering
  for Compressing Social Networks",
  booktitle="Proceedings of the 20th international conference on World Wide Web",
  year = 2011,
  publisher="ACM Press"
}

If the graphs you are using were gathered by UbiCrawler, please acknowledge the
usage of UbiCrawler by quoting the following paper:

@article{BCSU3,
  author="Paolo Boldi and Bruno Codenotti and Massimo Santini and Sebastiano Vigna",
  title="UbiCrawler: A Scalable Fully Distributed Web Crawler",
  journal="Software: Practice and Experience",
  year=2004,
  volume=34,
  number=8,
  pages="711--726"
}

Notes on the graphs in the UF Collection:

    The node labels have not been imported into the UF Collection,
    since they are not yet compatible with the UF format.
    They are available at the http://law.di.unimi.it/index.php site
    as separate files.

    The MATLAB Problem.A matrix is stored in double precision, but
    these files are all binary.  These graphs are also quite huge.
    If you have problems with memory usage, you can convert the
    graphs to the logical format.  For example:

        Problem = UFget (\'LAW/uk-2002\') ;
        A = logical (Problem.A) ;
        clear Problem

    The above transformation will temporarily take additional space,
    but once the transformation is made, A will be about half as
    big as the original Problem.A.  This will free up memory for
    other algorithms to operate on the graph (assuming that they
    can operate on logical sparse matrices).

For a complete list of the graphs in the LAW collection, and
for a wealth of statistical data on the graphs, please
refer to http://law.di.unimi.it/datasets.php for details.

',

}

