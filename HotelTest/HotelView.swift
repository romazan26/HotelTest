//
//  ContentView.swift
//  HotelTest
//
//  Created by Роман on 18.12.2023.
//

import SwiftUI

struct HotelView: View {
    
    let hotelImage: [String] = ["Hotel1", "Hotel2", "Hotel3"]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    Group {
                        TabView {
                            ForEach(0..<3) {i in
                                Image(hotelImage[i])
                                    .resizable()
                                    .cornerRadius(15)
                            }
                        }.tabViewStyle(PageTabViewStyle())
                            .frame(width: 343, height: 257)
                        VStack(alignment: .leading, spacing: 7) {
                            HStack{
                                Image(systemName: "star.fill")
                                Text("5 Превосходно")
                                
                            }
                            .padding(8)
                            .background(Color("ColorText2"))
                            .foregroundStyle(Color("ColorText"))
                            .cornerRadius(15)
                            .frame(width: 374)
                            .offset(x: -105)
                            
                            Text("Steigenberger Makadi")
                                .font(.system(size: 22))
                            
                            Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                                .font(.system(size: 14))
                                .foregroundStyle(.blue)
                            
                            HStack{
                                Text("от 134 673 ₽")
                                    .font(.system(size: 30, design: .rounded))
                                Text("за тур с перелётом")
                                    .font(.system(size: 16))
                                    .offset(y: 5)
                            }
                        }
                        
                    }
                    Spacer()
                    Group {
                        VStack(alignment: .leading) {
                        Text("Об отеле")
                            .font(.system(size: 22))
                            .bold()
                        HStack{
                            Text("3-я линия")
                                .padding(7)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(15)
                            Text("Платный WI-FI в фойе")
                                .padding(7)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(15)
                        }.opacity(0.6)
                        HStack{
                            Text("30 км до аэропорта")
                                .padding(7)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(15)
                            Text("1 км до пляжа")
                                .padding(7)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(15)
                        }.opacity(0.6)
                            
                        Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
                            
                        GroupBox{
                            HStack{
                                Image("Happy")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                VStack(alignment: .leading){
                                    Text("Удобства")
                                    Text("Самое необходимое").opacity(0.6)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                               
                            }
                            Divider()
                            
                            HStack{
                                Image(systemName: "checkmark.square")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                VStack(alignment: .leading){
                                    Text("Что включено")
                                    Text("Самое необходимое").opacity(0.6)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            Divider()
                            
                            HStack{
                                Image(systemName: "xmark.square")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                VStack(alignment: .leading){
                                    Text("Что не включено")
                                    Text("Самое необходимое").opacity(0.6)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                          
                        }
                        
                        }
                }
                    
                    NavigationLink {
                        RoomView()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 343, height: 48, alignment: .center)
                            
                            Text("К выбору номера")
                                .foregroundStyle(.white)
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Отель")
                    }
                }
            }.padding()
        }
        
    }
}

#Preview {
    HotelView()
}
