//
//  MovieModel.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 17/2/2024.
//

import Foundation

struct FilmsApi:Decodable{
   var count:Int
   var films:[Film]
}
struct Film:Decodable{
   var title:String
   var producer:String
   var release_date:String
   var director:String
   var opening_crawl:String
       
   
}
struct MovieResponse : Decodable {
    let results : [Film]
}
