// javac Foo2.java
// java -cp ../asm-all-6.0_BETA.jar org.objectweb.asm.util.ASMifier Foo2.class | tee Foo2Dump.java
public class Foo2 {
 public static void main(String[] args) {
  boolean flag = true;
  if (flag) System.out.println("Hello, Java!");
  if (flag == true) System.out.println("Hello, JVM!");
 }
}