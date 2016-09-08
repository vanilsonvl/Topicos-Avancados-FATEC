package Testes;

import org.junit.Assert;
import org.junit.Test;

import producao.HelloWorld;

public class TesteHelloWorld {
	@Test
	public void testarHelloWorld(){
		HelloWorld hw = new HelloWorld();
		Assert.assertEquals("Hello World", hw.print());
	}
}
