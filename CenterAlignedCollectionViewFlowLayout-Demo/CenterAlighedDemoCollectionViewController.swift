//
//  CenterAlighedDemoCollectionViewController.swift
//  CenterAlignedCollectionViewFlowLayout
//
//  Created by Pitiphong Phongpattranont on 18/12/2558 BE.
//  Copyright © 2558 Pitiphong Phongpattranont. All rights reserved.
//

import UIKit
import CenterAlignedCollectionViewFlowLayout

private let reuseIdentifier = "Cell"

class CenterAlighedDemoCollectionViewController: UICollectionViewController {
  
  override func viewDidLoad() {
//     Usage example: using CenterAlignedCollectionViewFlowLayout via code
//    collectionView?.collectionViewLayout = CenterAlignedCollectionViewFlowLayout()
  }
  
  // MARK: UICollectionViewDataSource
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of items
    return 100
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! Cell
    
    cell.label.text = "\((indexPath as NSIndexPath).row + 1)"
    
    return cell
  }
  
}

extension CenterAlighedDemoCollectionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: CGFloat(arc4random_uniform(60)) + 60.0, height: 40.0)
  }
}


class Cell: UICollectionViewCell {
  @IBOutlet weak var label: UILabel!
}

