//
//  ContentView.swift
//  UUIDDemo
//
//  Created by Steven Lipton on 9/27/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 12 (Q4 2020) video 10
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn about UUID and one handy place to use it.
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct Food:Identifiable{
    var id = UUID()
    var name:String
}

struct FavoriteFoods{
    static var list = [
        Food(name:"Pizza"),
        Food(name:"Pasta"),
        Food(name:"Bagels"),
        Food(name:"Doughnuts"),
        Food(name:"Pizza")
    ]
}

struct ListDataView:View{
    var foods = FavoriteFoods.list
    var body: some View{
        VStack{
            Text("My Favorite Foods")
            List(foods){item in
                Label(item.name, systemImage: "hand.thumbsup.fill")
            }
        }
    }
}

struct ListDataView_Previews: PreviewProvider {
    static var previews: some View {
        ListDataView()
    }
}
