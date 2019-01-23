# -----------------------------------------------------------------------------
# Macro : AX_FFMPEG
# =================
#
# This macro can be used to inform the Autotools about the ffmpeg program.
# -----------------------------------------------------------------------------
#
# Not specified                   :  withval=yes  (default value)
# --with-ffmpeg                   :  withval=yes
# --with-ffmpeg=yes               :  withval=yes
# --with-ffmpeg=<path_to_ffmpeg>  :  withval=<path_to_ffmpeg>
# --without-ffmpeg                :  withval=no
#
# -----------------------------------------------------------------------------


AC_DEFUN(

	[AX_FFMPEG],

	[
		AC_ARG_WITH(

			[ffmpeg],
			[
AS_HELP_STRING(
					[--with-ffmpeg=@<:@yes|no|path_to_ffmpeg@:>@],
					[Instruct the build process to either, 1) use the first instance of ffmpeg which is found within the build user's PATH (ARG=yes), 2) not use an instance of ffmpeg at all (ARG=no), or 3) use the instance of ffmpeg which resides at a specific loction (ARG=path_to_ffmpeg). @<:@default=yes@:>@]
				)
			],
			[
				AS_BOX(
					["--with-ffmpeg specified : withval = ${withval}"],
					[=])
			],
			[
				withval=yes
				with_ffmpeg=yes
				AS_BOX(
					["--with-ffmpeg not specified : withval = ${withval}"],
					[=])
			]
		)

		AS_CASE(

			[${withval}],
			[yes],
				[
					AC_CHECK_PROG(
					
						[FFMPEG],
						[ffmpeg],
						[ffmpeg],
						AC_MSG_NOTICE(["ffmpeg not in PATH"])
					)
				],
			[no], 
				[FFMPEG=""],
			[FFMPEG="${withval}"]
		)

		dnl AC_SUBST(FFMPEG)
	]
)
