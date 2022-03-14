//
//  IntervalView.swift
//  BabyTimer
//
//  Created by Михаил Зверьков on 14.03.2022.
//

import SwiftUI
import Foundation

struct IntervalView: View {
    let interval: Interval
    
    
    let formatDate = DateFormatter()
 //   formatDate.locale = Locale(identifier: "en_US_POSIX")
//    formatDate.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    
    
    
    
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            HStack {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.white)
                VStack {
                    Text("Начало: \(formatDate.string(from: interval.start))")
                    Text("Конец:\(interval.end)")
                }.foregroundColor(.white)
                VStack {
                    
                }
            }
        }
    }
}

struct IntervalView_Previews: PreviewProvider {
    static var previews: some View {
        IntervalView(interval: Interval.getInterval())
    }
}
