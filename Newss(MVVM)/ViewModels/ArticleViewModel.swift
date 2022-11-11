//
//  ArticleViewModel.swift
//  Newss(MVVM)
//
//  Created by SeonHo Cha on 2022/11/11.
//

import Foundation


struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    //???
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
        
    }
}

///////////////////////////////////////////////

struct ArticleViewModel { // 단 하나의 기사만 해당하는 struct
    private let article: Article
}
//Model을 ViewModel로 넣기
extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String? {
        return self.article.title
    }
    var description: String? {
        return self.article.description
    }
}
