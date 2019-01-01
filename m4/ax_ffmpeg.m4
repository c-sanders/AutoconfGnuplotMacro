# -----------------------------------------------------------------------------
# Macro : AX_FFMPEG
# =================
#
# This macro can be used to inform the Autotools about the ffmpeg program.
# -----------------------------------------------------------------------------


AC_DEFUN(

  [AX_FFMPEG],

  [
	AC_ARG_WITH(

	  [ffmpeg],
	  [
AS_HELP_STRING(

[--with-ffmpeg=@<:@yes|no|path_to_ffmpeg@:>@],
[Have the build process either, use the first instance of ffmpeg which is found within the user's PATH (ARG=yes), not use an instance of ffmpeg at all (ARG=no), or use the instance of ffmpeg which resides at a specific loction (ARG=path_to_ffmpeg)]
)
	  ],
	  [FFMPEG=${withval}],
	  [FFMPEG="not specified"]
	)

	AS_CASE(

	  [${withval}],
	  [yes], [AC_CHECK_PROG([FFMPEG], [ffmpeg], [ffmpeg], [""])],
	  [no],  [FFMPEG=""],
	  [FFMPEG="${withval}"]
	)

	AC_SUBST(FFMPEG)
  ]
)
