//
//  SelectedImageDelegate.swift
//  saturday
//
//  Created by matt johnston on 11/29/15.
//  Copyright © 2015 matt johnston. All rights reserved.
//

import UIKit


protocol SelectedImageDelegate: class {
    func collectionViewController(viewController: CollectionCollectionViewController, selectedImage: Int) -> Void
}
