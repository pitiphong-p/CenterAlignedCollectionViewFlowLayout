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
    super.viewDidLoad()
    // Usage example: using CenterAlignedCollectionViewFlowLayout via code
    // collectionView?.collectionViewLayout = CenterAlignedCollectionViewFlowLayout()
    if #available(iOS 10.0, *) {
      (collectionView?.collectionViewLayout as! CenterAlignedCollectionViewFlowLayout).itemSize = UICollectionViewFlowLayoutAutomaticSize
      (collectionView?.collectionViewLayout as! CenterAlignedCollectionViewFlowLayout).estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
    } else {
      // Fallback on earlier versions
    }
  }
  
  // MARK: UICollectionViewDataSource
  
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 3
  }
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! Cell
    
    cell.label.text = String.init(repeating: "A", count: 5 * Int(arc4random_uniform(40)))
    
    return cell
  }
  
}

//extension CenterAlighedDemoCollectionViewController: UICollectionViewDelegateFlowLayout {
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//    return CGSize(width: CGFloat(arc4random_uniform(60)) + 320.0, height: 40.0)
//  }
//}


class Cell: UICollectionViewCell {
  @IBOutlet weak var label: UILabel!
}

