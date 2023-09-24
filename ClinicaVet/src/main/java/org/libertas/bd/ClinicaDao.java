package org.libertas.bd;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.LinkedList;

public class ClinicaDao {
	public void inserir(Clinica c) {
		ConexaoBD con = new ConexaoBD();
		try {
			
			String sql = "INSERT INTO clinica (uf, cnpj, nome, endereco, telefone, email, website)"
				    + "VALUES (?,?,?,?,?,?,?)";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, c.getUf());
			prep.setString(2, c.getCnpj());
			prep.setString(3, c.getNome());
			prep.setString(4, c.getEndereco());
			prep.setString(5, c.getTelefone());
			prep.setString(6, c.getEmail());
			prep.setString(7, c.getWebsite());
			prep.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.desconectar();
		}
	}
		
	public void alterar(Clinica c){
		ConexaoBD con = new ConexaoBD();
		try {
			
			String sql = "UPDATE clinica SET uf =?, cnpj =?, nome =?, endereco =?, telefone =?, email =?, website =? WHERE idclinica =?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, c.getUf());
			prep.setString(2, c.getCnpj());
			prep.setString(3, c.getNome());
			prep.setString(4, c.getEndereco());
			prep.setString(5, c.getTelefone());
			prep.setString(6, c.getEmail());
			prep.setString(7, c.getWebsite());
			prep.setInt(8, c.getIdclinica());
			prep.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.desconectar();
		}
		
	}
	
	public void excluir(int idClinica){
		ConexaoBD con = new ConexaoBD();
	try {
			
			String sql = "DELETE FROM clinica WHERE idclinica=?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, idClinica);
			prep.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.desconectar();
		}
	}
	
	public boolean existeClinica(int id) {
		ConexaoBD con = new ConexaoBD();
		boolean existe = false;
		try {
			String sql = "SELECT 1 FROM clinica WHERE idclinica=?";
	        PreparedStatement prep = con.getConnection().prepareStatement(sql);
	        prep.setInt(1, id);
	        ResultSet res = prep.executeQuery();
	        
	        if (res.next()) {
	            existe = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        con.desconectar();
	    }
	    return existe;
	}
		
	
	public Clinica consultar(int id) {
	    ConexaoBD con = new ConexaoBD();
	    Clinica c = new Clinica();
	    try {
	        String sql = "SELECT * FROM clinica WHERE idclinica=?";
	        PreparedStatement prep = con.getConnection().prepareStatement(sql);
	        prep.setInt(1, id);
	        ResultSet res = prep.executeQuery();
	        if (res.next()) {
	            c.setIdclinica(res.getInt("idclinica"));
	            c.setUf(res.getString("uf"));
	            c.setCnpj(res.getString("cnpj"));
	            c.setNome(res.getString("nome"));
	            c.setEndereco(res.getString("endereco"));
	            c.setTelefone(res.getString("telefone"));
	            c.setEmail(res.getString("email"));
	            c.setWebsite(res.getString("website"));
	        }
	        prep.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        con.desconectar();
	    }
	    return c;
	}
	
	public List<Clinica> listar(){
		List<Clinica> lista = new LinkedList<Clinica>();
		ConexaoBD con = new ConexaoBD();
		try {
			
			String sql = "SELECT * FROM clinica ORDER BY idclinica";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			ResultSet res = prep.executeQuery();
			while (res.next()) {
				Clinica c = new Clinica();
					c.setIdclinica(res.getInt("idclinica"));
					c.setUf(res.getString("uf"));
					c.setCnpj(res.getString("cnpj"));
					c.setNome(res.getString("nome"));
					c.setEndereco(res.getString("endereco"));
					c.setTelefone(res.getString("telefone"));
					c.setEmail(res.getString("email"));
					c.setWebsite(res.getString("website"));
				lista.add(c);
			}
			prep.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.desconectar();
		}
		return lista;
	}
}
