//
//  MyVStcackView.swift
//  SwiftUI_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct MyVStcackView: View {
    
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }

    var body: some View {
        VStack {
            Text("test")
                .fontWeight(.bold)
                .font(.system(size: 30))
            Text("test")
                .fontWeight(.bold)
                .font(.system(size: 30))
            Text("test")
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVStcackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStcackView()
    }
}
