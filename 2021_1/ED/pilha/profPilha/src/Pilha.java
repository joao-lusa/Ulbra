public class Pilha {
    private int[] vetor;
    private int topo;
/*
    public void inicializar(int tamanho) {
        vetor = new int[tamanho];
        topo=-1;
    }
*/
    public Pilha(int tamanho){
        vetor= new int[tamanho];
        topo=-1;
    }

    public boolean isEmpty(){
        if (topo==-1) {
            return true;
        }else {
            return false;
        }
    }
    public boolean isFull(){
        if(vetor.length -1==topo){
            return true;
        }else {
            return false;
        }
    }
    public boolean push(int valor){
        if (isFull()){
            return false;
        }else{
            topo++;
            vetor[topo] = valor;
            return true;
        }
    }
    public boolean show(){
        if (isEmpty()){
            return false;
        }else {
            System.out.println(vetor[topo]);
            return true;
        }
    }
    public boolean pop(){
        if (isEmpty()){
            return false;
        }else {
            vetor[topo]=0;
            topo--;
            return true;
        }
    }
    public void listar(){
        if(isEmpty()){
            System.out.println("erro");
        }else {
            for (int i=topo ;i>=0;i--){
                System.out.println(vetor[i]);
            }
        }
    }
}
