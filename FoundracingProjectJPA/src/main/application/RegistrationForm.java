
package application;
import java.awt.Frame;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.Arrays;
import java.util.Vector;
import javax.swing.*;
import jpaConnect.DepositoDati;
import lvDbConnect.DepositoDatiLevelDb;


class RegistrationForm extends JFrame {

         JLabel nameAgency = new JLabel("Agency Name:");
         JLabel address = new JLabel("Address:");
         JLabel ZIP = new JLabel("ZIP code:");
         JPasswordField password = new JPasswordField(16);
         JPasswordField confirm_password = new JPasswordField(16);
         JTextField name_field = new JTextField();
         JTextField address_field = new JTextField();
         JTextField ZIP_field = new JTextField();
         JTextField url = new JTextField();
         JLabel insertPassword = new JLabel("Password:");
         JLabel insertUrl = new JLabel("Web Site:");
         JLabel urlLogo = new JLabel("Logo: ");
         JTextField urlLogo_field = new JTextField();
         JButton submit = new JButton("Submit");
         JButton reset = new JButton("Reset");
         DepositoDatiLevelDb deposito=null;

        public RegistrationForm(DepositoDatiLevelDb db) {
        	deposito=db;
        	reset.addActionListener(new ActionListener() {
           public void actionPerformed(java.awt.event.ActionEvent e) {
                   resetFields();
                }

            });
        	
        	this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        	
            submit.addActionListener(new ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent e) {
                    if (name_field.getText().isEmpty() || address_field.getText().isEmpty() || ZIP_field.getText().isEmpty()
                                    || password.getPassword()==null || confirm_password.getPassword()==null|| url.getText().isEmpty() || urlLogo_field.getText().isEmpty()) {
                                JOptionPane.showMessageDialog(null, "Attenzione! Alcuni campi sono ancora vuoti!");
                    }else if(!ZIP_field.getText().matches("[0-9]+")) {
                    	JOptionPane.showMessageDialog(null, "Attenzione! Il cap deve essere numerico!");
                    	ZIP_field.setText("");
                    }
                    	else {
                        if (!deposito.getAgencyBasic(name_field.getText(),"",false).isEmpty()) {
                            JOptionPane.showMessageDialog(null, "Questa azienda � gi� presente!");
                            resetFields();
                        } else {
                            if(password.getPassword()==null)
                                JOptionPane.showMessageDialog(null, "Password non inserita!");
                            else if (!Arrays.equals(password.getPassword(), confirm_password.getPassword())) {
                            	JOptionPane.showMessageDialog(null, "Le due password non coincidono!");
                                password.setText("");;
                                confirm_password.setText("");;
                            } else {
                                Vector<String> val = new Vector<String>();
                                val.add(name_field.getText());
                                val.add(urlLogo_field.getText());
                                val.add(url.getText());
                                val.add(address_field.getText());
                                val.add(ZIP_field.getText());
                                //password passata in chiaro!!!
                                val.add(new String(password.getPassword()));
                                deposito.insertAgency(val);
                                dispose();
                                JOptionPane.showMessageDialog(null, "Inserimento realizzato con successo!");
                            }
                        }

                    }

                }
            }
            );
          
    }
        
        private void resetFields() {
        	ZIP_field.setText("");
            password.setText("");
            confirm_password.setText("");
            name_field.setText("");
            address_field.setText("");
            ZIP_field.setText("");
            url.setText("");
            urlLogo_field.setText("");
        }
    
  }
  