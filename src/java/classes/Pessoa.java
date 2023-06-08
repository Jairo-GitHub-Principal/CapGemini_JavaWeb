/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.protocol.Resultset;
import util.Conection;
/**
 *
 * @author admin
 */
public class Pessoa {
    private int id;
	private String nome;
	private String email;
	
	
	public boolean IcluirPessoa(Pessoa p) {
		String sql = "insert into pessoa";
		       sql+= "(nome,email)";
		       sql+="values(?,?)";
		      
		       Connection con = Conection.getConnection();
		       
		       try {
		    	   PreparedStatement stm = con.prepareStatement(sql);
		    	   stm.setString(1, this.nome);
		    	   stm.setString(2, this.email);
		    	   stm.execute();
				
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Error" + e.getMessage() + sql);
				return false;
			}
		       return true;
		
	}
	
	// Crud listar
			public List<Pessoa> ListarPessoas() {
				List <Pessoa> listar = new ArrayList<>();
				Connection con = Conection.getConnection();
				String sql = "select * from pessoa";
							
				try {
					Resultset rs = null;         // com.mysql.cj.protocol vela que esse tem o final minusculo "set"
					ResultSet RS = null;         // java.sql vela que esso tem o final maiusculo "Set"
					PreparedStatement stm = con.prepareStatement(sql);
					 RS= stm.executeQuery(sql); 
					 
					 		while(RS.next()) {
								Pessoa p = new Pessoa();
								p.setId(RS.getInt("id"));
								p.setNome(RS.getString("nome"));
								p.setEmail(RS.getString("email"));
								listar.add(p);
							}
					}
					catch (Exception e) {
						System.out.println("Error"+e.getMessage());
						
						
					}	return listar;				
										
				
			}
	
	
	public Pessoa() {	// construtor vazio, me permite instanciar a classe pessoa, sem 
						// a obrigatoriedade de informar os parametros que ele precisa para atribuir valores a suas propriedades 
	}
		
	public Pessoa(String nome, String email) {
		super();
		
		this.nome = nome;
		this.email = email;
	}
	
	public Pessoa(int id,String nome, String email) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
	}

	

	@Override
	public String toString() {
		return "Pessoa [id=" + id + ", nome=" + nome + ", email=" + email + "]";
	}
	
	//ID_______________
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	//NOME________________________
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	//Email__________________________
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;	
	}
}
