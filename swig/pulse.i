%module pulse
%{
#include <pulse/pulseaudio.h>
%}

/* Ignore deprecated functions */
%ignore pa_autoload_info;
%ignore pa_context_add_autoload;
%ignore pa_context_get_autoload_info_by_name;
%ignore pa_context_get_autoload_info_by_index;
%ignore pa_context_get_autoload_info_list;
%ignore pa_context_remove_autoload_by_name;
%ignore pa_context_remove_autoload_by_index;
%ignore pa_context_remove_autoload_list;

/* Write out doc strings (duh!) */
%feature("autodoc", "1");

/* These first two don't define anything useful but they do define
 * some macros which wind up just being blank in our case. */
%include <pulse/cdecl.h>
%include <pulse/gccmacro.h>

%include <pulse/mainloop-api.h>
%include <pulse/sample.h>
%include <pulse/def.h>
%include <pulse/context.h>
%include <pulse/stream.h>
%include <pulse/introspect.h>
%include <pulse/subscribe.h>
%include <pulse/scache.h>
%include <pulse/version.h>
%include <pulse/error.h>
%include <pulse/operation.h>
%include <pulse/channelmap.h>
%include <pulse/volume.h>
%include <pulse/thread-mainloop.h>
%include <pulse/mainloop.h>
%include <pulse/mainloop-signal.h>
%include <pulse/proplist.h>

/* exclude these, they are basically just c portability stuff */
//%include <pulse/xmalloc.h>
//%include <pulse/utf8.h>
//%include <pulse/util.h>
//%include <pulse/timeval.h>
//%include <pulse/rtclock.h>
