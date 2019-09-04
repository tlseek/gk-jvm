import java.lang.reflect.Method;

// v2 版本 基准，调用20亿次，每一亿次记录消耗时间
// 求平均 java TestV2Base | awk '{ sum += $1; } END { print "sum = " sum; print "average = " sum/NR }'
public class TestV2Base {
  public static void target(int i) {
    // 空方法
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV2Base");
    Method method = klass.getMethod("target", int.class);

    long current = System.currentTimeMillis();
    for (int i = 1; i <= 2_000_000_000; i++) {
      if (i % 100_000_000 == 0) {
        long temp = System.currentTimeMillis();
        System.out.println(temp - current);
        current = temp;
      }

      TestV2Base.target(128);
    }
  }
}