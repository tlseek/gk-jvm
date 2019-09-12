import java.lang.invoke.*;

// 
// 输出隐藏栈
// java -XX:+UnlockDiagnosticVMOptions -XX:+ShowHiddenFrames Foo
// 输出LambdaForm动态类class文件
// java -Djava.lang.invoke.MethodHandle.DUMP_CLASS_FILES=true Foo
// 反编译dump class文件
// java -jar ../asmtools.jar jdis  DUMP_CLASS_FILES/java/lang/invoke/LambdaForm\$DMH001.class > LambdaForm001.asm
public class Foo {
  public static void bar(Object o) {
    new Exception().printStackTrace();
  }

  public static void main(String[] args) throws Throwable {
    MethodHandles.Lookup l = MethodHandles.lookup();
    MethodType t = MethodType.methodType(void.class, Object.class);
    MethodHandle mh = l.findStatic(Foo.class, "bar", t);
    mh.invokeExact(new Object());
  }
}
