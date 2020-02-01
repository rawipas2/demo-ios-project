//
//  Viewinto.swift
//  resume
//
//  Created by รวิภาส สมูลดี on 31/1/2563 BE.
//  Copyright © 2563 รวิภาส สมูลดี. All rights reserved.
//

import SwiftUI

struct Viewinto: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("About Me")
                .font(.title)
                .font(.system(size: 20, weight: .medium))
                .fontWeight(.heavy)
                .padding(20)
            
        ScrollView (.horizontal){
         HStack{
           ForEach (SectionData){ item in
            GeometryReader { geometry in
                menuView(title: item.title, text: item.text, color: item.color, image: item.image)
                    .rotation3DEffect(Angle(degrees:
                        Double(geometry.frame(in: .global).minX - 30)/20
                        )
                        , axis: (x: 0, y: 10.0, z: 0))
                    }
                 .frame(width: 275, height: 500)
                }
                 .padding(10)
            }
        .padding(10)
        }
        .shadow(radius: 30)
    }
}
}

struct Viewinto_Previews: PreviewProvider {
    static var previews: some View {
        Viewinto()
    }
}

struct Section: Identifiable{
    var id   = UUID()
    var title: String
    var text : String
    var image: Image
    var color: Color
}

let SectionData = [
    Section(title: "Let me introduce myself", text: "My name is Mr.Rawipas", image: Image("hero"), color:Color.yellow),
    Section(title: "My nickname is", text: "Tong", image: Image("hero1"), color: Color("yellowset")),
    Section(title: "I am studying", text: "Maejo University", image: Image("mortarboard"), color: Color.yellow),
    Section(title: "My major", text: "Computer Science", image:Image("laptop"), color: Color("yellowset"))
]


struct menuView: View {
    var title : String
    var text  : String
    var color : Color
    var image : Image
    var body: some View {
        VStack{
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Spacer()
            }
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(20)
        .frame(width: 275, height: 300)
        .background(color)
        .cornerRadius(30)
        
        Text(text)
            .foregroundColor(Color(.systemGray))
            .padding(.top, 40)
        }
    }
    
}
