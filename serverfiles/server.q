// To serve a page over HTTP, perform ".z.ph:{.h.hp read0 file}"

// Given a file handle to a html page, converts the page to a http response as lines.
// The result of this is a valid return value for .z.ph.
.srv.httppage:{.h.hp read0 x}
