#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


# Invoke the necessary Autotools initialisation macros.
# -----------------------------------------------------

AC_PREREQ([2.69])

AC_INIT(
	[autoconf_gnuplot_macro_test],
	[0.1],
	[craig@gravitas-toolworks.com])

AM_INIT_AUTOMAKE()

# The invocation of LT_INIT below, means that AC_PROG_RANLIB does not need to be
# invoked.

LT_INIT()

# AC_CONFIG_SRCDIR([python/AnimationGenerator.py])


# Tell Autoconf where certain macros should be loaded from.
# ---------------------------------------------------------

AC_CONFIG_MACRO_DIRS([m4])

# m4_include([m4/ax_compare_version.m4])
m4_include([m4/ax_gnuplot.m4])
m4_include([m4/ax_ffmpeg.m4])


# Checks for programs.
# --------------------

AC_PROG_CXX()

# Specify a minimum required version number for the gnuplot program.

AX_GNUPLOT(
	["5"],
	["0"],
	["0"])

# Specify a minimum required version number for the ffmpeg program.

AX_FFMPEG(
	["1"],
	["0"],
	["0"])

AC_MSG_NOTICE([Variable GNUPLOT = \"${GNUPLOT}\"])
AC_MSG_NOTICE([Variable FFMPEG  = \"${FFMPEG}\"])


# Generate the necessary files.
# -----------------------------

AC_CONFIG_FILES([Makefile
                 python/runFfmpeg.py])

AC_OUTPUT
