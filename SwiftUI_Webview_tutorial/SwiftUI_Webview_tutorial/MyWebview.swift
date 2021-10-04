//
//  MyWebview.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 강경 on 2021/10/04.
//

// 인터넷 허용 설정
// Project → Targets → Info → Custom iOS Target Properties == info.plist
// App Transport Security Settings → Allow Arbitrary Loads → YES

import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
