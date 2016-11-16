package br.ufpi.tbd.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    public static Connection con;
    
    public static Connection conectar() throws SQLException, ClassNotFoundException{
    	Class.forName("org.postgresql.Driver");
    	String url = "jdbc:postgresql://localhost/postgis";
    	String usuario = "postgres";
    	String senha = "admin";
    	Connection con = DriverManager.getConnection(url, usuario, senha);   
        //Conexao.conexao = DriverManager.getConnection("jdbc:postgresql://localhost/postgis","postgres","admin");
        System.out.println("Conectado! ");
        return con;

        
    }
    
}
