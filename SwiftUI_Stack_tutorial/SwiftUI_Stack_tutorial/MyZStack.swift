//
//  MyZStack.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct MyZStack: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.red)
//                .offset(y: -40)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.yellow)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green)
                .zIndex(10)
        }
    }
}

struct MyZStack_Previews: PreviewProvider {
    static var previews: some View {
        MyZStack()
    }
}
