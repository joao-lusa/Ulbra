import java.util.Scanner;

public class data {
    public int dia;
    public int mes;
    public int ano;
    public boolean resultado;


    Scanner tc= new Scanner(System.in);

    public void lerData(){

        System.out.println("Informe o dia: ");
        this.dia=tc.nextInt();
        System.out.println("Informe o mês: ");
        this.mes=tc.nextInt();
        System.out.println("Informe o ano: ");
        this.ano=tc.nextInt();

    }

    public void verificarData(){

        if (this.dia <=31 && this.mes<=12 && this.dia>0 && this.mes>0 && this.ano>0){

            if (this.dia<=28 && this.mes==2){

                this.resultado=true;

            }else{

                if (this.dia<=30 && this.mes==4 ||this.mes==6||this.mes==9||this.mes==11){
                    this.resultado=true;

                }else{

                    if (this.mes==1 || this.mes==3 || this.mes==5 || this.mes==7 || this.mes==8 || this.mes==10 || this.mes==12 ){
                        this.resultado=true;

                    }else{
                        this.resultado=false;
                    }
                }
            }

        }else{

            resultado = false;

        }

        if (this.resultado==true){
            System.out.println("A data "+this.dia+"/"+this.mes+"/"+this.ano+" é verdadeira");
        }else{
            System.out.println("Data inválida!!");
        }

    }
}
