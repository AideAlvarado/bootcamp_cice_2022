//
//  CustomNavigationView.swift
//  FashionApp
//
//  Created by Aide Alvarado on 22/2/22.
//

import SwiftUI

struct CustomNavigationView: View {
    
    @State private var showAlert = false
    @State private var showAlertDos = false
    @Binding var showalertTres: Bool
    
    var body: some View {
        ZStack{
            Text("Season").font(.system(size: 20))
            
            HStack(spacing: 8) {
                Button {
                    // aqui se ejecuta la accion del boton
                    self.showAlert.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .alert(isPresented: self.$showAlert) {
                    Alert(title: Text("Hola spy una alerta en swiftUI"),
                          message: Text ("estamos aprendiendo como se hace una alerta en swiftUI"),
                          primaryButton: .default(Text("OK"),
                                                  action: {
                        // aqui se hace las acciones
                    }),
                          secondaryButton: .cancel(Text("Cancel"), action: {
                        // aqui se hacen las acciones
                    }))
                }
                
                Spacer()
                
                // alerta con Xcode13
                
                Button {
                    // aqui se ejecuta la accion del boton
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                .alert("esta es una segunda alerta en xcode13",
                       isPresented: self.$showAlertDos) {
                    Button("OK") {
                    // aqui va la accion
                    }
                }
                
                Button(role: .cancel) {
                    // aqui va la accion
                } label: {
                    Text("Cancel")
                }
                
                Button {
                    // aqui se ejecuta la accion del boton
                    self.showalertTres.toggle()
                } label: {
                    Image(systemName: "alarm")
                }
            }
            .padding(.horizontal, 8)
            .font(.callout)
            .foregroundColor(.pink)
        }
        .background(Color.white)
    }
}

/*struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView(showAlertTres: .constant(false))
    }
}*/
