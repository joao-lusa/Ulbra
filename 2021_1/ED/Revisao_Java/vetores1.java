//Escreva um programa que crie um array de inteiros data e use um laço for para criar um novo String que exiba o conteúdo
// do array data entre chaves e separado por vírgulas. Por exemplo, se o array data tiver tamanho 4 e armazenar os valores
// 3, 4, 1, 5, o String “{3, 4, 1, 5}” deve ser criado e exibido.
public class vetores1 {

    public static void main(String[] args) {
        int[] data  = {87, 68, 52, 5};
        StringBuilder resultado = new StringBuilder();

        resultado.append("{");

        for(int i=0; i<data.length; i++){
            if(i<3){
                resultado.append(data[i]+",");
            }else{
                resultado.append(data[i]);
            }
        }

        resultado.append("}");

        System.out.println(resultado);
    }

}