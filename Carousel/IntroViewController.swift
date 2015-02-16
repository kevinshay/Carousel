//
//  IntroViewController.swift
//  Carousel
//
//  Created by Kevin Shay on 2/10/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        
        self.image1.transform = CGAffineTransformMakeRotation(-0.2)
        self.image1.transform = CGAffineTransformConcat(self.image1.transform, CGAffineTransformMakeScale(1.5, 1.5))
        self.image1.transform = CGAffineTransformConcat(self.image1.transform, CGAffineTransformMakeTranslation(-40.0, -300.0))
        
        self.image2.transform = CGAffineTransformMakeRotation(-0.35)
        self.image2.transform = CGAffineTransformConcat(self.image2.transform, CGAffineTransformMakeScale(2.1, 2.1))
        self.image2.transform = CGAffineTransformConcat(self.image2.transform, CGAffineTransformMakeTranslation(90.0, -380.0))
     
        self.image3.transform = CGAffineTransformMakeRotation(0.3)
        self.image3.transform = CGAffineTransformConcat(self.image3.transform, CGAffineTransformMakeScale(1.8, 1.8))
        self.image3.transform = CGAffineTransformConcat(self.image3.transform, CGAffineTransformMakeTranslation(20.0, -500.0))
        
        self.image4.transform = CGAffineTransformMakeRotation(-0.2)
        self.image4.transform = CGAffineTransformConcat(self.image4.transform, CGAffineTransformMakeScale(1.8, 1.8))
        self.image4.transform = CGAffineTransformConcat(self.image4.transform, CGAffineTransformMakeTranslation(70.0, -300.0))
        
        self.image5.transform = CGAffineTransformMakeRotation(0.2)
        self.image5.transform = CGAffineTransformConcat(self.image5.transform, CGAffineTransformMakeScale(2.3, 2.3))
        self.image5.transform = CGAffineTransformConcat(self.image5.transform, CGAffineTransformMakeTranslation(-60.0, -500.0))
        
        self.image6.transform = CGAffineTransformMakeRotation(-0.2)
        self.image6.transform = CGAffineTransformConcat(self.image6.transform, CGAffineTransformMakeScale(2.3, 2.3))
        self.image6.transform = CGAffineTransformConcat(self.image6.transform, CGAffineTransformMakeTranslation(-50.0, -350.0))
        

        // Do any additional setup after loading the view.
        scrollView.contentSize = introImage.image!.size
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

     func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: nil, animations: { () -> Void in
            
            self.image1.transform = CGAffineTransformMakeRotation(0.0)
            self.image1.transform = CGAffineTransformConcat(self.image1.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image1.transform = CGAffineTransformConcat(self.image1.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            self.image2.transform = CGAffineTransformMakeRotation(0.0)
            self.image2.transform = CGAffineTransformConcat(self.image2.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image2.transform = CGAffineTransformConcat(self.image2.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            self.image3.transform = CGAffineTransformMakeRotation(0.0)
            self.image3.transform = CGAffineTransformConcat(self.image3.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image3.transform = CGAffineTransformConcat(self.image3.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            self.image4.transform = CGAffineTransformMakeRotation(0.0)
            self.image4.transform = CGAffineTransformConcat(self.image4.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image4.transform = CGAffineTransformConcat(self.image4.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            self.image5.transform = CGAffineTransformMakeRotation(0.0)
            self.image5.transform = CGAffineTransformConcat(self.image5.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image5.transform = CGAffineTransformConcat(self.image5.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            self.image6.transform = CGAffineTransformMakeRotation(0.0)
            self.image6.transform = CGAffineTransformConcat(self.image6.transform, CGAffineTransformMakeScale(1.0, 1.0))
            self.image6.transform = CGAffineTransformConcat(self.image6.transform, CGAffineTransformMakeTranslation(0.0, 0.0))
            
            
            
        }, completion: nil)
      
        
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
