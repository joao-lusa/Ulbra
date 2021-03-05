import java.util.Scanner;


public class Conversor{
        public double Real(){
                double reais;

                Scanner ler=new Scanner(System.in);

                System.out.println("informe valor em reais:");
                reais=ler.nextDouble();

                return reais;
        }
        public double Dolor(){
            double dolores;

            Scanner ler=new Scanner(System.in);

            System.out.println("informe a cotação do dolor:");
            dolores=ler.nextDouble();

            return dolores;
        }
        public double Bitcoin(){
            double bit;

            Scanner ler=new Scanner(System.in);

            System.out.println("informe a cotação do bitcoin:");
            bit=ler.nextDouble();

            return bit;
        }
        public double Dol(){
            double dolores;

            Scanner ler=new Scanner(System.in);

            System.out.println("informe o valor do dolor:");
            dolores= ler.nextDouble();

            return dolores;
        }
        public double Rel(){
            double rel;

            Scanner ler=new Scanner(System.in);

            System.out.println("informe a cotação do real:");
            rel= ler.nextDouble();

            return rel;

        }

}
