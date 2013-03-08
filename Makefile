# Licensed under the Tumbolia Public License. See footer for details.

#-------------------------------------------------------------------------------
check-deps:
	@-mkdir -p tmp

	@echo "local status:"
	@echo $(PROGRAM)    > tmp/process-ls.js
	@npm ls --json> tmp/ls.json
	@node tmp/process-ls.js
	@echo " "
	@echo "npm status:"
	@echo "   marked:" 	  		"`npm view marked   version`"
	@echo "   wr:" 				"`npm view wr       version`"

PROGRAM = "fs = require(\"fs\");json = fs.readFileSync(\"tmp/ls.json\"); json = JSON.parse(json); for (var dep in json.dependencies) {version = json.dependencies[dep].version; console.log(\"   \" + dep + \": \" + version);}"

#-------------------------------------------------------------------------------
vendor: vendor-init vendor-npm vendor-jquery

#-------------------------------------------------------------------------------
vendor-init:
	@-mkdir -p vendor

#-------------------------------------------------------------------------------
vendor-npm:
	@echo "installing node modules"
	@npm install

#-------------------------------------------------------------------------------
vendor-jquery:
	@echo "installing jquery"

	@curl --progress-bar -o vendor/jquery.min.js  $(JQUERY_URL).min.js
	@curl --progress-bar -o vendor/jquery.js      $(JQUERY_URL).js

JQUERY_URL = http://code.jquery.com/jquery-1.9.0

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
