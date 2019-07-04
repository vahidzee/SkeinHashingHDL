# Test Bench Documentation
Test benches can be found in `SourceCode/Verilog/TestBench/`.

## skein_default_tb
The given testbench had some problems in the following lines:
```verilog
    .
    .
    .
    54: data = 512'd12345609823;
	55:	midstate = 96'd456;
    .
    .
    .
    59: data = 512'd7659432094555543122297600000000654;
	60:	midstate = 96'd456;
    .
    .
    .
```
in which values of `data` and `midstate` should be swapped.

