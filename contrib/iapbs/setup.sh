#! /bin/sh
### ##########################################################################
### MALOC = < Minimal Abstraction Layer for Object-oriented C >
### Copyright (C) 1994--2000  Michael Holst
###
### This program is free software; you can redistribute it and/or modify it
### under the terms of the GNU General Public License as published by the
### Free Software Foundation; either version 2 of the License, or (at your
### option) any later version.
###
### This program is distributed in the hope that it will be useful,
### but WITHOUT ANY WARRANTY; without even the implied warranty of
### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
### See the GNU General Public License for more details.
###
### You should have received a copy of the GNU General Public License along
### with this program; if not, write to the Free Software Foundation, Inc.,
### 675 Mass Ave, Cambridge, MA 02139, USA.
###
### rcsid="$Id: setup.sh 1125 2007-09-06 20:52:30Z sdg0919 $"
### ##########################################################################

##############################################################################
# File:    bootstrap
#
# Purpose: Auto-generate the GNU configure script.
#          (WITH LIBTOOL AND AUTOHEADER.)
#
# Author:  Michael Holst
##############################################################################

rm -rf config.cache autom4te.cache

aclocal
automake --gnu --add-missing --copy
autoconf
#autoheader --verbose 

if [ -x libtoolize ]; then
  libtoolize --automake --copy --force
fi

rm -rf config.cache autom4te.cache

