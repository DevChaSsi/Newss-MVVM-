//
//  NewsListTableViewController.swift
//  Newss(MVVM)
//
//  Created by SeonHo Cha on 2022/11/08.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=0ffef978f0e7495d9bbfe0040f2aaf33")!
        
        Webservice().getArticles(url: url) { _ in
            
        }
    }
}
