//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice_tutorial
//
//  Created by 강경 on 2021/10/05.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("강경의 프로젝트1")
                .font(.system(size: 25))
                .fontWeight(.black)
            Text("10AM ~ 11AM")
                .foregroundColor(.secondary)
            
            Spacer()
                .frame(height: 20)
            HStack {
                Image("user1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(Color.blue)
                    )
                Image("user2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("user3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    print("click event!!")
                    
                    self.shouldShowAlert = true
                }) {
                    Text("확인")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("Alert!!"))
                }
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
