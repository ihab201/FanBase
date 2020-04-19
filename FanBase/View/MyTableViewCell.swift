//
//  MyTableViewCell.swift
//  FanBase
//
//  Created by bennoui ihab on 4/19/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell,UICollectionViewDelegate , UICollectionViewDataSource
{
    @IBOutlet weak var CollectionView: UICollectionView!
    
    private(set) public var actors = [ActorsInfo]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func initActors(Model : Model){
        actors = dataService.instance.getActors(forModelTitle: Model.title)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
          super.setSelected(selected, animated: animated)

          // Configure the view for the selected state
      }
    
    //MARK : CollectionView Protocols
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return actors.count
         }
         
         func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          if let cellActor = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
              let actor = actors[indexPath.row]
              cellActor.updateView(actors: actor)
              print("actor: " + actor.Name)
              return cellActor
          }else {
              return CollectionViewCell()
          }
         }
      
}
