//
//  MyList.swift
//  SwiftUI_Stack_Practice_tutorial
//
//  Created by 강경 on 2021/10/06.
//

import SwiftUI

struct MyList: View {
    
    // separator 없애기..
    init() {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("test: \($0)")
//            }
//        }
        List {
            Section(
                header:
                    Text("오늘 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,footer: Text("footer")
            ) {
                ForEach(1...3, id: \.self) { itemIndex in
                    MyBasicCard()
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
            ) {
                ForEach(1...2, id: \.self) { itemIndex in
                    MyBasicCard()
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
//        .listStyle(GroupedListStyle())
        .listStyle(PlainListStyle())
        .navigationBarTitle("내 목록")
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
