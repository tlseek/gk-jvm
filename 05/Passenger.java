// Run with: java -XX:CompileCommand='dontinline,*.passThroughImmigration' Passenger
public abstract class Passenger {

	abstract void passThroughImmigration();

  public static void main(String[] args) {
  	Passenger a = new ChinesePassenger();
	  Passenger b = new ForeignerPassenger();
    long current = System.currentTimeMillis();
    
    for (int i = 1; i <= 2_000_000_000; i++) {
      if (i % 100_000_000 == 0) {
        long temp = System.currentTimeMillis();
        // 输出调用100_000_000次方法所花的时间
        System.out.println(temp - current);
        current = temp;
      }
      // 前1_000_000_000次调用ChinesePassenger的passThroughImmigration
      Passenger c = (i < 1_000_000_000) ? a : b;
      c.passThroughImmigration();
	  }
  }

}
class ChinesePassenger extends Passenger {
  @Override void passThroughImmigration() {} 
}
class ForeignerPassenger extends Passenger {
  @Override void passThroughImmigration() {}
}
