//
//  ViewController+DataSource.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 17/2/2024.
//

import UIKit


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.filmName.text = movies[indexPath.row].title
        cell.producerName.text = movies[indexPath.row].producer
        cell.releaseDate.text = movies[indexPath.row].release_date
        cell.directorName.text = movies[indexPath.row].director
        cell.Description.text = movies[indexPath.row].opening_crawl
        return cell
    }

}
