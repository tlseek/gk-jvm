// v3 版本
import java.lang.reflect.Method;

// 
// 在循环外构造参数数组，会使得即时编译器判定参数数组为逃逸对象，无法进行优化。
// 反射开销：逃逸对象无法优化、反射调用
// 对相对于v2的加上-Djava.lang.Integer.IntegerCache.high=128时更慢
public class TestV3 {
  public static void target(int i) {
    // 空方法
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV3");
    Method method = klass.getMethod("target", int.class);

    Object[] arg = new Object[1]; // 在循环外构造参数数组
    arg[0] = 128;

    long current = System.currentTimeMillis();
    for (int i = 1; i <= 2_000_000_000; i++) {
      if (i % 100_000_000 == 0) {
        long temp = System.currentTimeMillis();
        System.out.println(temp - current);
        current = temp;
      }

      method.invoke(null, arg);
    }
  }
}
