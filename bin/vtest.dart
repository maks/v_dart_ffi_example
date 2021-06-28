import 'dart:ffi';

// Fib function from V
typedef FibFunc = Int32 Function(Int32 a);
typedef Fib = int Function(int a);

void main() async {
  // expect this being run from same dir that contains the dyn shared-lib file
  final dylib = DynamicLibrary.open('./fibrec.so');

  final fibPointer = dylib.lookup<NativeFunction<FibFunc>>('fibv');
  final fib = fibPointer.asFunction<Fib>();
  print('Fib 7 = ${fib(7)}');
}
