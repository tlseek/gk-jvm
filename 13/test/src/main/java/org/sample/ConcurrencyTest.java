package org.sample;
import org.openjdk.jcstress.annotations.*;
import org.openjdk.jcstress.infra.results.IntResult2;

@JCStressTest
@Outcome(id = {"0, 0", "0, 2", "1, 0"}, expect = Expect.ACCEPTABLE, desc = "Normal outcome")
@Outcome(id = {"1, 2"}, expect = Expect.ACCEPTABLE_INTERESTING, desc = "Abnormal outcome")
@State
// 虚拟机 openjdk 运行并没有出现 1, 2的情况，windows oracle出现了
public class ConcurrencyTest {
  int a=0;
  int b=0; // 改成 volatile 试试？
  @Actor
  public void method1(IntResult2 r) {
    r.r2 = a;
    b = 1;
  }
  @Actor
  public void method2(IntResult2 r) {
    r.r1 = b;
    a = 2;
  }
}