
public class Main {
	static Hoge h = new Hoge();
	public static void main(String[] args) {
		Main m = new Main();
		m.greeting();
	}
	public void greeting(){
		helloAsp();
		helloJava();
		helloWorld();
		h.greeting();
		h.incr();
	}
	private void helloWorld(){
		System.out.println("World");
	}
	private void helloAsp(){
		System.out.println("Aspect J");
	}
	private void helloJava(){
		System.out.println("Java");
	}
}

class Hoge{
	int i;
	public void incr(){i++;}
	private void helloYey(){
		System.out.println("yey" + i);
	}
	private void helloFoo(){
		Foo foo = new Foo();
		foo.foo();
	}
	public void greeting(){
		helloFoo();
		helloYey();
	}
}
class Foo{
	public void foo(){
		System.out.println("Foo");
	}
}
