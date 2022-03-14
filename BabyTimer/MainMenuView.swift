//
//  SwiftUIView.swift
//  BabyTimer
//
//  Created by Михаил Зверьков on 13.03.2022.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        startTimer()
                    } label: {
                        Text("Кормление")
                    }
                    .buttonStyle(.borderedProminent)
                    Button {
                        startTimer()
                    } label: {
                        Text("Сон")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
    private func startTimer () -> Void {
        
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
