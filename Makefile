#****************************************************************************
#
#    Copyright (C) 2025 David Latham
#
#    This library is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Lesser General Public
#    License as published by the Free Software Foundation; either
#    version 2.1 of the License, or (at your option) any later version.
#
#    This library is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Lesser General Public License for more details.
#
#    You should have received a copy of the GNU Lesser General Public
#    License along with this library; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301
#    USA
#
# https://github.com/linuxplayground/z80-retro-libcpm.git
#
#****************************************************************************
TOP=.

include Make.default
-include Make.local

all:: retro nouveau

retro:
	make -C arch/RETRO

nouveau:
	make -C arch/NOUVEAU

examples:
	make -C examples

clean::
	make -C arch/RETRO clean
	make -C arch/NOUVEAU clean

docs:
	make -C docs

install: ./install.sh
	./install.sh $(INSTALLDIR)
uninstall:
	rm -fr $(INSTALLDIR)

world: clean all
	make -C examples all
