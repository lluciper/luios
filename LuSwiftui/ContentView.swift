//
//  ContentView.swift
//  LuSwiftui
//
//  Created by VN Savis on 30/11/2023.
//

import SwiftUI
import Firebase


struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @State private var texts: String = "aaaa"
    
    var body: some View {
        VStack {
            textFieldConfig(hint: "username", text: $username)
            Spacer().frame(height: 16)
            textFieldConfig(hint: "password", text: $password)
           
            TextStyleConfig.styleH1(texts)
            
            Button("nhan nhan") {
                texts = "\(username): \(password)"
            }
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    private func textFieldConfig(hint: String, text: Binding<String>) -> some View {
        return TextField(hint, text: text).padding(EdgeInsets.init(top: 10, leading: 20, bottom: 10, trailing: 20)).overlay(RoundedRectangle(cornerRadius: 14)
            .stroke(ColorConfig.red05, lineWidth: 1))
    }
    
}
