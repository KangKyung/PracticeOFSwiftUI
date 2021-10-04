//
//  ContentView.swift
//  SwiftUI_Image_tutorial
//
//  Created by 강경 on 2021/10/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -800)
                
                CircleImageView()
                
                HStack {
                    NavigationLink(destination: MyWebView(url: "https://github.com/KangKyung")
                                    .edgesIgnoringSafeArea(.all)
                    ) {
                        Text("GitHub")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(url: "https://bekangkyung.tistory.com")
                                    .edgesIgnoringSafeArea(.all)
                    ) {
                        Text("Blog")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
