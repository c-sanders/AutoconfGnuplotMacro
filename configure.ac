AC_INIT([autoconf_gnuplot_macro_test], [0.1], [craig@gravitas-toolworks.com])
# AC_CONFIG_SRCDIR([python/AnimationGenerator.py])
AM_INIT_AUTOMAKE
LT_INIT

dnl m4_include([m4/ax_gnuplot.m4])
dnl m4_include([m4/ax_ffmpeg.m4])

AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_MACRO_DIRS([m4])

AX_GNUPLOT()
AX_FFMPEG()

AC_MSG_NOTICE([GNUPLOT = \"${GNUPLOT}\"])
AC_MSG_NOTICE([FFMPEG  = \"${FFMPEG}\"])

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
