//
//  ViewController+WS.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 17/2/2024.
//

import Foundation

extension ViewController {
    // TODO fetch data
    func fetchingAPIData()    {
        
        guard let url = URL(string : "https://swapi.dev/api/films") else{
            print("error 1")
            return
        }
        URLSession.shared.dataTask(with: url) { (data , response , error) in
            guard let data = data , error == nil else{
                print("error 2")
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(MovieResponse.self,from:data)
                print(decodedResponse.results)
                DispatchQueue.main.async {
                    self.movies = decodedResponse.results
                    self.movieTableView.reloadData()
                    self.movieCount.text = "\(self.movies.count)"
                        //                    self.displayNumberOfMovies(count: decodedResponse.results.count)
                }

            }catch{
                print("Decoding error : \(error)")
            }
            
            
        }.resume()
        
    }
}
