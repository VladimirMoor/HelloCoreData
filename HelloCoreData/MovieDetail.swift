//
//  MovieDetail.swift
//  HelloCoreData
//
//  Created by Vladimir on 02.08.2021.
//

import SwiftUI

struct MovieDetail: View {
    
    let movie: Movie
    @State private var movieName = ""
    let coreDM: CoreDataManager
    
    var body: some View {
        TextField(movie.title ?? "", text: $movieName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        Button("Update") {
            if !movieName.isEmpty {
                movie.title = movieName
                coreDM.updateMovie()
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie()
        let coreDM = CoreDataManager()
        MovieDetail(movie: movie, coreDM: coreDM)
    }
}
