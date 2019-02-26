# The following Environment variables are used by this Makefile but should be
# set externally by the Autoconf configure script ;
#
#   - FRAME_RATE_ANIMATION   = "25"
#   - RESOLUTION_ANIMATION   = "1920x1080"
#   - ASPECT_RATIO_ANIMATION = "16:9"


ACLOCAL_AMFLAGS = -I m4


all:

	@echo ""
	@echo "There isn't anything to make here!"
	@echo ""
	@echo "This package doesn't need to compile or build anything. All it really needs to  "
	@echo "do, is to install a few files into their correct location. Therefore, the only  "
	@echo "make command you need to run is;                                                "
	@echo ""
	@echo "  > make install                                                                "
	@echo ""
	@echo "Good luck and happy installing :)"
	@echo ""


.PHONY: install
install: 

	${INSTALL} --verbose --directory  ${prefix}/python
	${INSTALL} --verbose --target-directory=${prefix} README 
	${INSTALL} --verbose --target-directory=${prefix}/python ./python/runFfmpeg.py


.PHONY: displaySettings
displaySettings:

	@echo "PREFIX               = @PREFIX@"
	@echo "prefix               = @prefix@"
	@echo "prefix               = ${prefix}"
	@echo "srcdir               = ${srcdir}"
	@echo "builddir             = ${builddir}"
	@echo "GNUPLOT              = ${GNUPLOT}"
