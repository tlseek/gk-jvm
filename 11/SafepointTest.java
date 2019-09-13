
// time java SafepointTestp
// 你还可以使用如下几个选项
// -XX:+PrintGC
// -XX:+PrintGCApplicationStoppedTime 
// -XX:+PrintSafepointStatistics
// -XX:+UseCountedLoopSafepoints
public class SafepointTest {
  static double sum = 0;

  public static void foo() {
    for (int i = 0; i < 0x77777777; i++) {
      sum += Math.sqrt(i);
    }
  }

  public static void bar() {
    for (int i = 0; i < 50_000_000; i++) {
      new Object().hashCode();
    }
  }

  public static void main(String[] args) {
    if (args.length != 1) {
      return;
    }
    String arg = args[0];
    if(arg.equals("foo") || arg.equals("all"))
      new Thread(SafepointTest::foo).start();
      
    if(arg.equals("bar") || arg.equals("all"))
      new Thread(SafepointTest::bar).start();
  }
}
