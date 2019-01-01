# -----------------------------------------------------------------------------
# Macro : AX_FFMPEG
# =================
#
# This macro can be used to inform the Autotools about the ffmpeg program.
# -----------------------------------------------------------------------------


AC_DEFUN(

dnl AC_DEFUN arg 1 : Name macro

[AX_FFMPEG],

dnl AC_DEFUN arg 2 : Macro body

[
AC_ARG_WITH(

dnl AC_ARG_WITH arg 1 : Package name

[ffmpeg],

dnl AC_ARG_WITH arg 2 : Help string

[
AS_HELP_STRING(

[--with-ffmpeg=@<:@yes|no|path_to_ffmpeg@:>@],
[Have the build process either, use the first instance of ffmpeg which is found within the user's PATH (ARG=yes), not use an instance of ffmpeg at all (ARG=no), or use the instance of ffmpeg which resides at a specific loction (ARG=path_to_ffmpeg)]
)
],

dnl AC_ARG_WITH arg 3 : Action if given

[FFMPEG=${withval}],

dnl AC_ARG_WITH arg 4 : Action if not given

[FFMPEG="not-given"]
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
