public class Operacao {

    public static int qtd   ;

    public static void main(String[] args) {
        int[] vetor = new int[100];
        System.out.println(vetor.length);
        addFim(vetor,4);
        addFim(vetor,3);
        addInicio(vetor,2);
        addInicio(vetor,1);
        remFim(vetor);
        remInicio(vetor);

        System.out.println("------------");
        mostrar(vetor);
        System.out.println("------------");
        mostrarPreechidas(vetor);
    }

    public static void mostrar(int vet[]){
        for (int i=0;i<vet.length-1; i++) {
            System.out.println(vet[i]);
        }
    }

    public static void mostrarPreechidas(int vet[]){
        if(qtd>0){
            for (int i=0;i<qtd; i++) {
                System.out.println(vet[i]);
            }
        }else {
            System.out.println("vetor vazio");
        }
    }
    public static void addFim(int vet[], int value){
        if(isFull(vet)){
            System.out.println("vetor cheio");
        }else{
            vet[qtd]=value;
            qtd++;
        }
    }

    public static void addInicio(int vet[], int value){
        if(isFull(vet)){
            System.out.println("Vetor cheio");
        }else {
            for(int i=qtd;i>=0;i--){
                vet[i+1]= vet[i];
            }
            vet[0]=value;
            qtd++;
        }
    }

    private static boolean isFull(int vet[]){
        if(qtd>=vet.length){
            return true;
        }else {
            return false;
        }
    }
    private static boolean isEmpty(int vet[]){
        if(qtd==0){
            return true;
        }else {
            return false;
        }
    }
    public static void remFim(int vet[]){
        if(isEmpty(vet)){
            System.out.println("Vetor vazio, não é possivel remover ");
        }else{
            vet[qtd-1]=0;
            qtd--;
        }

    }

    public static void remInicio(int vet[]){
        if(isEmpty(vet)){
            System.out.println("Vetor vazio, não é possivel remover ");
        }else{
            for (int i=0; i<qtd;i++){
                vet[i]=vet[i+1];
            }
            vet[qtd-1]=0;
            qtd--;
        }

    }
}