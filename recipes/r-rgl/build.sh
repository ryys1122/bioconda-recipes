#!/bin/bash

# R refuses to build packages that mark themselves as Priority: Recommended
mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

$R CMD INSTALL --build .

cp /usr/lib64/libGL.so $PREFIX/lib
cd $PREFIX/lib
ln -s ./libGL.so ./libGL.so.1.2.0
ln -s ./libGL.so ./libGL.so.1


# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
