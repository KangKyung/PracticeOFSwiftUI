//
//  MyBasicCard.swift
//  SwiftUI_Stack_Practice_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading) {
                Divider()
                    .opacity(0)
                
                Text("test")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                Text("test")
                    .foregroundColor(Color.white)
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
