/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom*/
static const unsigned int alpha = 0x80;     /* Amount of opacity. 0xff is opaque */
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 500;                    /* minimum width when centered */
static const float menu_height_ratio = 5.0f;  /* This is the ratio used in the original calculation */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"JetBrainsMono Nerd Font:size=10"};

 static const unsigned int alphas[SchemeLast][2] = {
        [SchemeNorm] = { OPAQUE, alpha },
        [SchemeSel] = { OPAQUE, alpha },
        [SchemeOut] = { OPAQUE, alpha },
 };

static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#e8dcc0", "#242019" },
	[SchemeSel]  = { "#1a1712", "#6fa89e" },
	[SchemeOut]  = { "#242019", "#e8895f" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";


