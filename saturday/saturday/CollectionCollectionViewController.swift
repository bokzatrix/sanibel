//
//  CollectionCollectionViewController.swift
//  saturday
//
//  Created by matt johnston on 11/26/15.
//  Copyright © 2015 matt johnston. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Image"

class CollectionCollectionViewController: UICollectionViewController {
    
     let imageLoaderInstance = ImageLoader()
    var selectedIndex = 0
    weak var delegate : SelectedImageDelegate? = nil
    

    
    @IBOutlet weak var galleryTItle: UINavigationItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("id for collection actual \(self)")
        print("images should be loaded \(imageLoaderInstance.imageArray)")
        galleryTItle.title = "Gallery"
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetail" {
        let detailVC = segue.destinationViewController as! DetailViewController
            print(detailVC.description)
        var imageToBeLoaded = "Image-\(selectedIndex)"
        print("the image to be loaded is??? \(imageToBeLoaded)")
        detailVC.image = UIImage(named: imageToBeLoaded)!
            
        }

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageLoaderInstance.imageArray.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
        // Configure the cell
        // load the image for this cell
        
        var imageToBeLoaded = "Image-\(indexPath.row)"
        print(imageToBeLoaded)

        cell.image.image = UIImage(named: imageToBeLoaded)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        selectedIndex = indexPath.row
        print("selected item in collection view \(indexPath.row)")
        delegate?.collectionViewController(self, selectedImage: indexPath.row)
        print(delegate.debugDescription)
        return true
    }


    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
