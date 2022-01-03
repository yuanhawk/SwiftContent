struct DatabaseManager {
    
    func saveData(data: String) -> Bool {
        return true
    }
    
}

struct ChatView {
    
    // Propperties
    var message = ""
    
    // Methods
    func sendChat() -> Bool {
        // Save the chat message
        var db = DatabaseManager()
        let wasSuccess = db.saveData(data: message)
        
        // Check the successful boolean val, if unsuccessful, show alert to user
        return wasSuccess
    }
}

var cv = ChatView()
print(cv.sendChat())
