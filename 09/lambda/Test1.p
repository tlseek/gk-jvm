Classfile /root/learn/jvm/09/lambda/Test1.class
  Last modified 2019-9-12; size 1194 bytes
  MD5 checksum a613f9f87e23392d4fbf9ae4d1603d9c
  Compiled from "Test1.java"
public class Test1
  minor version: 0
  major version: 52
  flags: ACC_PUBLIC, ACC_SUPER
Constant pool:
   #1 = Methodref          #7.#20         // java/lang/Object."<init>":()V
   #2 = InterfaceMethodref #21.#22        // java/util/stream/IntStream.of:([I)Ljava/util/stream/IntStream;
   #3 = InvokeDynamic      #0:#27         // #0:applyAsInt:()Ljava/util/function/IntUnaryOperator;
   #4 = InterfaceMethodref #21.#28        // java/util/stream/IntStream.map:(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
   #5 = InvokeDynamic      #1:#30         // #1:applyAsInt:(I)Ljava/util/function/IntUnaryOperator;
   #6 = Class              #31            // Test1
   #7 = Class              #32            // java/lang/Object
   #8 = Utf8               <init>
   #9 = Utf8               ()V
  #10 = Utf8               Code
  #11 = Utf8               LineNumberTable
  #12 = Utf8               main
  #13 = Utf8               ([Ljava/lang/String;)V
  #14 = Utf8               lambda$main$1
  #15 = Utf8               (II)I
  #16 = Utf8               lambda$main$0
  #17 = Utf8               (I)I
  #18 = Utf8               SourceFile
  #19 = Utf8               Test1.java
  #20 = NameAndType        #8:#9          // "<init>":()V
  #21 = Class              #33            // java/util/stream/IntStream
  #22 = NameAndType        #34:#35        // of:([I)Ljava/util/stream/IntStream;
  #23 = Utf8               BootstrapMethods
  #24 = MethodHandle       #6:#36         // invokestatic java/lang/invoke/LambdaMetafactory.metafactory:(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
  #25 = MethodType         #17            //  (I)I
  #26 = MethodHandle       #6:#37         // invokestatic Test1.lambda$main$0:(I)I
  #27 = NameAndType        #38:#39        // applyAsInt:()Ljava/util/function/IntUnaryOperator;
  #28 = NameAndType        #40:#41        // map:(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
  #29 = MethodHandle       #6:#42         // invokestatic Test1.lambda$main$1:(II)I
  #30 = NameAndType        #38:#43        // applyAsInt:(I)Ljava/util/function/IntUnaryOperator;
  #31 = Utf8               Test1
  #32 = Utf8               java/lang/Object
  #33 = Utf8               java/util/stream/IntStream
  #34 = Utf8               of
  #35 = Utf8               ([I)Ljava/util/stream/IntStream;
  #36 = Methodref          #44.#45        // java/lang/invoke/LambdaMetafactory.metafactory:(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
  #37 = Methodref          #6.#46         // Test1.lambda$main$0:(I)I
  #38 = Utf8               applyAsInt
  #39 = Utf8               ()Ljava/util/function/IntUnaryOperator;
  #40 = Utf8               map
  #41 = Utf8               (Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
  #42 = Methodref          #6.#47         // Test1.lambda$main$1:(II)I
  #43 = Utf8               (I)Ljava/util/function/IntUnaryOperator;
  #44 = Class              #48            // java/lang/invoke/LambdaMetafactory
  #45 = NameAndType        #49:#53        // metafactory:(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
  #46 = NameAndType        #16:#17        // lambda$main$0:(I)I
  #47 = NameAndType        #14:#15        // lambda$main$1:(II)I
  #48 = Utf8               java/lang/invoke/LambdaMetafactory
  #49 = Utf8               metafactory
  #50 = Class              #55            // java/lang/invoke/MethodHandles$Lookup
  #51 = Utf8               Lookup
  #52 = Utf8               InnerClasses
  #53 = Utf8               (Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
  #54 = Class              #56            // java/lang/invoke/MethodHandles
  #55 = Utf8               java/lang/invoke/MethodHandles$Lookup
  #56 = Utf8               java/lang/invoke/MethodHandles
{
  public Test1();
    descriptor: ()V
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=1, args_size=1
         0: aload_0
         1: invokespecial #1                  // Method java/lang/Object."<init>":()V
         4: return
      LineNumberTable:
        line 3: 0

  public static void main(java.lang.String[]);
    descriptor: ([Ljava/lang/String;)V
    flags: ACC_PUBLIC, ACC_STATIC
    Code:
      stack=4, locals=2, args_size=1
         0: iconst_2
         1: istore_1
         2: iconst_3
         3: newarray       int
         5: dup
         6: iconst_0
         7: iconst_1
         8: iastore
         9: dup
        10: iconst_1
        11: iconst_2
        12: iastore
        13: dup
        14: iconst_2
        15: iconst_3
        16: iastore
        17: invokestatic  #2                  // InterfaceMethod java/util/stream/IntStream.of:([I)Ljava/util/stream/IntStream;
        20: invokedynamic #3,  0              // InvokeDynamic #0:applyAsInt:()Ljava/util/function/IntUnaryOperator;
        25: invokeinterface #4,  2            // InterfaceMethod java/util/stream/IntStream.map:(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
        30: iload_1
        31: invokedynamic #5,  0              // InvokeDynamic #1:applyAsInt:(I)Ljava/util/function/IntUnaryOperator;
        36: invokeinterface #4,  2            // InterfaceMethod java/util/stream/IntStream.map:(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
        41: pop
        42: return
      LineNumberTable:
        line 6: 0
        line 7: 2
        line 8: 42

  private static int lambda$main$1(int, int);
    descriptor: (II)I
    flags: ACC_PRIVATE, ACC_STATIC, ACC_SYNTHETIC
    Code:
      stack=2, locals=2, args_size=2
         0: iload_1
         1: iload_0
         2: imul
         3: ireturn
      LineNumberTable:
        line 7: 0

  private static int lambda$main$0(int);
    descriptor: (I)I
    flags: ACC_PRIVATE, ACC_STATIC, ACC_SYNTHETIC
    Code:
      stack=2, locals=1, args_size=1
         0: iload_0
         1: iconst_2
         2: imul
         3: ireturn
      LineNumberTable:
        line 7: 0
}
SourceFile: "Test1.java"
InnerClasses:
     public static final #51= #50 of #54; //Lookup=class java/lang/invoke/MethodHandles$Lookup of class java/lang/invoke/MethodHandles
BootstrapMethods:
  0: #24 invokestatic java/lang/invoke/LambdaMetafactory.metafactory:(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    Method arguments:
      #25 (I)I
      #26 invokestatic Test1.lambda$main$0:(I)I
      #25 (I)I
  1: #24 invokestatic java/lang/invoke/LambdaMetafactory.metafactory:(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    Method arguments:
      #25 (I)I
      #29 invokestatic Test1.lambda$main$1:(II)I
      #25 (I)I
