

import BDD;

unittest {
	import derelict.sqlite3.sqlite : herp;

	describe("DerelictSQLite3",
		it("Should ...", delegate() {
			herp().shouldEqual(7);
		}),
	);
}

int main() {
	return BDD.printResults();
}
