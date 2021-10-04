//
//  MyTextView.swift
//  SwiftUI_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct MyTextView: View {
    
    @State private var index: Int = 0
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("배경 아이템 인덱스: \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom, 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            withAnimation {
                if self.index == self.backgroundColors.count - 1 {
                    self.index = 0
                } else {
                    self.index += 1
                }
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
