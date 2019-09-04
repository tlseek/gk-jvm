// v5 版本
import java.lang.reflect.Method;

// 
// 在关闭了 Inflation 的情况下，内联的瓶颈在于 Method.invoke 方法中对 MethodAccessor.invoke 方法的调用。
// 每个Method都有一个对应的MethodAccessor
// Java 虚拟机关于每个调用能够记录的类型数目（对应虚拟机参数 -XX:TypeProfileWidth，默认值为 2 ）。
// Method.invoke调用第三个方法是无法方法内联的，而逃逸分析也是基于方法内联。此时开销会巨增。
// 
public class TestV5 {
  public static void target(int i) {
    // 空方法
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV5");
    Method method = klass.getMethod("target", int.class);
    method.setAccessible(true);  // 关闭权限检查
    polluteProfile();

    long current = System.currentTimeMillis();
    for (int i = 1; i <= 2_000_000_000; i++) {
      if (i % 100_000_000 == 0) {
        long temp = System.currentTimeMillis();
        System.out.println(temp - current);
        current = temp;
      }

      method.invoke(null, 128);
    }
  }

  public static void polluteProfile() throws Exception {
    Method method1 = TestV5.class.getMethod("target1", int.class);
    Method method2 = TestV5.class.getMethod("target2", int.class);
    for (int i = 0; i < 2000; i++) {
      method1.invoke(null, 0);
      method2.invoke(null, 0);
    }
  }
  public static void target1(int i) { }
  public static void target2(int i) { }
}

