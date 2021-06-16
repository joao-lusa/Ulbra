package com.company;

public class Main {

    public static void main(String[] args) {
        //Centros de Custo
        CentroDeCusto edificioDaPraia = new CentroDeCusto(100, "Resort da Cal",
                "Beco do Lassaço", 100, "Praia da Cal", "Torres",
                95560000, 'G', "em andamento");

        CentroDeCusto edificioDaVila = new CentroDeCusto(200, "Edificio São João",
                "Travessa da Punhalada", 200, "Vila São João", "Torres",
                95560000, 'F', "em andamento");

        CentroDeCusto edificioDoCentro = new CentroDeCusto(300, "Edificio Sant Bento",
                "Onde o Vento faz a Curva", 300, "Centro", "Torres",
                95560000, 'K', "em andamento");

        //Fornecedor
        Fornecedor madeireira = new Fornecedor(10, "Madeireia Martins", "2304560933",
                "Av. Barão do Rio Branco", 1000, "Centenário", "Torres",
                95560000, 100);

        Fornecedor ceramica = new Fornecedor(20, "Cerâmica Santa Fé", "25876998233",
                "Rua da Pepeca", 300, "Centro", "Terra de Areia",
                99876000, 300);

        //Almoxarife
        Almoxarife almoxarifeDaPraia = new Almoxarife(1, "Gean Zanella", "04054312390", "51 997863321");

        Almoxarife almoxarifeDaVila = new Almoxarife(2, "Diego Rocha", "02074112041", "51 982360459");

        Almoxarife almoxarifeDoCentro = new Almoxarife(3, "Matheus Paulart", "06098732154", "51 998674312");

        //Cargo
        Cargo mestreDeObra = new Cargo(1, "Mestre de Obras");

        Cargo servente = new Cargo(2, "Servente de Pedreiro");

        Cargo pedreiro = new Cargo(3, "Pedreiro");

        //Funcionário
        Funcionario funcionario1 = new  Funcionario(1, "Otavio Borges", "050999876345",
                "51 982450990", mestreDeObra, 1);

        Funcionario funcionario2 = new  Funcionario(2, "João Lucas", "09058413221",
                "51 982450990", servente, 2);

        Funcionario funcionario3 = new  Funcionario(3, "João Vitor", "0109214598",
                "51 981440978", pedreiro, 3);

        //CategoriasProduto/
        CategoriasProduto categoria1 = new CategoriasProduto(10, "Fundação");

        //Produtos
        Produtos produto1 = new Produtos(1, "Tijolo 9 furos", categoria1, 10, false, 5.00);

        //Produtosnota
        ProdutosNota itensNota1 = new  ProdutosNota(1, 100, 1, produto1, 3000);

    }
}
