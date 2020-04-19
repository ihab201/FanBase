//
//  DataService.swift
//  FanBase
//
//  Created by bennoui ihab on 4/19/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import Foundation

class dataService {
    static let instance = dataService()
    
    private let models = [
        Model(title: "Riverdale"),
        Model(title: "Dead poll"),
        Model(title: "the Fantasy island"),
    ]
    private let RiverdaleActors = [
        ActorsInfo(Name: "Cole Sprouse", ImageName: #imageLiteral(resourceName: "image1") ),
        ActorsInfo(Name: "Lili reinhart", ImageName: #imageLiteral(resourceName: "image2")),
        ActorsInfo(Name: "Madelain petsch", ImageName: #imageLiteral(resourceName: "image3")),
        ActorsInfo(Name: "KJ Apa", ImageName: #imageLiteral(resourceName: "image4")),
        ActorsInfo(Name: "Camilla Mendas", ImageName: #imageLiteral(resourceName: "image5")),
        ActorsInfo(Name: "Fred Androus", ImageName: #imageLiteral(resourceName: "image6"))
    ]
    
    private let DeadPollActors = [ActorsInfo]()
    private let IslandActors = [ActorsInfo]()
    
    func getModels () -> [Model] {
        return models
    }
    
    func getActors (forModelTitle Title : String) -> [ActorsInfo]{
        switch Title {
            
        case "Riverdale":
            return RActors()
        case "Dead poll" :
            return DActors()
        case "the Fantasy island" :
            return IActors()
        default:
            return RActors()
        }
    }
    func RActors () -> [ActorsInfo]{
        return RiverdaleActors
    }
    func DActors() ->[ActorsInfo] {
        return DeadPollActors
    }
    func IActors () -> [ActorsInfo] {
        return IslandActors
    }
    
}
