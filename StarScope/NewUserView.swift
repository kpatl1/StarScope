//
//  NewUserView.swift
//  StarScope
//
//  Created by Kishan Patel on 1/22/23.
//

import SwiftUI



struct Response: Codable {
    let results: [astroResponse]
}

struct astroResponse: Codable{
    let description: String
    let current_date: String
}

struct NewUserView: View {
    @State private var name: String = ""
    @State private var sign: String = ""
    @State private var day: String = ""
    @State private var showingConfirmation = false
    @State private var confirmationMessage = ""
    
    
    
    
    var body: some View {
        VStack(spacing:15){
            List{
                Section("Add a new User") {
                    TextField("Enter name", text: $name)
                    TextField("Enter sign", text: $sign)
                    TextField("Enter 'today', 'tomorrow', or 'yesterday", text: $day)
                    Button("Add User"){
                        Task{
                            await makeRequest()
                        }
                    }
                }
            }
            
        }
        .alert("User Created", isPresented: $showingConfirmation){
            Button("Ok"){}
        } message: {
            Text(confirmationMessage)
        }
    }
    
    func makeRequest() async{
        
        let url = URL(string: "https://aztro.sameerkumar.website?sign=\(sign)&day=\(day)")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedRequest = try JSONDecoder().decode(Response.self, from: data)
            print(decodedRequest.results.description)
            confirmationMessage = "Description: \(decodedRequest.results.description)"
            showingConfirmation = true
        } catch{
            print("Request Failed")
        }
    }
    
    
}



struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserView()
    }
}
