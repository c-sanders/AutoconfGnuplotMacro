AC_INIT([autoconf_gnuplot_macro_test], [0.1], [craig@gravitas-toolworks.com])
# AC_CONFIG_SRCDIR([python/AnimationGenerator.py])
AM_INIT_AUTOMAKE
LT_INIT

m4_include([m4/ax_gnuplot.m4])

AC_CONFIG_MACRO_DIR([m4])

AX_GNUPLOT()

AC_MSG_NOTICE([GNUPLOT = \"${GNUPLOT}\"])

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
