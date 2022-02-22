//
//  CustomAlertView.swift
//  FashionApp
//
//  Created by Aide Alvarado on 22/2/22.
//

import SwiftUI

struct CustomAlertView: View {
    
    var title: String
    var message: String
    //@binding es para pasar datos de una vista a otra
    @Binding var hideCustomAlertView: Bool
    
    var body: some View {
        ZStack{
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                HStack {
                    Spacer()
                    Text(title)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Button {
                        // aqui va la accion del binding
                        self.hideCustomAlertView.toggle()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
                Divider()
                Text(message)
                    .font(.custom("Arial", size: 16))
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width * 0.90)
            .background(Color.white)
            foregroundColor(.black)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
}


/*
struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView(title: "aqui Aide",
                        message: "aprendiendo a crear una alerta personalizada",
                        hideCustomAlertView: .constant(true))
    }
} */
