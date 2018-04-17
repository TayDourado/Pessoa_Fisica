package control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

import model.PessoaFisica;

public class PFJdbc {
	private Connection conn;
	
	public PFJdbc(java.sql.Connection conn) {
		this.conn = conn;
	}
	
	public void guardar(PessoaFisica p) throws SQLException{
		String sql = "insert into pessoa (cpf, rg, nome, endereco, cidade, bairro, cep, estado, sexo, telefone, celular) values ('"+p.getCpf()+"','"+p.getRg()+"','"+p.getNome()+"','"+p.getEndereco()+"','"+p.getCidade()+"','"+p.getBairro()+"','"+p.getCep()+"','"+p.getEstado()+"','"+p.getSexo()+"','"+p.getTelefone()+"','"+p.getCelular()+"')";
		System.out.println(sql);
		PreparedStatement prepareStatment = this.conn.prepareStatement(sql);
		prepareStatment.executeUpdate();
		prepareStatment.close();
	}
	
	public void imprimir(PessoaFisica p) throws SQLException{
		Statement stm = conn.createStatement(); 
		String sql = "select * from pessoa where cpf = '"+p.getCpf()+"'";
		String sex = "select sexo from pessoa where cpf = '"+p.getCpf()+"'";	
		System.out.println(sql);
		ResultSet rs = stm.executeQuery(sql);
		PreparedStatement prepareStatment = this.conn.prepareStatement(sql);
		this.conn.prepareStatement(sex);
		prepareStatment.execute();
		prepareStatment.close();
		

		while(rs.next()){
			view.PessoaFisica pf = new view.PessoaFisica(); 
			
		       pf.txtNome.setText(rs.getString("nome"));
		       pf.txtCpf.setText(rs.getString("cpf"));
		       pf.txtRg.setText(rs.getString("rg"));
		       pf.txtEnd.setText(rs.getString("endereco"));
		       pf.txtCidade.setText(rs.getString("cidade"));
		       pf.txtBairro.setText(rs.getString("bairro"));
		       pf.txtCep.setText(rs.getString("cep"));
		       pf.cmbEst.setVisible(false);
		       pf.lbl_est.setVisible(true);
		       pf.lbl_est.setText(rs.getString("estado"));
		       
		       if (sex.equals("M"))
		    	   pf.rdbsexo[0].setSelected(true);
		       else
		    	   pf.rdbsexo[1].setSelected(true);
		       
		       pf.txtTel.setText(rs.getString("telefone"));
		       pf.txtCel.setText(rs.getString("celular"));
		       
		       pf.btnSalvar.setEnabled(false);
		       
		       pf.txtNome.setEnabled(false);
		       pf.txtRg.setEnabled(false);
		       pf.txtEnd.setEnabled(false);
		       pf.txtCidade.setEnabled(false);
		       pf.txtBairro.setEnabled(false);
		       pf.txtCep.setEnabled(false);
		       pf.txtTel.setEnabled(false);
		       pf.txtCel.setEnabled(false);
		       pf.rdbsexo[0].setEnabled(false);
		       pf.rdbsexo[1].setEnabled(false);
		}	
	}
}
