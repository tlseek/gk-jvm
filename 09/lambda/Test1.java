import java.util.stream.IntStream;

// javap -v -p Test1.class > Test1.p
public class Test1 {

  public static void main(String[] args) {
    int x = 2;
    IntStream.of(1, 2, 3).map(i -> i * 2).map(i -> i * x);
  }

}