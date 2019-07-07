
# Skein Hashing 
This is a documentation and correction of a buggy given verilog implementation of [Skein Hashing](https://en.wikipedia.org/wiki/Skein_(hash_function)).

Source codes can be found in `/SourceCode` , `/SourceCode/C/` contains the given golden model  implemented in [C](https://en.wikipedia.org/wiki/C_(programming_language)),`/SourceCode/Verilog` holds HDL implementations of the algorithm, `/SourceCode/Verilog/skein.v` is the given buggy code, each buggy code in this file was marked with a `todo: <valid_code>` comment afterwards. `/SourceCode/Verilog/corrected.v` is a corrected verilog implementation of *skein* algorithm based on the given golden model.

`/Latex/` holds a documentation of the algorithm and both golden model and the corrected verilog implementation.

`/RunData/` holds the result of the corrected verilog simulations.
 
 `/SynthesisFiles/` holds synthesis outputs of the corrected verilog implementation.
 
## Team Members
A Collaboration With:
  * Elahe Khodaii [@elahekhodaie](github.com/elahekhodaie)
  * Arvin Azarmina [@arvinAM17](github.com/arvinAM17)
  * Parsa Eskandar [@parsaeskandar](github.com/parsaeskandar)
  * Kimia Yazdani [@kimiayazdani](github.com/parsaeskandar)
