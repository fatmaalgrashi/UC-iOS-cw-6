//
//  ContentView.swift
//  CW6
//
//  Created by Fatima Garashi on 18/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Image("student-card")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 170)
                .padding()
            Text("سجل الطلبة")
                .bold()
                .font(.system(size: 28))
            Spacer()
            Spacer()

            List{
                StudentInfo(name: "سارة أحمد", year: 2, age: 19)
                StudentInfo(name: "مريم علي", year: 4, age: 23)
                StudentInfo(name: "حمد حسين", year: 1, age: 18)

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StudentInfo: View{
    
    let name : String
    let year : Int
    let age : Int
    
    var body: some View{
        VStack(alignment: .trailing){
            Text("الاسم : \(name)")
            Text("السنة : \(year)")
            Text("العمر : \(age)")
        }.frame(width: 500)
    }
    
}
