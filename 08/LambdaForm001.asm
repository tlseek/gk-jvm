package  java/lang/invoke;

super final class LambdaForm$DMH001
	version 52:0
{


@+java/lang/invoke/LambdaForm$Hidden { }
@+java/lang/invoke/LambdaForm$Compiled { }
@+java/lang/invoke/ForceInline { }
static Method invokeStatic_001_L_V:"(Ljava/lang/Object;Ljava/lang/Object;)V"
	stack 2 locals 3
{
		aload_0;
		invokestatic	Method DirectMethodHandle.internalMemberName:"(Ljava/lang/Object;)Ljava/lang/Object;";
		astore_2;
		aload_1;
		aload_2;
		checkcast	class MemberName;
		invokestatic	Method MethodHandle.linkToStatic:"(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)V";
		return;
}

static Method dummy:"()V"
	stack 1 locals 0
{
		ldc	String "DMH.invokeStatic_001_L_V=Lambda(a0:L,a1:L)=>{\n    t2:L=DirectMethodHandle.internalMemberName(a0:L);\n    t3:V=MethodHandle.linkToStatic(a1:L,t2:L);void}";
		pop;
		return;
}

} // end Class LambdaForm$DMH001
