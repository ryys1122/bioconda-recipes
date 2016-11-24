#!/bin/bash
# Extracted from from grass/setup.sh

#cpanm --mirror http://cpan.metacpan.org --notest -l $PREFIX --installdeps .

#perl Makefile.PL INSTALL_BASE=$PREFIX && \
#make && \
#make test && \
#make install

./setup.sh $PREFIX
