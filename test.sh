#自作コンパイラが正しく動くか確認する（＝自作コンパイラを用いたときの実行結果と期待する出力を比較）
#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./honenashichicken "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42

echo OK
