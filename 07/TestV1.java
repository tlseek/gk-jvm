// v1 版本 java -verbose:class TestV1 
// Dsun.reflect.inflationThreshold = 15
// inflation: 当达到 15 时，便开始动态生成字节码，并将委派实现的委派对的委派对象切换至动态实现
import java.lang.reflect.Method;

public class TestV1 {
  public static void target(int i) {
    new Exception("#" + i).printStackTrace();
  }

  public static void main(String[] args) throws Exception {
    Class<?> klass = Class.forName("TestV1");
    Method method = klass.getMethod("target", int.class);
    for (int i = 0; i < 20; i++) {
      method.invoke(null, i);
    }
  }
}