//
//  ChosenColor.swift
//  myDiary
//
//  Created by Fatima Garashi on 19/09/2022.
//

import SwiftUI

struct ChosenColor: View {
    let text : String
    @State var color = Color.yellow
    var body: some View {
        ZStack{
            Image(systemName: "")
                .frame(width: 500, height: 1000)
                .background(color)
                .opacity(0.5)
            
            Text(text)
                .font(.largeTitle)
           
        }
            
         
    }
}

struct ChosenColor_Previews: PreviewProvider {
    static var previews: some View {
        ChosenColor(text: "hello")
    }
}
