//
//  Webservice.swift
//  HaberProjesi
//
//  Created by SahilMehdiyev on 31.01.2023.
//

import Foundation

class Webservice{
    func haberleriIndir(url: URL,comletion: @escaping ([News]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                comletion(nil)
            }else if let data = data{
                let haberlerDizisi =  try? JSONDecoder().decode([News].self,from: data)
                
                if let haberlerDizisi = haberlerDizisi{
                    comletion(haberlerDizisi)
                }
                
            }
            
            
        }.resume()
        
    }
}
