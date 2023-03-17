CWD:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
DOC_SOURCEDIR     = ${CWD}/reqs/
DOC_BUILDDIR = ${CWD}/build/
DOC_LOGDIR = ${CWD}/log/

all: req

req: 
	@echo "Creating documentation"
	@sphinx-build -E -b html "$(DOC_SOURCEDIR)" "$(DOC_BUILDDIR)" -c "${CWD}"

clean:
	@echo "Cleaning"
	@rm -rf "${DOC_BUILDDIR}"
	@rm -rf "${DOC_LOGDIR}"
