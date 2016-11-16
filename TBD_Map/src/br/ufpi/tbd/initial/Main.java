package br.ufpi.tbd.initial;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import br.ufpi.tbd.config.Conexao;

public class Main {
	static Connection con;	
	/**
	 * Insere na tabela as informações pertencentes a cada ponto do mapa
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static void insertInfoTableInfomapa() throws SQLException, ClassNotFoundException{
		Statement stm = con.createStatement();
		String nome = "'4-av. nossa senhora de fatima'";
		String coord_lat_long = "'POINT(-5.06679 -42.7932)'";
		stm.executeUpdate("INSERT INTO points VALUES (" + nome + ", "+ coord_lat_long + ")");
	}
	
	/**
	 * Deletar um item da tabela infomapa
	 * @param id
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static void deleteInfoMapa() throws ClassNotFoundException, SQLException{
		Statement stm = con.createStatement();
		stm.execute("delete from points where name like '4-%'");
	}
	
	/**
	 * Retorna uma lista de cada informações de cada ponto do mapa encontado no banco de dados
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static ArrayList<InfoMapa> getInfoMapa() throws ClassNotFoundException, SQLException{
		PreparedStatement ps;
		ArrayList<InfoMapa> lista = new ArrayList<InfoMapa>();
		InfoMapa im;
        
		String query = "SELECT name, ST_X(point), ST_Y(point) FROM points";//Criando query
        ps = con.prepareStatement(query);//Prepara query
        Statement stm = con.createStatement();
        ResultSet rs = (ResultSet) stm.executeQuery(query);//Executa query e joga resultado na variavel 'rs'
        while(rs.next()){ //Vai para o primeiro(e único) registro
	        im = new InfoMapa();//Cria um objeto InfoMapa
	        im.setNomePonto(rs.getString("name"));//Seta nome do ponto
	        im.setLatituide(rs.getFloat("st_x"));
	        im.setLongitude(rs.getFloat("st_y"));
	        lista.add(im);
        }        
        return lista;
	}
	
	/**
	 * exibe na tela as informações presentes na tabela infomapa
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static void exibirInfoMapa() throws ClassNotFoundException, SQLException{
		ArrayList<InfoMapa> lista = getInfoMapa();
		for (InfoMapa im : lista){
			System.out.println(im.getNomePonto());
			System.out.println(im.getLatituide());
			System.out.println(im.getLongitude());
			System.out.println();
		}
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		con = Conexao.conectar();
		// acessa os metadados do banco de dados
		DatabaseMetaData metadados = (DatabaseMetaData) con.getMetaData();
		// verificar se a tabela existe
		ResultSet tabela = (ResultSet) metadados.getTables(null, null, "points", null);

		// condição, caso a tabela exista
		if (tabela.next()) {
			System.out.println("Existe");
			//insertInfoTableInfomapa();
			//deleteInfoMapa();
			exibirInfoMapa();
		}
		else{
			System.out.println("Tabela \"points\" não existe!!!");
					
		}
		
		con.close();

	}
}

class InfoMapa {
	public String nomePonto;
	public float latituide, longitude;
	
	public String getNomePonto() {
		return nomePonto;
	}
	
	public void setNomePonto(String nomePonto) {
		this.nomePonto = nomePonto;
	}
	
	public float getLatituide() {
		return latituide;
	}
	
	public void setLatituide(float latituide) {
		this.latituide = latituide;
	}
	
	public float getLongitude() {
		return longitude;
	}
	
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}	
	
}