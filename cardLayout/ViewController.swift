//
//  ViewController.swift
//  cardLayout
//
//  Created by Anthony Ruiz on 3/24/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
   let locationName = ["Hawaii Resort", "Mountain Expedition", "Scuba Diving"]
   let locationImage = [UIImage(named:"hawaii"), UIImage(named:"mountain"), UIImage(named:"scuba")]
   let locationDescription = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit."]

   override func viewDidLoad() {
      super.viewDidLoad()
     
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
      return locationName.count
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
      cell.locationName.text = locationName[indexPath.row]
      cell.locationImage.image = locationImage[indexPath.row]
      cell.locationDescription.text = locationDescription[indexPath.row]
      
      //This creates the shadows and modifies the cards a little bit
      cell.contentView.layer.cornerRadius = 4.0
      cell.contentView.layer.borderWidth = 1.0
      cell.contentView.layer.borderColor = UIColor.clear.cgColor
      cell.contentView.layer.masksToBounds = false
      cell.layer.shadowColor = UIColor.gray.cgColor
      cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
      cell.layer.shadowRadius = 4.0
      cell.layer.shadowOpacity = 1.0
      cell.layer.masksToBounds = false
      cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
      return cell
   }


}

