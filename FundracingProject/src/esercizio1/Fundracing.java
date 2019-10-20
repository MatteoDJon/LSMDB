package esercizio1;

import java.awt.Choice;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.event.ActionListener;
import java.util.*;
import javafx.collections.*;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import javafx.scene.image.*;

import javafx.application.*;

import javafx.event.*;

import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.input.*;

import javafx.stage.*;
import javafx.util.*;
import javax.swing.JButton;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class Fundracing extends Application {

    protected TextField tf_companyName = new TextField();
    protected Button login = new Button("Login");
    protected Label table_title = new Label("NetworkProjects");
    protected Label messages_received = new Label("Messages Received");
    protected Label l_password = new Label("Password");
    protected Label l_agencyName = new Label("Agency Name");
    protected TextArea description = new TextArea();
    protected TextField name_project = new TextField("");
    protected TextField total_budget = new TextField("");
    protected TextField stake = new TextField("");
    private Label l_stake = new Label("Stake");
    private Label l_description = new Label("Description");
    private Label l_project_name = new Label("Project Name");
    private Label l_total_budget = new Label("Total Budget");
    protected PasswordField tf_password = new PasswordField();
    protected Button update = new Button("Update");
    protected Button insert = new Button("Insert");
    protected Button delete = new Button("Delete");
    private Boolean logged = false;
    protected String agencyName = "";
    private TableProjects table = new TableProjects();
    private int selectedProjectId = 0;
    private int selectedMessagetId = 0;
    private int selectedStake = 0;
    private int selectedTotalBudget = 0;
    private Label name_agency = new Label("");
    private Label address_agency = new Label("");
    private Label site_agency = new Label("");
    private DepositoDati deposito = new DepositoDati();
    private JLabel label;
    private Image image;
    private ImageView iv1 = new ImageView();
    private TableMessage table_message = new TableMessage();
    private Choice choiceAgency = new Choice();
    private Button accept = new Button("Accept");
    private Button refuse = new Button("Refuse");
    private Label l_description_message = new Label("Description Message");
    private TextArea description_message = new TextArea();

    private Button register = new Button("Register");

    class RegistrationForm extends Frame {

        private Boolean filled = false;
        private JLabel nameAgency = new JLabel("Agency Name:");
        private JLabel address = new JLabel("Address:");
        private JLabel ZIP = new JLabel("ZIP code:");
        private JPasswordField password = new JPasswordField(16);
        private JPasswordField confirm_password = new JPasswordField(16);
        private JTextField name_field = new JTextField();
        private JTextField address_field = new JTextField();
        private JTextField ZIP_field = new JTextField();
        private JTextField url = new JTextField();
        private JLabel insertPassword = new JLabel("Password:");
        private JLabel insertUrl = new JLabel("Web Site:");
        private JLabel urlLogo = new JLabel("Logo: ");
        private JTextField urlLogo_field = new JTextField();
        private JButton submit = new JButton("Submit");
        private JButton discard = new JButton("Discard");

        public Boolean getFilled() {
            return filled;
        }

        public String getnameAgency() {
            return this.name_field.getText();
        }

        public String getaddress() {
            return this.address_field.getText();
        }

        public String getAgencyPassword() {
            return new String(password.getPassword());
        }

        public String getAgencyField() {
            return ZIP_field.getText();
        }

        public String getAgencyWebSite() {
            return url.getText();
        }

        public RegistrationForm() {
            setVisible(true);
            setTitle("Network Registration Form");
            setSize(700, 500);
            setLayout(null);
            nameAgency.setBounds(100, 70, 400, 30);
            name_field.setBounds(250, 70, 350, 30);
            address.setBounds(100, 110, 400, 30);
            address_field.setBounds(250, 110, 350, 30);
            ZIP.setBounds(100, 150, 400, 30);
            ZIP_field.setBounds(250, 150, 350, 30);
            insertPassword.setBounds(100, 190, 400, 30);
            password.setBounds(250, 190, 350, 30);
            JLabel confirmPasswordLabel = new JLabel("Confirm Password:");
            confirmPasswordLabel.setBounds(100, 230, 400, 30);
            confirm_password.setBounds(250, 230, 350, 30);
            insertUrl.setBounds(100, 270, 400, 30);
            url.setBounds(250, 270, 350, 30);
            urlLogo.setBounds(100, 310, 400, 30);
            urlLogo_field.setBounds(250, 310, 350, 30);
            submit.setBounds(200, 360, 140, 30);
            discard.setBounds(400, 360, 140, 30);
            
            add(nameAgency);
            add(name_field);
            add(address);
            add(address_field);
            add(ZIP);
            add(ZIP_field);
            add(insertPassword);
            add(password);
            add(confirmPasswordLabel);
            add(confirm_password);
            add(url);
            add(insertUrl);
            add(urlLogo);
            add(urlLogo_field);
            add(submit);
            add(discard);
            
            discard.addActionListener(new ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent e) {
                    setVisible(false);
                }

            });
            submit.addActionListener(new ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent e) {
                    if (!Arrays.equals(password.getPassword(), confirm_password.getPassword())) {
                        JOptionPane.showMessageDialog(null, "The two passwords do not coincide!");
                        password = new JPasswordField();
                        confirm_password = new JPasswordField();
                    } else {
                        if (deposito.agencyAlreadyPresent(name_field.getText())) {
                            JOptionPane.showMessageDialog(null, "This agency is already present!");
                            setVisible(false);
                        } else {
                            if (!name_field.getText().isEmpty() || address_field.getText().isEmpty() || ZIP_field.getText().isEmpty()
                                    || password.getPassword().length == 0 || confirm_password.getPassword().length == 0 || url.getText().isEmpty() || urlLogo_field.getText().isEmpty()) {
                                JOptionPane.showMessageDialog(null, "Beware! The registration form is incomplete");
                            } else {
                                Vector<String> val = new Vector<String>();
                                val.addElement(name_field.getText());
                                val.addElement(urlLogo_field.getText());
                                val.addElement(url.getText());
                                val.addElement(address_field.getText());
                                val.addElement(ZIP_field.getText());
                                //password passata in chiaro!!!
                                val.addElement(new String(password.getPassword()));
                                deposito.insertAgency(val);
                            }
                        }

                    }

                }
            }
            );
        }
    }

    public void start(Stage stage) {

        table.updateProjects(deposito.getProjectsWithoutStake());
        selectTableRow();

        selectTableMessages();

        login.setOnAction((ActionEvent ev1) -> {

            String urlLogo = "";

            agencyName = tf_companyName.getText();
            String password = tf_password.getText();
            Vector<String> result = deposito.getAgency(agencyName, password);

            //Se il nome dell'azienda � presente nel db e la password � corretta
            if (!result.isEmpty()) {

                table.updateProjects(deposito.getProjects(agencyName));
                table_message.updateMessages(deposito.getMessages(agencyName));

                logged = true;
                insert.setDisable(false);
                delete.setDisable(false);
                description.setEditable(true);
                name_project.setEditable(true);
                total_budget.setEditable(true);
                stake.setEditable(true);
                update.setDisable(false);
                name_agency.setText(result.get(0));
                address_agency.setText(result.get(3));
                site_agency.setText(result.get(4));
                urlLogo = result.get(1);
                image = new Image(urlLogo);
                iv1.setImage(image);

            } //Se il nome dell'azienda non � presente nel db
            else {
                JOptionPane.showMessageDialog(null, "Il nome dell'azienda � errato oppure la password � scorretta!");
            }

        });

        Interface interfaccia = new Interface(login, tf_companyName, table_title, table,
                description, name_project, total_budget, insert, delete, iv1, stake, update,
                name_agency, address_agency, site_agency, tf_password, l_agencyName, l_password,
                table_message, l_stake, l_description, l_total_budget, l_project_name, messages_received, accept, refuse,
                l_description_message, description_message, register);

        register.setOnAction((ActionEvent ev2) -> {
            RegistrationForm form= new RegistrationForm();
            
        });
        insert.setOnAction((ActionEvent ev2) -> {

            String desc = description.getText();
            String name = name_project.getText();
            String budget = total_budget.getText();

            if (!desc.equals("") && !name.equals("") && !budget.equals("")) {

                Vector<String> vector = new Vector<String>(4);

                vector.add(name);
                vector.add(budget);
                vector.add(desc);
                vector.add(agencyName);

                deposito.insertProject(vector);

                description.clear();
                name_project.clear();
                total_budget.clear();

                vector.clear();

                table.updateProjects(deposito.getProjects(agencyName));
            }
        });

        delete.setOnAction((ActionEvent ev1) -> {

            //Se sono il proprietario
            if (deposito.iAmOwner(selectedProjectId, agencyName)) {
                deposito.deleteProject(selectedProjectId);
                table.updateProjects(deposito.getProjects(agencyName));
            }//Se non sono il proprietario ma voglio levare il mio stake
            else if (deposito.iAmOwner(selectedProjectId, agencyName) == false
                    && deposito.myStake(agencyName, selectedProjectId) == true) {
                deposito.deleteMyStake(selectedProjectId, agencyName);
                table.updateProjects(deposito.getProjects(agencyName));
            }//Se cerco di eliminare il progetto o lo stake di un altro
            else {
                JOptionPane.showMessageDialog(null, "Puoi eliminare solo i tuoi progetti o finanziamenti!");
            }
        });

        update.setOnAction((ActionEvent ev1) -> {
            int stakeInsered = Integer.parseInt(stake.getText());
            int totalStakes = deposito.getSommaStakes(selectedProjectId);
            //se ho gi� raggiunto l'obiettivo
            if (totalStakes >= selectedTotalBudget) {
                JOptionPane.showMessageDialog(null, "Ti ringraziamo per la tua generosit�, ma abbiamo gi� raggiunto l'obiettivo prefissato!");
            } //se non ho raggiunto l'obiettivo e voglio aggiungere soldi
            else {
                int newStake = 0;
                //se voglio mettere pi� soldi di quelli necessari,metto solo quelli che mi servono per raggiungere il budget prefisso
                if ((totalStakes - selectedStake + stakeInsered) > selectedTotalBudget) {
                    newStake = (selectedStake + (selectedTotalBudget - totalStakes)); //quanto ho messo pi� quanto manca per il max
                } else //altrimenti il nuovo stake sar� semplicemente quello inserito
                {
                    newStake = stakeInsered;
                }
                deposito.updateStake(newStake, agencyName, selectedProjectId);
                table.updateProjects(deposito.getProjects(agencyName));
                stake.setText("");
            }
        });

        accept.setOnAction((ActionEvent ev1) -> {

            //Dopo aver selezionato una riga della tabella messaggi, se l'utente preme 'accept', il sistema inserisce un nuovo finanziamento
        });

        Group root = new Group(tf_companyName, tf_password, login, table_title, table, description,
                name_project, total_budget, insert, delete, iv1, stake, update,
                name_agency, address_agency, site_agency, l_agencyName, l_password, table_message, l_stake, l_description, l_total_budget,
                l_project_name, messages_received, accept, refuse, l_description_message, description_message, register);

        Scene scene = new Scene(root, 1300, 650);
        stage.setTitle("My Fundracing Project");
        stage.setScene(scene);
        stage.show();

    }

    public static void main(String[] args) {
        launch(args);
    }

    private void selectTableRow() {
        table.setRowFactory(new Callback<TableView<RowTableProjects>, TableRow<RowTableProjects>>() {
            public TableRow<RowTableProjects> call(TableView<RowTableProjects> tableView2) {
                final TableRow<RowTableProjects> row = new TableRow<>();
                row.addEventFilter(MouseEvent.MOUSE_PRESSED, new EventHandler<MouseEvent>() {

                    public void handle(MouseEvent event) {
                        final int index = row.getIndex();
                        RowTableProjects res = table.getItems().get(index);
                        selectedProjectId = res.getId_project();
                        selectedTotalBudget = res.getBudget();
                        selectedStake = res.getStake();
                        description.setText(deposito.getDescriptionProject(selectedProjectId));
                        stake.setText(Integer.toString(res.getStake()));
                    }
                });
                return row;
            }
        });
    }

    private void selectTableMessages() {

        table_message.setRowFactory(new Callback<TableView<RowTableMessage>, TableRow<RowTableMessage>>() {
            public TableRow<RowTableMessage> call(TableView<RowTableMessage> tableView2) {
                final TableRow<RowTableMessage> row = new TableRow<>();
                row.addEventFilter(MouseEvent.MOUSE_PRESSED, new EventHandler<MouseEvent>() {

                    public void handle(MouseEvent event) {
                        final int index = row.getIndex();
                        RowTableMessage res = table_message.getItems().get(index);
                        selectedMessagetId = res.getId();
                        System.out.println("Message id: " + selectedMessagetId);
                        //selectedTotalBudget=res.getBudget();
                        //selectedStake=res.getStake();
                        description_message.setText(deposito.getDescriptionMessage(selectedMessagetId));
                        //stake.setText(Integer.toString(res.getStake()));
                    }
                });
                return row;
            }
        });
    }

}
