//
//  BookingView.swift
//  HotelTest
//
//  Created by Роман on 22.12.2023.
//

import SwiftUI

struct BookingView: View {
    @State private var number = ""
    @State private var email = ""
    @State private var name = ""
    var body: some View {
        ScrollView {
            
            VStack( spacing: 10){
                Group {
                    VStack(alignment: .leading, spacing: 10) {
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
                    }
                    .padding(10)
                        .background {
                            Color.white.cornerRadius(15)
                        }
                        .background {
                            Color.white.cornerRadius(15)
                        }
                }
                
                Group {
                    HStack{
                            VStack(alignment: .leading, spacing: 10){
                                Text("Вылет из").padding(.top)
                                Text("Страна, город")
                                Text("Даты")
                                Text("Кол-во ночей")
                                Text("Отель")
                                Text("Номер")
                                Text("Питание").padding(.top, 20)
                            }
                            .padding(.trailing, 45)
                            .foregroundStyle(.gray)
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text("Санкт-Петербург").padding(.top)
                                Text("Египет, Хургада")
                                Text("19.09.2023 – 27.09.2023")
                                Text("7 ночей")
                                Text("Steigenberger Makadi")
                                Text("Стандартный с видом на бассейн или сад")
                                Text("Все включено")
                            }
                        }
                        
                        .padding(10)
                            .background {
                                Color.white.cornerRadius(15)
                            }
                            .background {
                                Color.white.cornerRadius(15)
                        }
                }
                
                Spacer()
                Group {
                    VStack(alignment: .leading){
                        Text("Информация о покупателе")
                            .font(.title2)
                        CustomTextFieldUIView(text: $number, placeHolder: "Номер телефона")
                        CustomTextFieldUIView(text: $email, placeHolder: "Почта")
                        Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                            .foregroundStyle(.gray)
                            .font(.system(size: 16))
                    }
                    .padding(10)
                    .background {
                        Color.white.cornerRadius(15)
                    }
                    
                }
                Group {
                    VStack {
                        HStack {
                            Text("Первый турист").font(.title2)
                            Spacer()
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundStyle(Color.blue.opacity(0.1))
                                .frame(width: 32, height: 32)
                                Image(systemName: "chevron.up").foregroundStyle(.blue)
                            }
                        }
                        CustomTextFieldUIView(text: $name, placeHolder: "Имя")
                        CustomTextFieldUIView(text: $name, placeHolder: "Фамилия")
                        CustomTextFieldUIView(text: $name, placeHolder: "Дата рождения")
                        CustomTextFieldUIView(text: $name, placeHolder: "Гражданство")
                        CustomTextFieldUIView(text: $name, placeHolder: "Срок действия загранпаспорта")
                    }
                    .padding(10)
                    .background {
                        Color.white.cornerRadius(15)
                    }
                }
                Group {
                    HStack {
                        Text("Второй турист").font(.title2)
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundStyle(Color.blue.opacity(0.1))
                                .frame(width: 32, height: 32)
                            Image(systemName: "chevron.down").foregroundStyle(.blue)
                        }
                    }.padding(10)
                        .background {
                            Color.white.cornerRadius(15)
                        }
                }
                Group {
                    HStack {
                        Text("Добавить туриста").font(.title2)
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundStyle(Color.blue)
                                .frame(width: 32, height: 32)
                            Image(systemName: "plus").foregroundStyle(.white)
                        }
                    }.padding(10)
                        .background {
                            Color.white.cornerRadius(15)
                        }
                }
                Group {
                    HStack{
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Тур")
                            Text("Топливный сбор")
                            Text("Сервисный сбор")
                            Text("К оплате")
                        }.foregroundStyle(.gray)
                        Spacer()
                        VStack(alignment: .trailing, spacing: 10) {
                            Text("186 600 ₽")
                            Text("9 300 ₽")
                            Text("2 136 ₽")
                            Text("198 036 ₽").foregroundStyle(.blue)
                        }
                    }.padding(10)
                        .background {
                            Color.white.cornerRadius(15)
                        }
                    HStack{
                        NavigationLink {
                            PaymentView()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 343, height: 48, alignment: .center)
                                
                                Text("Оплатить 198 036 ₽")
                                    .foregroundStyle(.white)
                            }
                        }
                    }.frame(maxWidth: .infinity)
                        .padding(10)
                        .background {
                            Color.white.cornerRadius(15)
                        }
                }
            }.padding()
        }.background {
            Color.gray.opacity(0.1)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Бронирование")
            }
        }
    }
}

#Preview {
    BookingView()
}

struct CustomTextFieldUIView: View {
    @Binding var text: String
    @State var placeHolder = "Name"
    @State private var isTapped = false
    @State var isSecuriti:Bool = false
    
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 4) {
                if !isSecuriti{
                    TextField("", text: $text) { (status) in
                        if status{
                            withAnimation(.easeIn) {
                                isTapped = true
                            }
                        }
                    } onCommit: {
                        if text == "" {
                            withAnimation(.easeOut) {
                                isTapped = false
                            }
                        }
                    }
                    
                    .padding(.top, isTapped ? 15 : 0)
                    .background(alignment: .leading) {
                        Text(placeHolder)
                            .scaleEffect(isTapped ? 0.8 : 1)
                            .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                            .foregroundStyle(.gray)
                    }
                  
                }
                else {
                    SecureField("", text: $text) {
                        if text == "" {
                            withAnimation(.easeOut) {
                                isTapped = false
                              
                            }
                        }
                       
                    }
                    .onTapGesture {
                        withAnimation(.easeIn) {
                            isTapped = true
                        }
                    }
                    .padding(.top, isTapped ? 15 : 0)
                    .background(alignment: .leading) {
                        Text(placeHolder)
                            .scaleEffect(isTapped ? 0.8 : 1)
                            .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                    }
                    
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(.gray.opacity(0.13))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
