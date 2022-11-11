//
//  Article.swift
//  Newss(MVVM)
//
//  Created by SeonHo Cha on 2022/11/11.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
