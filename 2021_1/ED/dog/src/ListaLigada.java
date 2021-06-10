public class ListaLigada {
    private Dog primeiro;
    private Dog ultimo;
    private int tamanho;

    public ListaLigada(){
        this.tamanho = 0;
    }

    public Dog getPrimeiro() {
        return primeiro;
    }

    public void setPrimeiro(Dog primeiro) {
        this.primeiro = primeiro;
    }

    public Dog getUltimo() {
        return ultimo;
    }

    public void setUltimo(Dog ultimo) {
        this.ultimo = ultimo;
    }

    public int getTamanho() {
        return tamanho;
    }

    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    public void adicionar(Dog novoValor){
        Dog novoDog = novoValor;
        if (this.primeiro == null && this.ultimo == null){
            this.primeiro = novoDog;
            this.ultimo = novoDog;
        }else{
            this.ultimo.setProximo(novoDog);
            this.ultimo = novoDog;
        }
        this.tamanho++;
    }

    public void adicionar(int position, Dog d){
        if(primeiro==null){
            System.out.println("Posição invalida, adicionado no inicio da lista");
            adicionar(d);
        }else{
            if(position>=this.tamanho){
                adicionar(d);
            }else {
                if (position==0){
                    adicionar(d);
                }else {
                    Dog atual= primeiro;
                    int pos=0;
                    while (pos<position-1){
                        atual=atual.proximo;
                        pos++;
                    }
                    d.proximo=atual.proximo;
                    atual.proximo=d;
                    tamanho++;
                }
            }
        }

    }
    public int indexOf(Dog cachorro) {
        Dog atual = this.primeiro;
        int index = 0;
        while (atual != null) {
            if(atual.getNome().equals(cachorro.getNome())) {
                return index;
            }
            atual = atual.proximo;
            index += 1;
        }

        return -1;
    }

    public boolean isEmpty(){
        if (this.primeiro == null){
            System.out.printf("\na lista está vazia");
            System.out.println("\n-----------------------------------");
            return true;
        }else{
            System.out.printf("tem itens na lista");
            System.out.println("\n-----------------------------------");
            return false;
        }
    }

    public void remover(String valorProcurado){
        Dog anterior = null;
        Dog atual = this.primeiro;
        for(int i=0; i < this.getTamanho(); i++){
            if (atual.getNome().equalsIgnoreCase(valorProcurado)){
                if (this.tamanho == 1){
                    this.primeiro = null;
                    this.ultimo = null;
                }else if (atual == primeiro){
                    this.primeiro = atual.getProximo();
                    atual.setProximo(null);
                }else if (atual == ultimo){
                    this.ultimo = anterior;
                    anterior.setProximo(null);
                }else{
                    anterior.setProximo(atual.getProximo());
                    atual = null;
                }
                this.tamanho--;
                break;
            }
            anterior = atual;
            atual = atual.getProximo();
        }
    }
    public void remover(int posicaoProcurada){
        Dog anterior = null;
        Dog atual = this.primeiro;
        for(int i=0; i < this.getTamanho(); i++){
            if (i==posicaoProcurada){
                if (this.tamanho == 1){
                    this.primeiro = null;
                    this.ultimo = null;
                }else if (atual == primeiro){
                    this.primeiro = atual.getProximo();
                    atual.setProximo(null);
                }else if (atual == ultimo){
                    this.ultimo = anterior;
                    anterior.setProximo(null);
                }else{
                    anterior.setProximo(atual.getProximo());
                    atual = null;
                }
                this.tamanho--;
                break;
            }
            anterior = atual;
            atual = atual.getProximo();
        }
    }


    public void list(){
        Dog aux= this.primeiro;
        if(aux==null){
            System.out.println("Lista vazia");
        }else{
            while (aux!=null){
                aux.mostrar();
                aux= aux.proximo;
            }
        }
        System.out.println("-----------------------------------");
    }
    public void size(){
        System.out.println("\ntamanho: " + this.getTamanho());
    }



}
