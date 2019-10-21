package esercizio1;

import java.awt.event.KeyEvent;

import javax.swing.JPasswordField;

import javafx.scene.image.*;

import javafx.event.*;
import javafx.scene.control.*;

public class Interface {

	Interface(Button login, TextField tf_companyName, Label table_title, TableProjects table, 
			TextArea description, TextField name_project, TextField total_budget, Button insert, Button delete,
			ImageView iv1, TextField stake, Button update, Label name_agency, Label address_agency, Label site_agency,PasswordField tf_password,
			Label l_agencyName,Label l_password, TableMessage table_message, Label l_stake, Label l_description, Label l_total_budget,
			Label l_project_name, Label messages_received, Button accept, Button refuse, Label l_description_message, TextArea description_message,
			TextField stake_message, TextField project_message, Label l_stake_message, Label l_project_message, Button send,
			ChoiceBox choice_agency, Label message_receiver){
		
		//Abbasso tutte le y di 20
		login.setLayoutX(540);
		login.setLayoutY(125);
		login.setMinSize(70, 30);
		login.setStyle("-fx-font-weight: bold;");
		
		name_agency.setLayoutX(335);
		name_agency.setLayoutY(40);
		name_agency.setStyle("-fx-font-weight: bold;  -fx-font-size: 18px;");
		
		
		address_agency.setLayoutX(280);
		address_agency.setLayoutY(72.5);
		address_agency.setStyle("-fx-font-weight: bold;");
		
		site_agency.setLayoutX(340);
		site_agency.setLayoutY(100);
		site_agency.setStyle("-fx-font-weight: bold;");
		
		tf_companyName.setLayoutX(500);
		tf_companyName.setLayoutY(30);
		
		l_agencyName.setLayoutX(530);
		l_agencyName.setLayoutY(10);
		
		
		tf_password.setLayoutX(500);
		tf_password.setLayoutY(85);
		
		l_password.setLayoutX(540);
		l_password.setLayoutY(65);
		
		messages_received.setLayoutX(830);
		messages_received.setLayoutY(10);
		messages_received.setStyle("-fx-font-weight: bold; -fx-font-size: 16px;");
		
		table_title.setLayoutX(300);
		table_title.setLayoutY(160);
		table_title.setStyle("-fx-font-weight: bold; -fx-font-size: 18px;");
		
		table.setLayoutX(130);
		table.setLayoutY(200);
		table.setMaxHeight(140); 
		
		l_description.setLayoutX(130);
		l_description.setLayoutY(400);
		
		description.setLayoutX(130);
		description.setLayoutY(420);
		description.setMaxWidth(480);
		description.setMaxHeight(90);
		description.setEditable(false);
		description.setWrapText(true);
		
		//description.setOnKeyPressed(new EventHandler<KeyEvent>(){
			//public void handle(KeyEvent event) {
				
			//}
		//});
		description.setTextFormatter(new TextFormatter<String>(change -> 
        	change.getControlNewText().length() <= 500 ? change : null));

		
		l_project_name.setLayoutX(130);
		l_project_name.setLayoutY(520);
		
		name_project.setLayoutX(130);
		name_project.setLayoutY(540);
		name_project.setMinHeight(40);
		name_project.setMinWidth(200);
		name_project.setEditable(false);
		
		l_total_budget.setLayoutX(410);
		l_total_budget.setLayoutY(520);
		
		total_budget.setLayoutX(410);
		total_budget.setLayoutY(540);
		total_budget.setMinHeight(40);
		total_budget.setMinWidth(200);
		total_budget.setEditable(false);
		
		insert.setLayoutX(270);
		insert.setLayoutY(600);
		insert.setMinSize(70, 30);
		insert.setStyle("-fx-font-weight: bold;");
		insert.setDisable(true);
		
		delete.setLayoutX(400);
		delete.setLayoutY(600);
		delete.setMinSize(70, 30);
		delete.setStyle("-fx-font-weight: bold;");
		delete.setDisable(true);
		
		iv1.setFitHeight(100);
	    iv1.setFitWidth(100);
	    iv1.setLayoutX(80);
	    iv1.setLayoutY(35);
	    
	    l_stake.setLayoutX(130);
	    l_stake.setLayoutY(350);
	    
	    stake.setLayoutX(130);
	    stake.setLayoutY(370);
	    stake.setEditable(false);
	    
	    update.setLayoutX(300);
	    update.setLayoutY(370);
	    update.setDisable(true);
	    
	    table_message.setLayoutX(730);
	    table_message.setLayoutY(40);
	    table_message.setMaxHeight(140); 
	    
	    accept.setLayoutX(780);
	    accept.setLayoutY(200);
	    
	    refuse.setLayoutX(850);
	    refuse.setLayoutY(200);
	    
	    l_description_message.setLayoutX(730);
	    l_description_message.setLayoutY(250);
	    
	    description_message.setLayoutX(730);
	    description_message.setLayoutY(270);
	    description_message.setMaxWidth(330);
	    description_message.setMaxHeight(90);
	    
	    message_receiver.setLayoutX(730);
	    message_receiver.setLayoutY(370);
	    
	    choice_agency.setLayoutX(730);
	    choice_agency.setLayoutY(400);
	    
	    //Abbasso di 50 e poi di 30
	    
	    l_stake_message.setLayoutX(730);
	    l_stake_message.setLayoutY(450);
	    
	    stake_message.setLayoutX(730);
	    stake_message.setLayoutY(480);
	    
	    l_project_message.setLayoutX(900);
	    l_project_message.setLayoutY(450);
	    
	    project_message.setLayoutX(900);
	    project_message.setLayoutY(480);
	    
	    send.setLayoutX(730);
	    send.setLayoutY(530);
	}
}
