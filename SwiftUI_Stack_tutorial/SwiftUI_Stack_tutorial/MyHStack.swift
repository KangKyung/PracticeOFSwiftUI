//
//  MyHStack.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct MyHStack: View {
    var body: some View {
        HStack(alignment: .center) {
//            Divider()
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHStack_Previews: PreviewProvider {
    static var previews: some View {
        MyHStack()
    }
}
