public class Lista {

    Pessoa first;
    Pessoa last;
    int size;


    public boolean add(Pessoa p){
        if (first==null){
            first =p;
            last =p;
            size++;
            return true;
        }else{
            p.proximo = this.first;
            this.first=p;
            size++;
            return true;
        }
    }

    public boolean addFim(Pessoa p){
        if(first==null){
            return   add(p);
        }else{
            this.last.proximo=p;
            this.last=p;
            size++;
            return true;
        }
    }

    public void exibir(){
        Pessoa aux= this.first;
        if(aux==null){
            System.out.println("Lista vazia");
        }else{
            while (aux!=null){
                System.out.println(aux.nome);
                aux= aux.proximo;
            }
        }
    }
}