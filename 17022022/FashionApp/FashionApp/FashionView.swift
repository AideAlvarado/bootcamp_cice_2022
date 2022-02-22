//
//  FashionView.swift
//  FashionApp
//
//  Created by Aide Alvarado on 22/2/22.
//

import SwiftUI
//esta es la vista padre
struct FashionView: View {
    //@state para definir variables que pueda modificar
    @State private var showCustomAlertView = false
    
    var body: some View {
        VStack{
            VStack {
                CustomNavigationView(showalertTres: self.$showCustomAlertView)
            CustomBodyMainView()
            }
            .blur(radius: self.showCustomAlertView ? 3: 0)
            .animation(.easeInOut, value: self.showCustomAlertView)
            
            if showCustomAlertView {
            CustomAlertView (title: "esta es una custom alert view",
            message: "esta es una alerta personalizada y se colocará encima de la vista principal y se añadirá un efecto de blur y el fondo medio opaco",
            hideCustomAlertView: self.$showCustomAlertView)
                   
            }
        }
    }
    
    
}

/*struct FashionView_Previews: PreviewProvider {
    static var previews: some View {
        FashionView()
    }
}*/
