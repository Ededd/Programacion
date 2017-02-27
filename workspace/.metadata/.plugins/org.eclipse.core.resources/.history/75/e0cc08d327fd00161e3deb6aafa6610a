import java.util.Scanner;

/**
 * PruebaFracciones: programa de prueba de la clase Fraccion
 * @author 
 */
public class ProbarFraccion {

	/**
	 * main (método principal): lee dos fracciones, imprime algunas de sus características, 
	 * realiza algunas operaciones e imprime los resultados correspondientes
	 */

	public static void main(String[] args) {
		
		//declaración e inicialización de f y g, instancias de la clase Fraccion 
		//[***]
		Fraccion f= new fraccion ();
		fraccion g=new fraccion();
		
		f.getNumerador();
		

		Scanner consola = new Scanner(System.in);

		System.out.println("Escribe una fraccion (n/d):");

		//leer la fracción f
		f.get(consola);
		consola.nextLine();

		//probar métodos para f
		System.out.print("Fraccion F: ");
		f.put();
		System.out.println();
		System.out.print("Numerador: ");
		System.out.println(f.getNumerador());
		System.out.print("Denominador: ");
		System.out.println(f.getDenominador());
		System.out.print("Fraccion simplificada: ");
		f.simplificar().put();
		System.out.println();
		System.out.print("Fraccion F convertida a entero: ");
		System.out.println(f.aEntero());      

		System.out.println("Escribe otra fraccion (n/d):");

		//leer la fracción g

		//[***]
		
		

		//probar métodos para f

		//[***]
		
		
		
		//aplicar operaciones sobre f y g,
		//y escribir el resultado
		System.out.print("F + G: ");
		f.sumar(g).put();
		System.out.println();

		//[***]
		
		
		

		if (f.esIgual(g)) {
			System.out.println("F y G son iguales");
		} else if (f.esMenor(g)) {
			System.out.println("F es menor que G");
		} else {
			System.out.println("F es mayor que G");
		}     
	}
}
