package applicationFront;

import java.util.*;

import applicationMiddle.RowTableMessage;
import javafx.collections.*;
import javafx.scene.control.*;
import javafx.scene.control.cell.*;

public class TableMessage extends TableView<RowTableMessage> {

	private ObservableList<RowTableMessage> messagesList;
	
	public TableMessage() {
		
		setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);
		
		TableColumn Id_Project = new TableColumn("ID Project"); 
		Id_Project.setCellValueFactory(new PropertyValueFactory<>("id_project")); 
		Id_Project.setStyle("-fx-alignment: CENTER;");
		
    	TableColumn Id_Message = new TableColumn("ID Message"); 
    	Id_Message.setCellValueFactory(new PropertyValueFactory<>("id")); 
    	Id_Message.setStyle("-fx-alignment: CENTER;");
    	Id_Message.setVisible(false);
		
		TableColumn Mittente = new TableColumn("Azienda Mittente"); 
    	Mittente.setCellValueFactory(new PropertyValueFactory<>("mittente")); 
    	Mittente.setStyle("-fx-alignment: CENTER;");
    	
    	TableColumn Data = new TableColumn("Data"); 
    	Data.setCellValueFactory(new PropertyValueFactory<>("data")); 
    	Data.setStyle("-fx-alignment: CENTER;");
    	
    	TableColumn Messaggio = new TableColumn("Messaggio"); 
    	Messaggio.setCellValueFactory(new PropertyValueFactory<>("messaggio")); 
    	Messaggio.setStyle("-fx-alignment: CENTER;");
    	
    	TableColumn Stake = new TableColumn("Stake"); 
    	Stake.setCellValueFactory(new PropertyValueFactory<>("stake")); 
    	Stake.setStyle("-fx-alignment: CENTER;");
    	
    	messagesList = FXCollections.observableArrayList();
    	setItems(messagesList);
        getColumns().addAll(Id_Message, Id_Project, Mittente, Data, Messaggio, Stake);
	}
	
	public void updateMessages(List<RowTableMessage> messages) {
		messagesList.clear();
		messagesList.addAll(messages);
    	/*messagessList = FXCollections.observableArrayList(projects);
    	messagessList.addAll(projects);*/
    }
}
