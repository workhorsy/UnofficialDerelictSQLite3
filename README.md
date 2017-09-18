# DerelictSQLite3
Dynamic bindings to the SQLite library for the D Programming Language

# Example

```d
FIXME
```

# Documentation

These functions are supported so far:

```d
int sqlite3_open(const(char)* filename, sqlite3** ppDb);
int sqlite3_close(sqlite3*);
const(char)* sqlite3_errmsg(sqlite3*);
int sqlite3_exec(sqlite3*, const(char)* sql, int function(void*, int, char**, char**) callback, void*, char** errmsg);
void sqlite3_free(void*);
```

# Generate documentation

```
FIXME
```

# Run unit tests

```
dub test
```

[![Dub version](https://img.shields.io/dub/v/DerelictSQLite3.svg)](https://code.dlang.org/packages/DerelictSQLite3)
[![Dub downloads](https://img.shields.io/dub/dt/DerelictSQLite3.svg)](https://code.dlang.org/packages/DerelictSQLite3)
[![License](https://img.shields.io/badge/license-BSL_1.0-blue.svg)](https://raw.githubusercontent.com/workhorsy/DerelictSQLite3/master/LICENSE)
