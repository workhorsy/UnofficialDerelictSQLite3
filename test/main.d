

import BDD;



unittest {
	import derelict.sqlite3.sqlite;
	import std.string : fromStringz, toStringz;
	import std.stdio : stderr, stdout;

	DerelictSQLite3.load(SharedLibVersion(3, 20, 1));

	describe("DerelictSQLite3",
		it("Should connect to an existing database", delegate() {
			extern (C) int callback(void* NotUsed, int argc, char** argv, char** azColName) {
				string url = (cast(string) fromStringz(argv[0] ? argv[0] : "NULL")).dup;
				stderr.writefln("url: %s\n", url);

				return 0;
			}

			sqlite3* db;
			string uri = "test/chrome_history.sqlite";
			int rc = sqlite3_open(uri.toStringz, &db);

			rc.shouldEqual(SQLITE_OK);
			if (rc != SQLITE_OK) {
				stderr.writefln("Can't open database: %s\n", cast(string) fromStringz(sqlite3_errmsg(db)));
			}

			// Read the database
			char* zErrMsg;
			string sql_query = "select url, visit_count from urls where hidden=0;";
			rc = sqlite3_exec(db, sql_query.toStringz, &callback, cast(void*) 0, &zErrMsg);
			rc.shouldEqual(SQLITE_OK);
			if (rc != SQLITE_OK) {
				stderr.writefln("SQL error: %s\n", cast(string) fromStringz(zErrMsg));
				sqlite3_free(zErrMsg);
				return;
			}

			sqlite3_close(db);
		}),
	);
}

int main() {
	return BDD.printResults();
}
