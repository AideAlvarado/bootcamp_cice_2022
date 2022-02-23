//
//  ContentView.swift
//  CiceTmdbApp
//
//  Created by Aide Alvarado on 23/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MoviesView(viewModel: MoviesViewModel())
        }
    }
}




/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
