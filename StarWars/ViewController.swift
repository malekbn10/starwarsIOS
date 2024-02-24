//
//  ViewController.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 3/2/2024.
//

import UIKit

class ViewController: UIViewController{

    
    
    @IBOutlet weak var movieCount: UILabel!
    
    @IBOutlet weak var movieTableView: UITableView!
    var movies = [Film]()
    	
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchingAPIData()
/*        fetchingAPIData(URL: "https://swapi.dev/api/films"){result in
                print(result)
        }*/
        
    }
    func displayNumberOfMovies(count : Int){
        DispatchQueue.main.async {
            self.movieCount.text = "\(count)"
        }
    }
}






    
/*
    
  */
/*
    var filmsData=[Film]()
    override func viewDidLoad() {
        super.viewDidLoad()
        ParsingJson{data in
            self.filmsData = data}
    }

    func ParsingJson(completion : @escaping ([Film])-> Int{
        let urlstring = "https://swapi.dev/api/films/1/"
        let url = URL(string:urlstring)
        guard url != nil else{
            print("error")
            return
        }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!){ data , response ,error in
            if error == nil , data != nil {
                let decoder = JSONDecoder()
                do{
                    let parsingData = try decoder.decode(FilmsApi.self, from: data!)
                    print(parsingData)
                    completion(parsingData.films)
                }catch{
                    print("parsing error")
                }
            }
        }
    }
}
*/
