//
//  ContentView.swift
//  CardView SwiftUI
//
//  Created by Sobirov on 03/03/23.
//

import SwiftUI

struct PersonCardView: View {
    var person: Person
    var body: some View {
        ZStack(alignment: .bottom){
            Image(person.headeerImage)
                .resizable()
                .scaledToFit()
            
            HStack(){
                Image(person.profileImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100,height: 80)
                
                
                VStack(alignment: .leading){
                    Text(person.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    
                    Text(person.jobTitle)
                        .foregroundColor(.white)
                    
                }
                
                Spacer()
                
                Text("Follow")
                    .padding(.vertical,4)
                    .padding(.horizontal)
                    .overlay(Capsule().stroke(lineWidth: 2))
                    .padding(.trailing)
                    .foregroundColor(.white)
                
            }.padding(.bottom,4)
        }
        .overlay(alignment: .topTrailing){
            Button{
                
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.white)
                    .padding(6)
            }
        }
        .cornerRadius(12)
        .padding()
        
    }
}

struct PersonCard_Previews: PreviewProvider {
    static var previews: some View {
        PersonCardView(person: users[0])
    }
}
