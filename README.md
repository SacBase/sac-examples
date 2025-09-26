# Adding an example:

1. Create a new example program in `src`, preferably as a single file to keep things manageable.
2. At the start of your file, add a comment specified exactly as follows.
   These lines are used by the testing script to determine the input argument(s).
   ```
   SEQ arg1 arg2 arg3
   CHECK arg1' arg2' arg3'
   MT arg1'' arg2'' arg3''
   ```
   If for some reason one of the targets does not (yet) work for the example,
   by leaving that target out the test for that target will be skipped.
3. Add the file to the `seq`, `check`, and `mt` targets in the `Makefile`.
4. Add the file to `test.sh`.
