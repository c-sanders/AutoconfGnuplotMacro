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
[Either use the instance of gnuplot that resides in the user's PATH (ARG=yes), don't use an instance of gnuplot at all (ARG=no), or use the instance of gnuplot that resides at a specific loction (ARG=<path_to_gnuplot>)]
)
	  ],
	  [GNUPLOT=${withval}],
	  [GNUPLOT=""]
	)

	AS_CASE(

	  [${withval}],
	  [yes], [GNUPLOT="gnuplot"],
	  [no],  [GNUPLOT=""],
	  [GNUPLOT="${withval}"]
	)

	AC_SUBST(GNUPLOT)
  ]
)
