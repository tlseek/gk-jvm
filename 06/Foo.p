Compiled from "Foo.java"
public class Foo {
  public Foo();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public void test();
    Code:
       0: iconst_0
       1: istore_1
       2: iload_1
       3: bipush        100
       5: if_icmpge     75
       8: aload_0
       9: iconst_0
      10: putfield      #2                  // Field tryBlock:I
      13: iload_1
      14: bipush        50
      16: if_icmpge     27
      19: aload_0
      20: iconst_2
      21: putfield      #3                  // Field finallyBlock:I
      24: goto          69
      27: iload_1
      28: bipush        80
      30: if_icmpge     41
      33: aload_0
      34: iconst_2
      35: putfield      #3                  // Field finallyBlock:I
      38: goto          75
      41: aload_0
      42: iconst_2
      43: putfield      #3                  // Field finallyBlock:I
      46: return
      47: astore_2
      48: aload_0
      49: iconst_1
      50: putfield      #5                  // Field catchBlock:I
      53: aload_0
      54: iconst_2
      55: putfield      #3                  // Field finallyBlock:I
      58: goto          69
      61: astore_3
      62: aload_0
      63: iconst_2
      64: putfield      #3                  // Field finallyBlock:I
      67: aload_3
      68: athrow
      69: iinc          1, 1
      72: goto          2
      75: aload_0
      76: iconst_3
      77: putfield      #6                  // Field methodExit:I
      80: return
    Exception table:
       from    to  target type
           8    19    47   Class java/lang/Exception
          27    33    47   Class java/lang/Exception
           8    19    61   any
          27    33    61   any
          47    53    61   any
}
