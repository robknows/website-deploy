// " " => "_", lowercase, remove all "()" from column names of a table T
fixColNames:{[t]xcol[`$ssr[;" ";"_"] each (lower string cols x) except\: "()";t]}

// Saves everything defined in the current q repl to a binary file specified
// by FILE. This can be parsed and the variables reloaded by loading the
// binary with "loadws FILE". FILE is a file handle. Returns FILE.
savews:{[file]file set enlist value `.}

// Loads all values saved using savews to FILE into the current q session.
// This will overwrite any variables whose name clashes. Returns the names of
// all of the saved variables that were laoded.
loadws:{[file]{key[x] set' value x} first get file}

// Recursively gets all the files of a given directory
lsRec:{ls:f group {x~key x} each f:` sv/: x,/:key x;raze ls[1b] , .z.s each ls[0b]}
