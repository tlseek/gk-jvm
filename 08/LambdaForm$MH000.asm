package  java/lang/invoke;

super final class LambdaForm$MH000
	version 52:0
{


@+java/lang/invoke/LambdaForm$Hidden { }
@+java/lang/invoke/LambdaForm$Compiled { }
@+java/lang/invoke/ForceInline { }
static Method getObjectField_000:"(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
	stack 4 locals 5
{
		aload_0;
		invokestatic	Method DirectMethodHandle.fieldOffset:"(Ljava/lang/Object;)J";
		lstore_2;
		aload_1;
		invokestatic	Method DirectMethodHandle.checkBase:"(Ljava/lang/Object;)Ljava/lang/Object;";
		astore	4;
		ldc	String "CONSTANT_PLACEHOLDER_0 <<sun.misc.Unsafe@1540e19d>>";
		checkcast	class sun/misc/Unsafe;
		aload	4;
		lload_2;
		invokevirtual	Method sun/misc/Unsafe.getObject:"(Ljava/lang/Object;J)Ljava/lang/Object;";
		areturn;
}

static Method dummy:"()V"
	stack 1 locals 0
{
		ldc	String "getObjectField_000=Lambda(a0:L,a1:L)=>{\n    t2:J=DirectMethodHandle.fieldOffset(a0:L);\n    t3:L=DirectMethodHandle.checkBase(a1:L);\n    t4:L=Unsafe.getObject((sun.misc.Unsafe@1540e19d),t3:L,t2:J);t4:L}";
		pop;
		return;
}

} // end Class LambdaForm$MH000
