//
//  MyVStack.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct MyVStack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
//            Spacer()
//            Spacer()
            
            // 끝까지 정렬 시키기
            // 1. 이게 더 나은 방법인거 같음
//            Divider()
//                .opacity(0)
            // 2.
//            Rectangle()
//                .frame(height: 0)
            
            Text("test")
                .font(.system(size: 30))
                .fontWeight(.heavy)
//                .padding(.bottom, 100)
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.orange)
//                .padding(.vertical, 100)
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.yellow)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
        }
        .frame(width: 300)
        .background(Color.green)
        
    }
}

struct MyVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyVStack()
    }
}
