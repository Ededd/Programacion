public class Coche {

    private int doors;
    private int ruedas;
    private String modelo;
    private String motor;
    private String color;

    public void setModel(String modelo) {
        String validModel = modelo.toLowerCase();
        if(validModel.equals("astra") || validModel.equals("corsa")) {
            this.modelo = modelo;
        } else {
            this.modelo = "Unknown";
        }
    }

    public String getModelo() {
        return this.modelo;
    }
    
}
