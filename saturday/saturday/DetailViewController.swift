//
//  DetailViewController.swift
//  saturday
//
//  Created by matt johnston on 11/26/15.
//  Copyright © 2015 matt johnston. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    var image = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
            print("what is the detailImage \(detailImage.image)")
        self.detailImage.image = self.image

        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
