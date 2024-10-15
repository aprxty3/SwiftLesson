//
//  ContentView.swift
//  SwiftLesson
//
//  Created by Dwi Aji Prasetyo on 14/10/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Handview()
                FormField()

            }

        }
    }
}

struct ContentView_previews : PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

struct Handview: View{
    var body: some View{
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color("primaryColor"))
                .padding()
                .background(Color("primaryColor"))
                .cornerRadius(20)
            
            Text("Hallo Kawan")
        }
        
       
    }
}


struct FormField: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            
            TextField("Username...", text: $username).textFieldStyle(RoundedBorderTextFieldStyle())
            
            
                Text("Password").font(.callout).bold()
                
            SecureField("Password...", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello Button")} ){
                HStack{
                    Text("SignIn")
                    Spacer()
                }
            }.padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(Color.white)
        }.padding(.all, 30)
            .background(Color.orange)
            .cornerRadius(10)
    }
}
