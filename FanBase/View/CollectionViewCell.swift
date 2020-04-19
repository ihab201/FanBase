//
//  CollectionViewCell.swift
//  FanBase
//
//  Created by bennoui ihab on 4/19/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ActorImage : UIImageView!
    @IBOutlet weak var ActorName : UILabel!
    
    func updateView(actors : ActorsInfo){
        ActorImage.image = actors.ImageName
        ActorName.text = actors.Name
        
    }
}
