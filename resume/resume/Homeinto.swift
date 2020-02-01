//
//  Homeinto.swift
//  resume
//
//  Created by รวิภาส สมูลดี on 1/2/2563 BE.
//  Copyright © 2563 รวิภาส สมูลดี. All rights reserved.
//

import SwiftUI

struct Homeinto: View {
    var body: some View {
        VStack  {
            Text("Home")
                 .font(.title)
                 .font(.system(size: 20, weight: .medium))
                 .fontWeight(.heavy)
                 .padding(20)
            
                 //.offset(x: 60)
        VStack {
                    Image("hero2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
                  }
            Spacer()
        VStack{
                Text("Hello :3")
                    .foregroundColor(Color(.systemGray))
            }
            
            
        }
    }
}

struct Homeinto_Previews: PreviewProvider {
    static var previews: some View {
        Homeinto()
    }
}
