//  ContentView.swift
//  FashionApp
//
//  Created by Aide Alvarado on 19/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HeaderComponentes()
            Text("Holi Aidely!")
                .font(.title)
                
            Button {
                // aqui es en dnd se captura la accion del boton
            } label: {
                HStack{
                    Image(systemName: "play")
                    Text("play")
                }
            }
            .padding()
            .font(.title2)
            .foregroundColor(.black)
            .background(Color.yellow)
            .cornerRadius(10)
            .shadow(radius: 10)


        }
    }
}

struct RefactoringView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                HeaderComponentes()
                Image(systemName: "hand.thumbsup.fill")
                    .font(.system(size: 50))
                Image("captura1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.horizontal, .bottom], 20)
                    .shadow(color: Color.black.opacity(0.5),
                       radius: 20,
                       x: 5,
                       y: 5)
                    .overlay {
                        Text("hi guys")
                            .foregroundColor(.red)
                            .font(.title)
                            .fontWeight(.heavy)
                            .background(Color.gray)
                    }
                
            }
        }
    }
}

struct ShapesView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponentes()
            Text("se puede meter shaped para decorar las vistas")
                .foregroundColor(.orange)
                .padding(10)
                .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.black)
                )
                .padding(8)
            Text("se puede ajustar el fondo pero NO con un shape")
                .foregroundColor(.orange)
                .padding(10)
                .background(Color.black)
                .cornerRadius(20)
                .padding(8)
                .shadow(radius: 10)
        }
    }
}

struct VerticalStackView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                HeaderComponentes()
                
                VStack(
                    alignment: .leading, spacing: 10) {
                        Text ("VStack dentro de otra VStack")
                        Divider().background(Color.white) // Divider pinta una linea horizontal
                        Text ("Esta puede tener subvistas")
                        Divider()
                        Text ("hasta un max de 10")
                        Divider()
                        Image(systemName: "arrow.left")
                    }
                    .font(.title2)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                    )
                    .padding()
                
                VStack(
                    alignment: .trailing, spacing: 10) {
                        Text ("VStack dentro de otra VStack")
                        Divider().background(Color.white) // Divider pinta una linea horizontal
                        Text ("Esta puede tener subvistas")
                        Divider()
                        Text ("hasta un max de 10")
                        Divider()
                        Image(systemName: "arrow.right")
                    }
                    .font(.title2)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                    )
                    .padding()
                
                               
            }
       
        }
    }
}

struct HorizontalStackView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                HeaderComponentes()
                HStack(spacing: 20) {
                    Text("leading")
                    Text("middlw")
                    Text("trailing")
                }
                .padding()
                .border(Color.orange)
                                
                HStack {
                    Image (systemName: "1.circle").foregroundColor(.green)
                    Image (systemName: "2.circle").foregroundColor(.white)
                    Image (systemName: "3.circle").foregroundColor(.red)
                }
                .padding()
                .font(.largeTitle)
                
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 100){
                            Button(action: {}) {
                                Image(systemName: "a.circle.fill").foregroundColor(.red)
                            }
                            Image(systemName: "b.circle.fill").foregroundColor(.yellow)
                            Image(systemName: "c.circle.fill").foregroundColor(.black)
                            Image(systemName: "d.circle.fill").foregroundColor(.pink)
                            Image(systemName: "e.circle.fill").foregroundColor(.cyan)
                            Image(systemName: "f.circle.fill").foregroundColor(.purple)
                        }
                        .padding()
                    }
                }
                .font(.largeTitle)
                .background(Color.clear
                )
            }
            
        }
    }
}

struct AlignmentHStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderComponentes()
            
            HStack{
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 25)
                Text("leading")
                Spacer()
                Text("center")
                Spacer()
                Text("trailing")
                    .padding(.trailing, 5)
            }
            .border(Color.orange)
            
            HStack (alignment: .top){
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 25)
                Text("leading")
                    .padding(.top, 5)
                Spacer()
                Text("center")
                    .padding(.top, 5)
                Spacer()
                Text("trailing")
                    .padding([.trailing, .top], 5)
            }
            .border(Color.orange)
            
            HStack (alignment: .bottom){
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 25)
                Text("leading")
                    .padding(.bottom, 5)
                Spacer()
                Text("center")
                    .padding(.bottom, 5)
                Spacer()
                Text("trailing")
                    .padding([.trailing, .bottom], 5)
            }
            .border(Color.orange)
        }
    }
}

struct HStackPriorityView : View {
    
    var textViewAux: some View {
        Text(".layoutPriority(1) asigna hacia dnd va el equilibrio de la vista")
            .font(.largeTitle)
            .padding(.horizontal)
            .background(Color.orange)
    }
    
    var priorityHStack: some View {
        VStack{
            HStack{
                Text("SwiftUI")
                    .font(.title)
                    .lineLimit(1)
                Image("user1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("equilibrio de la vista")
                    .font(.title2)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
            
            
            HStack{
                Text("SwiftUI")
                    .font(.title)
                    .lineLimit(2)
                Image("user1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("equilibrio de la vista")
                    .font(.title2)
                    .lineLimit(2)
                    .layoutPriority(1)
            }
            .padding(.horizontal)
            
        }
    }
    
    @ViewBuilder
    func showNewText() -> some View {
        VStack {
            Text("Hala!")
        }
    }
    
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HeaderComponentes()
            textViewAux
            priorityHStack
            showNewText()
        }
    }
}

struct IntroZStackView: View {
    var body: some View {
        Group {
            ZStack (alignment: .topTrailing){
                
                VStack(spacing: 20) {
                    Spacer()
                    HeaderComponentes()
                    Spacer()
                   }
                Text("esto es un ZStack")
                    .padding(.trailing, 20)
                    .background(.indigo)
            }
            .frame(maxWidth: .infinity)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct BasicChangedCircle: View {
    // @state es una palabra reservada para cambiar el valor
  @State  private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.pink)
                .frame(width: 100, height: 100)
                .offset(x: self.change ? 120 : 0, y: self.change ? 300 : 0)
                .animation(.easeInOut, value: change)
            
            Spacer()
            
            Button("Change") {
                self.change.toggle()
            }
        }
    }
}

struct CurvesAnimationsView: View {
    
    @State private var move = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Animacion con curvas")
                .font(.largeTitle)
            
            Group{
                Text("1")
                GeometryReader{
                    proxy in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (proxy.size.width - 40) : 40, y: 40)
                        .animation(.easeInOut(duration: 2), value: self.move)
                }
                
                Text("2")
                GeometryReader{
                    proxy in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (proxy.size.width - 40) : 40, y: 40)
                        .animation(.linear(duration: 2), value: self.move)
                }
                
                Text("3")
                GeometryReader{
                    proxy in
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.orange)
                        .position(x: self.move ? (proxy.size.width - 40) : 40, y: 40)
                        .animation(.easeOut(duration: 2), value: self.move)
                }
            }
            Button("Change") {
                self.move.toggle()
            }
        }
        .font(.largeTitle)
        .padding(.bottom)
        
    }
}

struct CurvesAnimationsViewDos: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("esta es otra prueba").font(.largeTitle)
            Text("vamos a probar con más animaciones").font(.callout)
            Spacer()
            HStack{
                Spacer()
                Circle()
                    .foregroundColor(.indigo)
                    .frame(width: 100, height: 100)
                    .offset(x: self.change ? -250 : 0 , y: self.change ? -450 : 0)
                    .animation(.easeInOut, value: self.change)
            }
            Button("Change") {
                self.change.toggle()
            }
            
        }
        
    }
}

struct MenuAnimationView : View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 20) {
                Text("Menu Flotante").font(.title)
                Text("como les gusta a los androides").font(.callout)
                Spacer()
 
            }
            Group {
                Button {
                    <#code#>
                } label: {
                    Image(systemName: "bag.badge.plus")
                        .foregroundColor(.cyan)
                        .padding(24)
                        .rotationEffect(Angle.degrees(0))
                }
                .background(
                    Circle()
                        .fill(Color.green)
                        .shadow(color: Color.pink.opacity(0.3), radius: 10, x: 4, y: 4)
                
                )
                .offset(x: 0, y: 0)
                .opacity(1)

                
            }
        }
        
        
    }
    }
    




/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 Group {
        //ContentView()
        //RefactoringView
        //ShapesView
        //VerticalStackView
        //HorizontalStackView
        //AlignmentHStackView
        // HStackPriorityView().previewDevice("iPhone 12")
        //BasicChangedCircle.previewDevice("iPhone 12")
        //CurvesAnimationsView()
        //CurvesAnimationsViewDos()
            MenuAnimationView()
 }
 }
}*/

