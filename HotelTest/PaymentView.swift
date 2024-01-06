//
//  PaymentView.swift
//  HotelTest
//
//  Created by Роман on 24.12.2023.
//

import SwiftUI

struct PaymentView: View {

    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20) {
                
                ZStack {
                    Circle()
                        .frame(width: 94, height: 94)
                        .foregroundStyle(Color.gray.opacity(0.15))
                    Image("patypoper")
                        .resizable()
                    .frame(width: 55, height: 55)
                }
                Text("Ваш заказ принят в работу")
                    .font(.title2)
                Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                
            }.padding()
            Spacer()
 
            NavigationLink {
                HotelView()
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 343, height: 48, alignment: .center)
                    
                    Text("Супер!")
                        .foregroundStyle(.white)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Заказ оплачен")
                }
            }
            
        }
    }
}

#Preview {
    PaymentView()
}
