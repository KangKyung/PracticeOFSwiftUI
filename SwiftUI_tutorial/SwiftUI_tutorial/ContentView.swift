//
//  ContentView.swift
//  SwiftUI_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStcackView(isActivated: $isActivated)
                    MyVStcackView(isActivated: $isActivated)
                    MyVStcackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
