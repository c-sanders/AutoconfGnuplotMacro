AC_INIT(
	[autoconf_gnuplot_macro_test],
	[0.1],
	[craig@gravitas-toolworks.com])
# AC_CONFIG_SRCDIR([python/AnimationGenerator.py])
AM_INIT_AUTOMAKE
LT_INIT

m4_include([m4/ax_compare_version.m4])
m4_include([m4/ax_gnuplot.m4])
m4_include([m4/ax_ffmpeg.m4])

AC_CONFIG_MACRO_DIRS([m4])

# The following two macro invocations were recommended by autoscan.

AC_PROG_CXX()
AC_PROG_RANLIB()

AX_FFMPEG(["3"], ["2"], ["1"])

AC_MSG_NOTICE([FFMPEG  = \"${FFMPEG}\"])

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
