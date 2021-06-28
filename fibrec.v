// https://github.com/vlang/v/issues/2379
module main

import os

fn main() {
  println(os.args[1])
  println(fib(os.args[1].int()))
}

[export: 'fibv']
pub fn fib(n int) int {
  if n <= 2 {
    return 1
  } else {
    return fib(n-1) + fib(n-2)
  }
}