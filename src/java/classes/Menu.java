/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.List;
import java.util.Scanner;

/**
 *
 * @author admin
 */
public class Menu {
    public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		Pessoa pesD = new Pessoa();
		
		
		
		
		Scanner entrada = new Scanner(System.in); // instancia da classe scanner para entradda de dados
		
		int decisao=0;
		int escolha = 0;
		
		
		do{// extrutura do{}while() laço de repetição do{}while(), vai repetir a inicializaçã odo programa enquanto a variavel for igual a s
			// Incluir uma pessoa
			
				
				System.out.println("1 para cadastrar");
				System.out.println("2 para listar");
				
				escolha = entrada.nextInt();
				
				switch (escolha) {
				case 1: 
					System.out.println("cadastrar");
					System.out.println("Digite o seu nome");// pedir ao usuario para informar seu noma
					String nome = entrada.next(); // ler o nome informado pelo usuario e armazenar na string nome
					
					System.out.println("Digite o seu Email");
					String email = entrada.next();
					Pessoa p = new Pessoa(nome,email); // instanciar a classe pessoa e passar as string nome e email para o metodo contrutor, e esses dados serão armazenado nas propriedades da classe pessoa
					
					
					pesD.IcluirPessoa(p);// chamar o metodo incluirPessao de pessoaDao e passar para ele o objeto pessoa, para que as propriedades armazenadas em pessoa "nome" , "email" possa ser persistido no DB
					
				break;
				
				case 2: 
					System.out.println("listar");
					// listar pessoas
					
					List<Pessoa> listaPessoas = pesD.ListarPessoas();
					
					for(Pessoa pList: listaPessoas){
																
						System.out.println("id: " +pList.getId());
						System.out.println("nome: "  +pList.getNome());
						System.out.println("email: " +pList.getEmail());
						System.out.println("--------------------------------------------------");
						
					}
				break;
				
				default:
					System.out.println("numero "+ escolha+" é um menu invalido ");
				}
				
				
				System.out.println("digite(1) para iniciar o menu principal");
				System.out.println("digite(2) para sair do programa");
				decisao = entrada.nextInt();
							
				
		}while(decisao == 1);  // s para sair
		   

	}
}
