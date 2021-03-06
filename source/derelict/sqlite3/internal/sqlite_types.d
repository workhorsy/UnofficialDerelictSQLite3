// Copyright (c) 2017-2020 Matthew Brennan Jones <matthew.brennan.jones@gmail.com>
// Boost Software License - Version 1.0
// Dynamic bindings to the SQLite library for the D Programming Language
// https://github.com/workhorsy/UnofficialDerelictSQLite3


module derelict.sqlite3.internal.sqlite_types;

alias Sint8 = byte;
alias Uint8 = ubyte;
alias Sint16 = short;
alias Uint16 = ushort;
alias Sint32 = int;
alias Uint32 = uint;
alias Sint64 = long;
alias Uint64 = ulong;

struct sqlite3 {

}

// sqlite3.h
enum : Uint32 {
    SQLITE_OK           = 0,   /* Successful result */
	/* beginning-of-error-codes */
    SQLITE_ERROR        = 1,   /* Generic error */
    SQLITE_INTERNAL     = 2,   /* Internal logic error in SQLite */
    SQLITE_PERM         = 3,   /* Access permission denied */
    SQLITE_ABORT        = 4,   /* Callback routine requested an abort */
    SQLITE_BUSY         = 5,   /* The database file is locked */
    SQLITE_LOCKED       = 6,   /* A table in the database is locked */
    SQLITE_NOMEM        = 7,   /* A malloc() failed */
    SQLITE_READONLY     = 8,   /* Attempt to write a readonly database */
    SQLITE_INTERRUPT    = 9,   /* Operation terminated by sqlite3_interrupt()*/
    SQLITE_IOERR       = 10,   /* Some kind of disk I/O error occurred */
    SQLITE_CORRUPT     = 11,   /* The database disk image is malformed */
    SQLITE_NOTFOUND    = 12,   /* Unknown opcode in sqlite3_file_control() */
    SQLITE_FULL        = 13,   /* Insertion failed because database is full */
    SQLITE_CANTOPEN    = 14,   /* Unable to open the database file */
    SQLITE_PROTOCOL    = 15,   /* Database lock protocol error */
    SQLITE_EMPTY       = 16,   /* Not used */
    SQLITE_SCHEMA      = 17,   /* The database schema changed */
    SQLITE_TOOBIG      = 18,   /* String or BLOB exceeds size limit */
    SQLITE_CONSTRAINT  = 19,   /* Abort due to constraint violation */
    SQLITE_MISMATCH    = 20,   /* Data type mismatch */
    SQLITE_MISUSE      = 21,   /* Library used incorrectly */
    SQLITE_NOLFS       = 22,   /* Uses OS features not supported on host */
    SQLITE_AUTH        = 23,   /* Authorization denied */
    SQLITE_FORMAT      = 24,   /* Not used */
    SQLITE_RANGE       = 25,   /* 2nd parameter to sqlite3_bind out of range */
    SQLITE_NOTADB      = 26,   /* File opened that is not a database file */
    SQLITE_NOTICE      = 27,   /* Notifications from sqlite3_log() */
    SQLITE_WARNING     = 28,   /* Warnings from sqlite3_log() */
    SQLITE_ROW         = 100,  /* sqlite3_step() has another row ready */
    SQLITE_DONE        = 101,  /* sqlite3_step() has finished executing */
}
/* end-of-error-codes */
