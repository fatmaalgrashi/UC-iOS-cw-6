//
//  ContentView.swift
//  CW6
//
//  Created by Fatima Garashi on 18/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var student = StudentInfo(name: "سارة علي", year: 1, age: 18)
    @State var student2 = StudentInfo(name: "حمد حسين", year: 4, age: 23)
    @State var student3 = StudentInfo(name: "مريم علي", year: 2, age: 19)
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
                VStack(alignment: .trailing){
                    Text("الاسم : \(student.name)")
                    Text("السنة : \(student.year)")
                    Text("العمر : \(student.age)")
                }.frame(width: 500)
                
                VStack(alignment: .trailing){
                    Text("الاسم : \(student2.name)")
                    Text("السنة : \(student2.year)")
                    Text("العمر : \(student2.age)")
                }.frame(width: 500)
                
                VStack(alignment: .trailing){
                    Text("الاسم : \(student3.name)")
                    Text("السنة : \(student3.year)")
                    Text("العمر : \(student3.age)")
                }.frame(width: 500)

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StudentInformation: View{
    
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
struct StudentInfo{
    let name : String
    let year : Int
    let age : Int
}
