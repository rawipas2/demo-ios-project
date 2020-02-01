//
//  ContentView.swift
//  resume
//
//  Created by รวิภาส สมูลดี on 30/1/2563 BE.
//  Copyright © 2563 รวิภาส สมูลดี. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showmenu    = false
    @State var showhome    = false
    @State var aboutmenu   = false
    @State var skillmenu   = false
    @State var contactmenu = false
    
    var menulist = "null"
    var body: some View {
        ZStack(alignment: .topLeading){
            ZStack{
            Button(action:{ self.showmenu.toggle()}) {
                           Image(systemName: "list.dash")
                            .foregroundColor(Color.black)
                            .padding(.leading)
                       }
                
            }
            .frame(width: 100, height:60)
            .background(Color(.systemGray6))
            .cornerRadius(30)
            .shadow(radius: 3)
            .offset(x: -40)
            .padding()
            .blur(radius: showmenu ? 20 : 0)
            .animation(.default)
           
        VStack{
           
            HStack{
                ForEach(menuData){ items in
                    if items.title == "Home"{
                        Button(action: { self.showhome = false
                                         self.showmenu = false
                                         self.aboutmenu = false
                                        
                        } ) {
                            iconmenubar(icons: items.icon, title: items.title)
                        }
                    }
                    else if items.title == "About"{
                    Button(action: { self.aboutmenu = true
                                     self.showmenu  = false
                    } ) {
                        iconmenubar(icons: items.icon, title: items.title)
                        }
                    }
                }
            }
                .frame(maxWidth: .infinity)
                .frame(minWidth: 0)
                .frame(height: 70)
                .background(Color.yellow)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding()
                .offset(y : showmenu ? 0: -UIScreen.main.bounds.width)
                .animation(.default)
//                .onTapGesture {
//                self.showmenu.toggle()
//                self.aboutmenu.toggle()
//            }
            
            
            
        ZStack {
                Homeinto()
                .blur(radius: showmenu ? 20 : 0)
                .offset(x: aboutmenu ? UIScreen.main.bounds.width:0)
                .offset(x: showhome ? UIScreen.main.bounds.width:0)
                .animation(.default)
           
          
                Viewinto()
                .blur(radius: showmenu ? 20 : 0)
                .offset(x: aboutmenu ? 0: UIScreen.main.bounds.width)
                .animation(.default)
               
            }
           
            Spacer()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//



let menuData = [
    Menu(icon: "house" , title: "Home" ),
    Menu(icon: "person.crop.square" , title: "About" ),

    
]

//
struct Menu : Identifiable{
    var id = UUID()
    var icon : String
    var title: String
   // var link : String
}

// ------ icon compornent ------
struct iconmenubar: View {
    var icons :String
    var title :String
//    var link : String
    var body: some View {
        VStack {
            VStack{
                 Image(systemName: icons)
                    .foregroundColor(Color.black)
                Text(title)
                   .font(.caption)
                   .foregroundColor(Color.black)
                }
        .padding(1)
            .frame(width: 40, height: 40)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            }
    }
}
