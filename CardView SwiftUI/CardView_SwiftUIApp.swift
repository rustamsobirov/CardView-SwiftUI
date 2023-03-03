//
//  CardView_SwiftUIApp.swift
//  CardView SwiftUI
//
//  Created by Sobirov on 03/03/23.
//

import SwiftUI

@main
struct CardView_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ScrollView{
                ForEach(0 ..< 5){item in
                    PersonCardView(person: users[0])
                }
            }
            
        }
    }
}
