//
//  Message.swift
//  Flash Chat
//
//  This is the model class that represents the blueprint for a message

class Message {
    
    //TODO: Messages need a messageBody and a sender variable
    init(sender : String, messageBody : String) {
        self.sender = sender
        self.messageBody = messageBody
    }
    let sender : String
    let messageBody : String
    
}
