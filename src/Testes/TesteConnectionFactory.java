package Testes;

import org.junit.Assert;
import org.junit.Test;

import producao.ConnectionFactory;

public class TesteConnectionFactory {
	@Test
	public void testarConnectionFactory() {
		ConnectionFactory cf = new ConnectionFactory();
		Assert.assertNotNull(cf.getConnection());
	}
}
