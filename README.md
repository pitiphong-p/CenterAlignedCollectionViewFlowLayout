# CenterAlignedCollectionViewFlowLayout
A UICollectionViewFlowLayout subclass that centers its cell to center.

# Requirements
- iOS 8+
- Swift 2.0+

This requirement is due to the Swift runtime is available on iOS 8 or later. If you want to use this `CenterAlignedCollectionViewFlowLayout`.

# Installation
## Manaully
This project comes with built in *`CenterAlignedCollectionViewFlowLayout framework`* target. You can drag `CenterAlignedCollectionViewFlowLayout.xcproj` file into your project, add `CenterAlignedCollectionViewFlowLayout framework` target as a target dependency and link/embed that framework. and Voila!!!
````swift
import CenterAlignedCollectionViewFlowLayout
````
Or you can just add `CenterAlignedCollectionViewFlowLayout.swift` into your project.
## CocoaPod
Add the following to your Podfile
````ruby
pod 'CenterAlignedCollectionViewFlowLayout'
use_frameworks!
````

# Usage
You can set the collecion view's layout to an instance of `CenterAlignedCollectionViewFlowLayout`, that's all. You can set its layout both via code or `Storyboard`.
````swift
collectionView.collectionViewLayout = CenterAlignedCollectionViewFlowLayout()
````

# Demo App
`CenterAlignedCollectionViewFlowLayout` project comes with a demo app target. You can see `CenterAlignedCollectionViewFlowLayout` in action by just running this demo app target.
# Contact
Pitiphong Phongpattranont
- [@pitiphong_p on Twitter] (https://twitter.com/pitiphong_p)

# License
`CenterAlignedCollectionViewFlowLayout` is released under an MIT License.  
Copyright © 2015-present Pitiphong Phongpattranont.


