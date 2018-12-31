# -----------------------------------------------------------------------------
# Macro : AX_GNUPLOT
# ==================
#
# This macro can be used to inform the Autotools about the gnuplot program.
# -----------------------------------------------------------------------------


AC_DEFUN(

  [AX_GNUPLOT],

  [
	AC_ARG_WITH(

	  [gnuplot],
	  [
AS_HELP_STRING(

[--with-gnuplot=@<:@yes|no|path_to_gnuplot@:>@],
[Have the build process either, use the first instance of gnuplot which is found within the user's PATH (ARG=yes), not use an instance of gnuplot at all (ARG=no), or use the instance of gnuplot which resides at a specific loction (ARG=path_to_gnuplot)]
)
	  ],
	  [GNUPLOT=${withval}],
	  [GNUPLOT=""]
	)

	AS_CASE(

	  [${withval}],
	  [yes], [AC_CHECK_PROG([GNUPLOT], [gnuplot], [gnuplot], [""])],
	  [no],  [GNUPLOT=""],
	  [GNUPLOT="${withval}"]
	)

	AC_SUBST(GNUPLOT)
  ]
)
