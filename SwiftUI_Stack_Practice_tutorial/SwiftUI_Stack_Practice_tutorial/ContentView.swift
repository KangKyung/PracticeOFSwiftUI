//
//  ContentView.swift
//  SwiftUI_Stack_Practice_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding()
                
                Text("강경의 할 일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal)
                
                ScrollView {
                    VStack {
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }
                    .padding()
                }
            }
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                )
                .padding(.trailing, 10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
