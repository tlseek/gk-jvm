package  java/lang/invoke;

super final class LambdaForm$MH012
	version 52:0
{


@+java/lang/invoke/LambdaForm$Hidden { }
@+java/lang/invoke/LambdaForm$Compiled { }
@+java/lang/invoke/ForceInline { }
static Method invokeExact_000_MT:"(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V"
	stack 2 locals 3
{
		aload_0;
		aload_2;
		invokestatic	Method Invokers.checkExactType:"(Ljava/lang/Object;Ljava/lang/Object;)V";
		aload_0;
		invokestatic	Method Invokers.checkCustomized:"(Ljava/lang/Object;)V";
		aload_0;
		checkcast	class MethodHandle;
		dup;
		astore_0;
		aload_1;
		invokevirtual	Method MethodHandle.invokeBasic:"(Ljava/lang/Object;)V";
		return;
}

static Method dummy:"()V"
	stack 1 locals 0
{
		ldc	String "invokeExact_000_MT=Lambda(a0:L,a1:L,a2:L)=>{\n    t3:V=Invokers.checkExactType(a0:L,a2:L);\n    t4:V=Invokers.checkCustomized(a0:L);\n    t5:V=MethodHandle.invokeBasic(a0:L,a1:L);void}";
		pop;
		return;
}

} // end Class LambdaForm$MH012
