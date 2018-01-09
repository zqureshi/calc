# calc [![Build Status](https://travis-ci.org/zqureshi/calc.svg?branch=master)](https://travis-ci.org/zqureshi/calc)

Learn how to parse expressions using flex

## Build

```bash
$ cmake . && make
```

## Run

```bash
$ echo -n "(12 + 34) * 5" | ./calc
--(end of buffer or a NUL)
--accepting rule at line 14 ("(")
OPEN_PAREN
--accepting rule at line 16 ("12")
INTEGER
--accepting rule at line 9 (" ")
--accepting rule at line 10 ("+")
PLUS
--accepting rule at line 9 (" ")
--accepting rule at line 16 ("34")
INTEGER
--accepting rule at line 15 (")")
CLOSE_PAREN
--accepting rule at line 9 (" ")
--accepting rule at line 12 ("*")
MULTIPLY
--accepting rule at line 9 (" ")
--(end of buffer or a NUL)
--accepting rule at line 16 ("5")
INTEGER
--(end of buffer or a NUL)
--EOF (start condition 0)
```
