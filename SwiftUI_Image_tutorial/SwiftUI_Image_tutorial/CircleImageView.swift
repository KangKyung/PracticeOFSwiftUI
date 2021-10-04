//
//  CircleImageView.swift
//  SwiftUI_Image_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct CircleImageView: View {
    
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .shadow(color: .gray, radius: 2, x: 10, y: 10)
        Image("myImage")
            .resizable()
            .scaledToFill() // == .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .red, radius: 10, x: 10, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.2)
            )
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 2)
//                    .padding()
            )
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
            .overlay(
                Text("Commde")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
