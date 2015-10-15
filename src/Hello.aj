
public aspect Hello {
	pointcut greeting() : execution(void Main.hello*());
	
	/*before (): greeting(){
		System.out.print("Hello, ");
	}*/
	
	pointcut yey() : call(* *(..)); //���\�b�h�̌Ăяo���S��
	
	pointcut yey2() : execution(* *(..)); //���\�b�h���s�S��
	
	pointcut yey3() : call(* *(..)) && this(Main); //Main�N���X���̃��\�b�h����̃��\�b�h�Ăяo���S��
	
	pointcut yey4() : execution(* *()) && this(Main); //Main�N���X���̃��\�b�h����̃��\�b�h���s�S��
	
	pointcut yey5() : call(* *(..)) && target(Main); //Main�N���X�ɒ�`����Ă郁�\�b�h�̌Ăяo���S��
	
	pointcut yey6() : execution(* *()) && target(Main); //Main�N���X�ɒ�`����Ă郁�\�b�h�̎��s�S���H
	
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
