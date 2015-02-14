//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Kevin Shay on 2/12/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
  
    @IBOutlet weak var welcome1Image: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var toFeedContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        scrollView.contentSize = CGSize (width: 1280, height: 568)
       
        //toFeedContainer.hidden()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        println(scrollView.contentOffset.x)
        
        var page = Int(scrollView.contentOffset.x / 320)
        pageControl.currentPage = page
        
        if (page == 4) {
        delay(1.0, { () -> () in
           //self.toFeedContainer.show()
        })
        }
    
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
