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

[--with-gnuplot=@<:@yes|no|ARG@:>@],
[build using either 1) the first instance of gnuplot which is found on the system, or 2) don't use gnuplot at all, or 3) use the instance of gnuplot which is installed at ARG]
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
