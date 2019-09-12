Classfile /root/learn/jvm/08/Foo.class
  Last modified 2019-9-12; size 1038 bytes
  MD5 checksum cfd6b09df83dedfaba4aacf3c8fed4fd
  Compiled from "Foo.java"
public class Foo
  minor version: 0
  major version: 52
  flags: ACC_PUBLIC, ACC_SUPER
Constant pool:
   #1 = Methodref          #7.#25         // java/lang/Object."<init>":()V
   #2 = Class              #26            // java/lang/Exception
   #3 = Methodref          #2.#25         // java/lang/Exception."<init>":()V
   #4 = Methodref          #2.#27         // java/lang/Exception.printStackTrace:()V
   #5 = Methodref          #28.#29        // java/lang/invoke/MethodHandles.lookup:()Ljava/lang/invoke/MethodHandles$Lookup;
   #6 = Fieldref           #30.#31        // java/lang/Void.TYPE:Ljava/lang/Class;
   #7 = Class              #32            // java/lang/Object
   #8 = Methodref          #33.#34        // java/lang/invoke/MethodType.methodType:(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
   #9 = Class              #35            // Foo
  #10 = String             #17            // bar
  #11 = Methodref          #36.#37        // java/lang/invoke/MethodHandles$Lookup.findStatic:(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
  #12 = Methodref          #38.#39        // java/lang/invoke/MethodHandle.invokeExact:(Ljava/lang/Object;)V
  #13 = Utf8               <init>
  #14 = Utf8               ()V
  #15 = Utf8               Code
  #16 = Utf8               LineNumberTable
  #17 = Utf8               bar
  #18 = Utf8               (Ljava/lang/Object;)V
  #19 = Utf8               main
  #20 = Utf8               ([Ljava/lang/String;)V
  #21 = Utf8               Exceptions
  #22 = Class              #40            // java/lang/Throwable
  #23 = Utf8               SourceFile
  #24 = Utf8               Foo.java
  #25 = NameAndType        #13:#14        // "<init>":()V
  #26 = Utf8               java/lang/Exception
  #27 = NameAndType        #41:#14        // printStackTrace:()V
  #28 = Class              #42            // java/lang/invoke/MethodHandles
  #29 = NameAndType        #43:#46        // lookup:()Ljava/lang/invoke/MethodHandles$Lookup;
  #30 = Class              #47            // java/lang/Void
  #31 = NameAndType        #48:#49        // TYPE:Ljava/lang/Class;
  #32 = Utf8               java/lang/Object
  #33 = Class              #50            // java/lang/invoke/MethodType
  #34 = NameAndType        #51:#52        // methodType:(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
  #35 = Utf8               Foo
  #36 = Class              #53            // java/lang/invoke/MethodHandles$Lookup
  #37 = NameAndType        #54:#55        // findStatic:(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
  #38 = Class              #56            // java/lang/invoke/MethodHandle
  #39 = NameAndType        #57:#18        // invokeExact:(Ljava/lang/Object;)V
  #40 = Utf8               java/lang/Throwable
  #41 = Utf8               printStackTrace
  #42 = Utf8               java/lang/invoke/MethodHandles
  #43 = Utf8               lookup
  #44 = Utf8               Lookup
  #45 = Utf8               InnerClasses
  #46 = Utf8               ()Ljava/lang/invoke/MethodHandles$Lookup;
  #47 = Utf8               java/lang/Void
  #48 = Utf8               TYPE
  #49 = Utf8               Ljava/lang/Class;
  #50 = Utf8               java/lang/invoke/MethodType
  #51 = Utf8               methodType
  #52 = Utf8               (Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
  #53 = Utf8               java/lang/invoke/MethodHandles$Lookup
  #54 = Utf8               findStatic
  #55 = Utf8               (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
  #56 = Utf8               java/lang/invoke/MethodHandle
  #57 = Utf8               invokeExact
{
  public Foo();
    descriptor: ()V
    flags: ACC_PUBLIC
    Code:
      stack=1, locals=1, args_size=1
         0: aload_0
         1: invokespecial #1                  // Method java/lang/Object."<init>":()V
         4: return
      LineNumberTable:
        line 3: 0

  public static void bar(java.lang.Object);
    descriptor: (Ljava/lang/Object;)V
    flags: ACC_PUBLIC, ACC_STATIC
    Code:
      stack=2, locals=1, args_size=1
         0: new           #2                  // class java/lang/Exception
         3: dup
         4: invokespecial #3                  // Method java/lang/Exception."<init>":()V
         7: invokevirtual #4                  // Method java/lang/Exception.printStackTrace:()V
        10: return
      LineNumberTable:
        line 5: 0
        line 6: 10

  public static void main(java.lang.String[]) throws java.lang.Throwable;
    descriptor: ([Ljava/lang/String;)V
    flags: ACC_PUBLIC, ACC_STATIC
    Code:
      stack=4, locals=4, args_size=1
         0: invokestatic  #5                  // Method java/lang/invoke/MethodHandles.lookup:()Ljava/lang/invoke/MethodHandles$Lookup;
         3: astore_1
         4: getstatic     #6                  // Field java/lang/Void.TYPE:Ljava/lang/Class;
         7: ldc           #7                  // class java/lang/Object
         9: invokestatic  #8                  // Method java/lang/invoke/MethodType.methodType:(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
        12: astore_2
        13: aload_1
        14: ldc           #9                  // class Foo
        16: ldc           #10                 // String bar
        18: aload_2
        19: invokevirtual #11                 // Method java/lang/invoke/MethodHandles$Lookup.findStatic:(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
        22: astore_3
        23: aload_3
        24: new           #7                  // class java/lang/Object
        27: dup
        28: invokespecial #1                  // Method java/lang/Object."<init>":()V
        31: invokevirtual #12                 // Method java/lang/invoke/MethodHandle.invokeExact:(Ljava/lang/Object;)V
        34: return
      LineNumberTable:
        line 9: 0
        line 10: 4
        line 11: 13
        line 12: 23
        line 13: 34
    Exceptions:
      throws java.lang.Throwable
}
SourceFile: "Foo.java"
InnerClasses:
     public static final #44= #36 of #28; //Lookup=class java/lang/invoke/MethodHandles$Lookup of class java/lang/invoke/MethodHandles
