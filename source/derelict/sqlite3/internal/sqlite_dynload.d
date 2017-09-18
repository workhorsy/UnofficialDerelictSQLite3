// Copyright (c) 2017 Matthew Brennan Jones <matthew.brennan.jones@gmail.com>
// Boost Software License - Version 1.0
// Dynamic bindings to the SQLite library for the D Programming Language
// https://github.com/workhorsy/DerelictSQLite3


module derelict.sqlite3.internal.sqlite_dynload;

public {
      import derelict.sqlite3.internal.sqlite_dynamic,
             derelict.sqlite3.internal.sqlite_types;
      import derelict.util.loader;
}

import derelict.util.exception,
       derelict.util.system;


class DerelictSQLite3Loader : SharedLibLoader {
     this() {
           super(libNames);
     }

protected:
     override void configureMinimumVersion(SharedLibVersion minVersion)
     {
           missingSymbolCallback = &ddefaultMissingSymbolCallback;
     }

     override void loadSymbols()
     {
           bindFunc(cast(void**)&sqlite3_open, "sqlite3_open");
           bindFunc(cast(void**)&sqlite3_close, "sqlite3_close");
           bindFunc(cast(void**)&sqlite3_errmsg, "sqlite3_errmsg");
           bindFunc(cast(void**)&sqlite3_exec, "sqlite3_exec");
           bindFunc(cast(void**)&sqlite3_free, "sqlite3_free");
     }

private:
     ShouldThrow ddefaultMissingSymbolCallback(string symbolName)
     {
           return ShouldThrow.Yes;
     }
}

__gshared DerelictSQLite3Loader DerelictSQLite3;

shared static this()
{
    DerelictSQLite3 = new DerelictSQLite3Loader();
}

private:
      static if (Derelict_OS_Windows)
        enum libNames = "sqlite3.dll";
      else static if (Derelict_OS_Posix)
        enum libNames = "libsqlite3.so, /usr/lib/x86_64-linux-gnu/libsqlite3.so.0";
      else
        static assert(0, "Need to implement sqlite3 libNames for this operating system.");
