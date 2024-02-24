//
//  ViewController+Delegate.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 17/2/2024.
//

import UIKit


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked cell============")
    }
}
