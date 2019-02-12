# SuiteSparse Matrix Collection

[![Build Status](https://semaphoreci.com/api/v1/scottkolo/suitesparse-matrix-collection-website/branches/master/badge.svg)](https://semaphoreci.com/scottkolo/suitesparse-matrix-collection-website) [![Code Climate](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website/badges/gpa.svg)](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website) [![Test Coverage](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website/badges/coverage.svg)](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website/coverage) [![Issue Count](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website/badges/issue_count.svg)](https://codeclimate.com/github/ScottKolo/suitesparse-matrix-collection-website)

A web interface for the SuiteSparse Matrix Collection, formerly known as the University of Florida Sparse Matrix Collection. It is currently deployed at [https://sparse.tamu.edu](https://sparse.tamu.edu).

## Bugs and Feature Requests

Find a problem with the website? Report it as an [Issue](https://github.com/ScottKolo/suitesparse-matrix-collection-website/issues), or suggest a fix via a [Pull Request](https://github.com/ScottKolo/suitesparse-matrix-collection-website/pulls).

## Building Locally

While the canonical deployment can be found at [https://sparse.tamu.edu](https://sparse.tamu.edu), you may wish to deploy a version of the SuiteSparse Matrix Collection website locally for testing or convenience. 

The only dependencies for running the application are listed below. They can be installed using your package manager (like `apt-get` or `yum` for Linux or `brew` for macOS):

 * Ruby 2.5 or later
 * PostgreSQL 8.4 or later

For running the test suite, the following additional dependencies are required:

 * PhantomJS 2.1.1 or later

The application is a standard Ruby on Rails web application, and can be installed with the following commands:

```shell
ruby -v                              # Check that Ruby 2.5+ is installed
git clone https://github.com/ScottKolo/suitesparse-matrix-collection-website.git
cd suitesparse-matrix-collection-website
gem install bundler:1.16.6           # Dependency manager
bundle install --without production  # Download and install dependencies
bundle exec rake db:setup            # Generate and seed the database
bundle exec rails server             # Start the Ruby on Rails server application
```

Once the Rails server starts, you can navigate to localhost:3000 to view the web application running locally.

## Test Suite

After building and running the applicaiton locally, you can run the test suite by running

```shell
bundle exec rake
```

This will run a variety of Cucumber, rspec, and Brakeman tests that ensure the backend and user interface frontend function correctly, and that no (obvious) security issues exist. It will also report test coverage, with a detailed report generated in the `/coverage` directory.

## Acknowledgements

This website was originally part of a Software Engineering course project. The original team members are listed below:

* [Scott Kolodziej](http://www.scottkolo.com) (current maintainer)
* [Read Sandström](https://parasol.tamu.edu/people/readamus/)
* [Mohsen Aznaveh](https://parasol.tamu.edu/people/aznaveh/)
* [Jarrett David](https://parasol.tamu.edu/people/jld6827/)
* [Matthew Bullock](https://parasol.tamu.edu/people/fourcow2/)
* Matthew Henderson

We would also like to thank [Dr. Jeff Huang](https://parasol.tamu.edu/~jeff/), who taught that Software Enigneering course and impressed upon us the importance of software engineering practices, such as test-driven development and Agile.

We also owe a significant debt to [Dr. Tim Davis](http://faculty.cse.tamu.edu/davis/) for his input and guidance, as well as for creating many of the tools (and the original website) that made this project possible.
