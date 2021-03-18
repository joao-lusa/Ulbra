import java.util.Scanner;

public class triangulo {
    public double base;
    public double altura;
    public double area;

    Scanner ler = new Scanner(System.in);

    public void lerDados(){
        System.out.println("informe a base do triângulo:");
        this.base = ler.nextDouble();
        System.out.println("informe a altura do triângulo:");
        this.altura = ler.nextDouble();
    }

    public void calcularArea(){
        this.area = (this.base * this.altura /2);
    }

    public  void mostrasDados(){
        System.out.println("a base informada foi: " + this.base + "\n a altura informada foi: "+ this.altura + "\n e a área desse triângula será: " + this.area);
    }
}