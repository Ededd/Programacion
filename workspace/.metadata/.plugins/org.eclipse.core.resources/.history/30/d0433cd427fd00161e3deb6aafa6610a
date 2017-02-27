import java.util.Scanner;

/**
 * implementacion de la clase TAD Fraccion 
 * @author 
 */
public class Fraccion {
	private long numerador;
	private long denominador;
	

	// Representación interna de la clase (campos): 
	// numerador y denominador de la fracción [***]
	
	
	// NOTA: Es aconsejable usar el tipo primitivo long, int es "demasiado pequeño",  
	// para no producir un error de overflow. 
	// http://www.javacoffeebreak.com/books/extracts/javanotesv3/c9/s1.html

	
	
	
	



	// operaciones constructoras

	/**
	 * Constructora (sin parámetros): construye la fracción 0/1 
	 */
	//[***]
	

	
	

	/**
	 * Constructora: Construye una Fraccion a partir del numerador n,  
	 * y del denominador d. 
	 * @param n numerador, entero
	 * @param d denominador, positivo
	 */
	//[***]
	public Fraccion (long n, long d){
	numerador=n;
	denominador=d;
	}

	
	

	/**
	 * Constructora: construye la Fracción n/1  
	 * Nota: equivale a la operación aFraccion (convierte un entero en fracción)
	 * @param n numerador, entero
	 */
	//[***]
public Fraccion (long n){
numerador=n;
denominador=1L;
}
	
	
	
	//   OPERACIONES DE ACCESO O CONSULTA

	
	/**
	 * getNumerador 
	 * @return el numerador de la Fracción  
	 */
	//[***]
public long getNumerador (){
	return numerador;
}

	
	
	
	/**
	 * getDenominador 
	 * @return el denominador  de la Fracción  
	 */
	//[***]
public long getDenominador () {
	return denominador;
}

	
	
	
	
	//   OPERACIONES ARITMETICAS

	/**
	 * sumar 
	 * @param otra
	 * @return Fraccion simplificada resultante de sumar el objeto y otra,   
	 */
	//[***]
public Fraccion sumar (fraccion otra){
	Fraccion sum=new Fraccion();
	sum.numerador=numerador*otra.denominador+denominador*otra.numerador;
	sum.denominador=denominador*otra.denominador;
	return sum.simplificar();
}

	
	
	
	/**
	 * resta 
	 * @param otra
	 * @return Fraccion simplificada resultante de restar otra del objeto 
	 */
	//[***]


	
	
	



	/**
	 * multiplicar
	 * @param otra
	 * @return Fraccion simplificada resultante de multiplicar 
	 *  otra por el objeto
	 */
	//[***]


	
	
	

	
	/**
	 * dividir
	 * @param otra
	 * @return  Fraccion simplificada resultante de dividir 
	 * el objeto entre otra
	 */
	//[***]


	
	
	

	//   OPERACIONES DE COMPARACION

	/**
	 * esIgual 
	 * @param otra
	 * @return true, si la Fracción es igual a otra; false, en caso contrario
	 */
	//[***]
	


	/**
	 * esMenor 
	 * @param otra
	 * @return true si Fraccion < otra ; false en caso contrario
	 */
	//[***]
	



	/**
	 * esMayor 
	 * @param otra
	 * @return true si Fraccion > otra ; false en caso contrario
	 */
	//[***]
	

	//   otras operaciones
	
	/**
	 * aEntero 
	 * @return la parte entera de dividir el numerador y el denominador  
	 * de la Fraccion
	 */
	//[***]



	/**
	 * mCD: operacion privada.
	 * La operacion simplificar utiliza el método del algoritmo de Euclides
	 * que se basa en el cálculo del MCD
	 * @param x un número
	 * @param y un numero
	 * @return devuelve el máximo común divisor de x e y 
	 */
	private long mCD(long x, long y) {
		if (y == 0) {
			return x;
		} else {
			return mCD(y, x % y); //recursivo
		}
	}
	
	/**
	 * @return Fraccion simplificada
	 */
	public Fraccion simplificar() {
		long m = mCD(Math.abs(numerador), denominador);
		return new Fraccion((numerador/m), (denominador/m));
	}



	// OPERACIONES DE ENTRADA/SALIDA
	

	/**
	 * put
	 * Efecto: escribe la Fracción en la salida estándar, con el formato z/i
	 */
	public void put() {
		System.out.print(numerador);
		System.out.print("/");
		System.out.print(denominador);		
	}
	
	
	/**
	 * get: 
	 * Efecto: lee el numerador y el denominador de una fracción 
	 *         desde la entrada estándar. 
	 * Nota: La fracción se lee con el formato N/D, salto de linea 
	 * Nota: si el denominador es negativo se cambian los signos de numerador y denominador
	 * @param entrada, desde donde leemos la Fracción      
	 */
//	public void get(Scanner entrada) {
//
//			entrada.useDelimiter("[/\\s]"); // define el caracter / como delimitador
//
//			this.numerador = entrada.nextInt();
//			this.denominador = entrada.nextInt();
//			if (this.denominador == 0) {this.denominador = 1;}
//	}

	public void get(Scanner entrada) {
		long d; // para leer el denominador

		entrada.useDelimiter("[/\\s]"); // define el caracter / también como delimitador

		numerador = entrada.nextInt();
		d = entrada.nextInt(); //slash-aren ondorengo zenbakia irakurri (izendatzailea)
		if (d < 0) { // cambio de signo 
			denominador = -d;
			numerador = - numerador;
		}
		else
			denominador = d;
	}


	
}
