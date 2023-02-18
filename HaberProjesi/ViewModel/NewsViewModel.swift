//
//  NewsViewModel.swift
//  HaberProjesi
//
//  Created by SahilMehdiyev on 31.01.2023.
//

import Foundation

struct NewsTableViewModel{
    let newList: [News]
    
    func numberOfRowsSection() -> Int{
        return self.newList.count
    }
    func newsAtIndexPath(_ index: Int) -> NewsViewModel{
        let news = self.newList[index]
        return NewsViewModel(news: news)
    }
    
}

extension String{
    
}

struct NewsViewModel{
    let news : News
    
    var title: String{
        return self.news.title
    }
    var story: String {
        return self.news.story
    }
    
}
