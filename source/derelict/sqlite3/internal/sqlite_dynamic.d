// Copyright (c) 2017 Matthew Brennan Jones <matthew.brennan.jones@gmail.com>
// Boost Software License - Version 1.0
// Dynamic bindings to the SQLite library for the D Programming Language
// https://github.com/workhorsy/UnofficialDerelictSQLite3


module derelict.sqlite3.internal.sqlite_dynamic;

import core.stdc.stdarg,
       core.stdc.stdio;
import derelict.util.system;
import derelict.sqlite3.internal.sqlite_types;

extern(C) @nogc nothrow {
    // sqlite3.h
    alias da_sqlite3_open = int function(const(char)*, sqlite3**);
    alias da_sqlite3_close = int function(sqlite3*);
    alias da_sqlite3_errmsg = const(char)* function(sqlite3*);
    alias da_sqlite3_exec = int function(sqlite3*, const char *sql, int function(void*,int,char**,char**), void *, char **errmsg);
    alias da_sqlite3_free = void function(void*);
}

__gshared {
    da_sqlite3_open sqlite3_open;
    da_sqlite3_close sqlite3_close;
    da_sqlite3_errmsg sqlite3_errmsg;
    da_sqlite3_exec sqlite3_exec;
    da_sqlite3_free sqlite3_free;
}
