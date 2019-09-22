// Run with java -XX:+PrintGC -Xmn100M -XX:PretenureSizeThreshold=10000 LifetimeTest 32
// You may also try with -XX:+PrintHeapAtGC，-XX:-UsePSAdaptiveSurvivorSizePolicy or -XX:SurvivorRatio=N
// java -cp ../jol-cli-0.9-full.jar:. org.openjdk.jol.Main internals ObjectOf64Bytes
// -Xms表示初始化堆内存
// -Xmx 表示最大堆内存
// -Xmn表示新生代的内存
// -XX:SurvivorRatio=8表示新生代的Eden占8/10，S1和S2各占1/10.

public class LifetimeTest {
  private static final int K = 1024;
  private static final int M = K * K;
  private static final int G = K * M;

  private static final int ALIVE_OBJECT_SIZE = 32 * M;

  public static void main(String[] args) { 
    if (args.length != 1) {
      return;
    }

    int length = Integer.valueOf(args[0]) * M / 64;
    ObjectOf64Bytes[] array = new ObjectOf64Bytes[length];
    for (long i = 0; i < G; i++) {
      array[(int) (i % length)] = new ObjectOf64Bytes();
    }
  }
}

class ObjectOf64Bytes {
  long placeholder0;
  long placeholder1;
  long placeholder2;
  long placeholder3;
  long placeholder4;
  long placeholder5;
}
