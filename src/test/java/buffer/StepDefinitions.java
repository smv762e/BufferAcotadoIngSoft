package buffer;

import static org.junit.jupiter.api.Assertions.assertEquals;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class StepDefinitions<T> {
	
	private BufferAcotado<T> ba;

	// Inicialización general del buffer
	@Given("Tengo un BufferAcotado de capacidad {int}")
	public void intializeBuffer(int cap) {
		this.ba = new BufferAcotado<T>(cap);
	}
	
	// Pasos para BufferAcotado.put
	@When("Quiero introducir un elemento {int}")
	public void add(T element) {
		this.ba.put(element);
	}
	
	@When("Quiero eliminar un elemento")
	public void delete() {
		this.ba.get();
	}
	
	@Then("Quiero comprobar el elemento eliminado {int}")
	public void isThis(int deleted) {
		assertEquals(deleted, this.ba.get());
	}
				
	@Then("Quiero comprobar el tamaño {int}")
	public void tamaño(int value) {
		assertEquals(value, this.ba.size());
	}
	
	@Then("Quiero comprobar si está lleno {string}")
	public void lleno(String content) {	
		String lleno = new Boolean(this.ba.isFull()).toString();
		assertEquals(content, lleno);
	}
	
	@Then("Quiero comprobar si está vacío {string}")
	public void vacio(String content) {	
		String vacio = new Boolean(this.ba.isEmpty()).toString();
		assertEquals(content, vacio);
	}
}
	