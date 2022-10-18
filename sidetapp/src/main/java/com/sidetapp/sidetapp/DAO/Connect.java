package com.sidetapp.sidetapp.DAO;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class Connect {
	
	static String name_bd = "sidetapp";
	static String user_bd = "root";
	static String pass = "1234";
	static String url_bd = "jdbc:mysql://localhost:3306/sidetapp";
	
	Connection connection = null;
	
	public Connect() {
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			connection = DriverManager.getConnection(url_bd, user_bd, pass);
			
			if(connection != null) {
				System.out.println("Conexión a base de datos " + name_bd + "Ok\n");
			}
			
		} catch (SQLException e) {
			System.out.println("Error en la base de datos " + name_bd);
		} catch (ClassNotFoundException e) {
			System.out.println("Error en la carga de clases");
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	public Connection getConnection() {
		return connection;
	}
	
	public void disconnect() {
		connection = null;
	}
	

}
