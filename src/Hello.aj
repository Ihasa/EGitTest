
public aspect Hello {
	pointcut greeting() : execution(void Main.hello*());
	
	/*before (): greeting(){
		System.out.print("Hello, ");
	}*/
	
	pointcut yey() : call(* *(..)); //メソッドの呼び出し全部
	
	pointcut yey2() : execution(* *(..)); //メソッド実行全部
	
	pointcut yey3() : call(* *(..)) && this(Main); //Mainクラス内のメソッドからのメソッド呼び出し全部
	
	pointcut yey4() : execution(* *()) && this(Main); //Mainクラス内のメソッドからのメソッド実行全部
	
	pointcut yey5() : call(* *(..)) && target(Main); //Mainクラスに定義されてるメソッドの呼び出し全部
	
	pointcut yey6() : execution(* *()) && target(Main); //Mainクラスに定義されてるメソッドの実行全部？
	
	pointcut yey7() : target(Hoge) && execution(* *(..));

	pointcut yey8() : target(Hoge) && this(Hoge) && execution(* *(..));

	before () : yey8(){
		System.out.print("hello, ");
	}
	after () : yey8(){
		System.out.println("-------------------------");
	}
	
	/*after (Foo f) : this(Main) && target(f) && execution(void foo()){
		System.out.println("hehehe");
		//f.nantoka();
	}*/
}
