import java.lang.reflect.Method;

// v2 版本 反射开销：自动装箱、创建变长数据、反射调用
// 查看GC情况
// java -XX:+PrintGC TestV2
// 使用-Djava.lang.Integer.IntegerCache.high=128 便可以避免需要新建 Integer 对象的场景
// 此时反射开销：创建变长数据、反射调用
// java -XX:+PrintGC -Djava.lang.Integer.IntegerCache.high=128 TestV2
public class TestV2 {
  public static void target(int i) {
    // 空方法
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV2");
    Method method = klass.getMethod("target", int.class);

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
}