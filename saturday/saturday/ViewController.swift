//
//  ViewController.swift
//  saturday
//
//  Created by matt johnston on 11/21/15.
//  Copyright © 2015 matt johnston. All rights reserved.
//
//  lets see if this makes it to the branh
//
//

import UIKit

class ViewController: UIViewController, SelectedImageDelegate {


    @IBOutlet weak var galleryButtonImage: UIImageView!
    @IBOutlet weak var navBarTitle: UINavigationItem!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // navBarTitle.title = self.title
       galleryButtonImage.image = UIImage(named: "cellImage")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionViewController(viewController: CollectionCollectionViewController, selectedImage: Int) {
        print("called delegate method")
        galleryButtonImage.image = UIImage(named: "Image-\(selectedImage)")

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showGallery" {
        var collection = segue.destinationViewController as! CollectionCollectionViewController
            print("has the id changed \(collection)")
            collection.delegate = self
        
        }
    }


}

