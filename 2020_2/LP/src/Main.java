public class Main {
    public static void main(String[] args) {
        double valorD;
        double valorB;

        double dividi;

        double valorDb;
        double valorF;

        Conversor Cd = new  Conversor();

        valorD=Cd.Real()/Cd.Dolor();
        System.out.printf("o valor em dolar será de: %.2f \n",valorD);

        valorB=Cd.Real()/Cd.Bitcoin();
        System.out.printf("o valor em Bitcoin será de: %.6f \n",valorB);

        dividi=Cd.Dol()*Cd.Rel();
        System.out.printf("o valor do real em dolor é de: %.2f \n",dividi);

        valorDb=Cd.Dol()*Cd.Rel();
        valorF=valorDb*Cd.Bitcoin();
        System.out.printf("o total da divisão do Dolor para real foi de: %.2f \n",valorDb);
        System.out.printf("e mostrado em bitcoin: %.6f \n",valorF);
    }
}
