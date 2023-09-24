package org.libertas.bd;
import java.sql.Connection;
import java.sql.DriverManager;


public class ConexaoBD {
    private Connection connection;

    public ConexaoBD() {
    		try {
    			Class.forName("org.postgresql.Driver");
                
    			String url = "jdbc:postgresql://localhost:5432/clinicavet";
    	        String user = "postgres";
    	        String pass = "123";
    	        
    	        connection = DriverManager.getConnection(url, user, pass);
    	        
                System.out.println("Conexão estabelecida com sucesso!");
                
            } catch (Exception e) {
                System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
            }
        }
    
    public Connection getConnection() {
		return connection;
	}
    
    public void setConnection(Connection connection) {
		this.connection = connection;
	}
    
    public void desconectar() {
    	try {
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    	
}