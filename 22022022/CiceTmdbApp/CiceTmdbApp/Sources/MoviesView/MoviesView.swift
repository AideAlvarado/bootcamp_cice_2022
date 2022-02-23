//
//  MoviesView.swift
//  CiceTmdbApp
//
//    Created by Aide Alvarado on 23/2/22.
//

import SwiftUI

struct MoviesView: View {
    
    @ObservedObject var viewModel: MoviesViewModel
    
    var body: some View {
        VStack{
            Text("2")
        }
        .onAppear {
            self.viewModel.fetchData()
        }
    }
        
}

/*struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(viewModel: MoviesViewModel())
    }
}*/
