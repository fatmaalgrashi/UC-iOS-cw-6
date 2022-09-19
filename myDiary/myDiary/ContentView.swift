//
//  ContentView.swift
//  myDiary
//
//  Created by Fatima Garashi on 18/09/2022.
//

import SwiftUI

struct ContentView: View {
    let id = UUID()
    @State var text = ""
    let chooseColor = [Color.red , Color.yellow , Color.blue , Color.green]
    @State var selectedItem : Color
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Text("اختر لونك المفضل")
                    .font(.system(size: 25))
                    
                HStack{
                    
                    ForEach(chooseColor, id:\.self){color in
                        //                                Text(color)
                        //        NavigationLink(destination: ChosenColor(text: text, color: color)){
                        //                    Color(color)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(color)
                            .opacity(0.5)
                            .onTapGesture {
                                selectedItem = color
//                                selectedItem = color.firstIndex(where: { $0.hasPrefix(color) }) ?? 0
                            }
                        //                                }
                    }
                    
                    
                }
                
                Text("ماذا تريد أن تكتب؟")
                    .font(.system(size: 16))
                    .padding()
                TextField("اكتب هنا", text: $text)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(Color.white)
                    .cornerRadius(10)

                    .padding()
                   
                
                NavigationLink(destination: ChosenColor(text: text, color: selectedItem)){
                    Text("حفظ")
                        .frame(width: 100, height: 40)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding()
                    
                    //                        Button(action: {
                    //
                    //                        }){
                    //                           Text("حفظ")
                    //                                .frame(width: 100, height: 40)
                    //                                .background(Color.green)
                    //                                .cornerRadius(10)
                    //                                .foregroundColor(.white)
                    //                                .padding()
                    //                        }
                }
                .navigationTitle("دفتر اليوميات")
                
            }
            .frame(width: 500, height: 700)
            .background(Color(
                red: 0xE3 / 255,
                green: 0xE7 / 255,
                blue: 0xF1 / 255))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( selectedItem: .yellow)
    }
}
