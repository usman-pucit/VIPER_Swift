//
//  UICollectionView.swift
//  VIPER_Example
//
//  Created by Malik Usman on 16/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ResuableViews {
        register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ResuableViews, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueCell<T: UICollectionViewCell>(_: T.Type, for indexPath: IndexPath) -> T where T: ResuableViews {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
