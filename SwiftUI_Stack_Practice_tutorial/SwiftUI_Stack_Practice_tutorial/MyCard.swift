//
//  MyCard.swift
//  SwiftUI_Stack_Practice_tutorial
//
//  Created by 강경 on 2021/10/06.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading) {
                Divider()
                    .opacity(0)
                
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                Text("\(start) ~ \(end)")
                    .foregroundColor(Color.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "1PM", end: "3PM", bgColor: Color.green)
    }
}

