import java.nio.file.Paths;
import java.nio.file.Files;

// javac -cp ../asm-all-6.0_BETA.jar Foo2Dump.java Foo2Wrapper.java
// java -cp ../asm-all-6.0_BETA.jar:. Foo2Wrapper
// java Foo2
public class Foo2Wrapper {
  public static void main(String[] args) throws Exception {
    Files.write(Paths.get("Foo2.class"), Foo2Dump.dump());
  }
}