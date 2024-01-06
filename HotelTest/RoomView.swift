//
//  RoomView.swift
//  HotelTest
//
//  Created by Роман on 22.12.2023.
//

import SwiftUI

struct RoomView: View {
    private let roomImage: [String] = ["Room1", "Room2", "Room3"]
    private let room2Image: [String] = ["Room4", "Room5", "Room6"]
    var body: some View {
        ScrollView {
            VStack {
                TabView {
                    ForEach (0..<3){ i in
                        Image(roomImage[i])
                            .resizable()
                            .cornerRadius(15)
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .frame(width: 343, height: 257)
                
                VStack(alignment: .leading) {
                    Text("Стандартный с видом на бассейн или сад")
                        .font(.system(size: 22))
                    HStack{
                        Text("Все вклчено")
                            .padding(7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                        Text("Кондиционер")
                            .padding(7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                    }.opacity(0.6)
                    HStack {
                        Text("Подробнее о номере")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.blue)
                    .padding(6)
                    .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                    
                    HStack{
                        Text("186 600 ₽")
                            .font(.system(size: 30, design: .rounded))
                        Text("за 7 ночей с перелётом")
                            .font(.system(size: 16))
                            .offset(y: 5)
                            .opacity(0.5)
                    }
                    
                }
                
                NavigationLink {
                    BookingView()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.blue)
                            .frame(width: 343, height: 48, alignment: .center)
                        
                        Text("Выбрать номер")
                            .foregroundStyle(.white)
                    }
                }
            }
            Divider().frame(height: 50)
            VStack {
                TabView {
                    ForEach (0..<3){ i in
                        Image(room2Image[i])
                            .resizable()
                            .cornerRadius(15)
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .frame(width: 343, height: 257)
                
                VStack(alignment: .leading) {
                    Text("Люкс с видом на море ")
                        .font(.system(size: 22))
                    HStack{
                        Text("Все вклчено")
                            .padding(7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                        Text("Кондиционер")
                            .padding(7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                    }.opacity(0.6)
                    HStack {
                        Text("Подробнее о номере")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.blue)
                    .padding(6)
                    .background(Color.blue.opacity(0.2))
                        .cornerRadius(5)
                    
                    HStack{
                        Text("230 600 ₽")
                            .font(.system(size: 30, design: .rounded))
                        Text("за 7 ночей с перелётом")
                            .font(.system(size: 16))
                            .offset(y: 5)
                            .opacity(0.5)
                    }
                    
                }
                
                NavigationLink {
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.blue)
                            .frame(width: 343, height: 48, alignment: .center)
                        
                        Text("Выбрать номер")
                            .foregroundStyle(.white)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Steigenberger Makadi")
                }
            }
                
            
        }
    }
}

#Preview {
    RoomView()
}
