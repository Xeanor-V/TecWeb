package modelo;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.print.DocFlavor.INPUT_STREAM;

public class ConexionMySQL {
	
	private Connection conn;
	private String driverName, url, usuario, password;
	
	public ConexionMySQL(String driverName, String url, String usuario, String password) {
		// TODO Auto-generated constructor stub
		this.driverName = driverName;
		this.url = url;
		this.usuario = usuario;
		this.password = password;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Properties prop = new Properties();//https://docs.oracle.com/javase/tutorial/essential/environment/properties.html
		
		try {
			FileInputStream in = new FileInputStream("WebContent/conf/config.properties");
			prop.load(in);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String driverName = prop.getProperty("driverName");
		System.out.println("Driver: "+driverName);
		String url = "jdbc:mysql://localhost:3306/MySQL";
		String usuario = "root";
		String password = "mysql";
		
		ConexionMySQL mysql = new ConexionMySQL(driverName, url, usuario, password);
		mysql.getConexion();
		mysql.getConsulta("select * from user");
	}
	
	public void getConexion(){
		//int cont = 1;
		try {
			Class.forName(driverName);
			//while (true)
			//{
				//cont++;
				this.conn = DriverManager.getConnection(url,usuario,password);
				if (conn == null)
				{
					System.out.println("Conexion no establecida");
				}
				else
				{
					System.out.println("La conexion se realizo correctamente");
				}
		//	}
			} catch (SQLException ex) {
			// handle any errors
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void getConsulta(String query)
	{
		int cont = 1;
		Statement st;
		try {
			if (this.conn == null)
			{
				System.out.println("La conexion es nula");				
			}
			st = this.conn.createStatement();
			System.out.println("Consulta: "+query);
			ResultSet r = st.executeQuery(query);
			while (r.next())
			{
				for (int i = 1; i <= r.getMetaData().getColumnCount(); i++)
				{
					if (cont == 1)
					{
						System.out.print(" "+r.getMetaData().getColumnName(i)+" ");
					}
					Object o = r.getObject(i);
					System.out.print(" "+o+" ");
				}
				System.out.println(" ");
				cont++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
