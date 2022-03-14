//
//  ContentView.swift
//  BabyTimer
//
//  Created by Михаил Зверьков on 13.03.2022.
//

import SwiftUI

struct ContentView: View {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "en_US")
    print(dateFormatter.string(from: date))
    
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
