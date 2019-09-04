
// v4 版本
import java.lang.reflect.Method;

// 在运行指令中添加如下两个虚拟机参数：
// -Djava.lang.Integer.IntegerCache.high=128
// -Dsun.reflect.noInflation=true 从而取消委派实现，并且直接使用动态实现。
// java -Djava.lang.Integer.IntegerCache.high=128 -Dsun.reflect.noInflation=true TestV4
public class TestV4 {
  public static void target(int i) {
    // 空方法
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV4");
    Method method = klass.getMethod("target", int.class);
    method.setAccessible(true);  // 关闭权限检查

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

