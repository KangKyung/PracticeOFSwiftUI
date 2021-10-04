//
//  ContentView.swift
//  SwiftUI_Text_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
//        formatter.dateStyle = .long
        
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = true
    
    var number: Int = 123
    
    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ")
                .tracking(1) // 글자 사이의 간격
            
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(10) // multiline: nil
                .lineSpacing(10)
                .truncationMode(.head) // .middle, tail
                .shadow(color: Color.red, radius: 2, x: -10, y: 10)
            
                .padding(.all, 20)
                .background(Color.yellow)
            
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
            
            Text("test !!!!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜: \(today, formatter: ContentView.dateFormat)")
            
            Text("참 or 거짓: \(String(trueOrFalse))")
            
            Text("숫자: \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
