# Licensed under the Tumbolia Public License. See footer for details.

#-------------------------------------------------------------------------------
help:
	@echo "make build - build the stuff"
	@echo "make watch - watch for source changes, then build the stuff"

#-------------------------------------------------------------------------------
watch:
	@../node_modules/.bin/wr "make build" .

#-------------------------------------------------------------------------------
build: assignments

#-------------------------------------------------------------------------------
assignments: \
	assignment-1/lesson.html \
	assignment-2/lesson.html

#-------------------------------------------------------------------------------
assignment-1/lesson.html: assignment-1/lesson.md template-beg.html template-end.html
	@echo building $@
	@cat template-beg.html                             > $@
	@../node_modules/.bin/marked --gfm --no-breaks $< >> $@
	@cat template-end.html                            >> $@

#-------------------------------------------------------------------------------
assignment-2/lesson.html: assignment-2/lesson.md template-beg.html template-end.html
	@echo building $@
	@cat template-beg.html                             > $@
	@../node_modules/.bin/marked --gfm --no-breaks $< >> $@
	@cat template-end.html                            >> $@

#-------------------------------------------------------------------------------
# Copyright (c) 2013 Patrick Mueller
#
# Tumbolia Public License
#
# Copying and distribution of this file, with or without modification, are
# permitted in any medium without royalty provided the copyright notice and
# this notice are preserved.
#
# TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#   0. opan saurce LOL
#-------------------------------------------------------------------------------

