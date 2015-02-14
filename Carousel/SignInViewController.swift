//
//  SignInViewController.swift
//  Carousel
//
//  Created by Kevin Shay on 2/10/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var signInButtonsContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
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
    
    
    @IBAction func onScreenTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func backButtonDidPress(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    

   
    
    @IBAction func signInButtonDidPress(sender: AnyObject) {
        
        var textFieldsEmptyAlert = UIAlertView (title: "Email & Password Required", message: "Must fill in email & password", delegate: nil, cancelButtonTitle: "Ok")
        
        var signingInAlert = UIAlertView (title: "Signing In", message: nil, delegate: nil, cancelButtonTitle: nil)
        
        var signInFailedAlert = UIAlertView (title: "Sign In Failed", message: "Incorrect Email or Password", delegate: nil, cancelButtonTitle: "Ok")
        
        if(self.emailTextField.text == "email" && self.passwordTextField.text == "password") {
            signingInAlert.show()
            delay(1.0, { () -> () in
            self.performSegueWithIdentifier("signInSegue", sender: self)
                signingInAlert.dismissWithClickedButtonIndex(0, animated: false)
 
            })
        
        } else if (self.emailTextField.text.isEmpty || self.passwordTextField.text.isEmpty) {
            textFieldsEmptyAlert.show()
            
        }else {
            signingInAlert.show()
            delay(1.0, { () -> () in
                signInFailedAlert.show()
                signingInAlert.dismissWithClickedButtonIndex(0, animated: false)                
            })
            
        }
        
}
    
    
    
    
        func keyboardWillShow(notification: NSNotification!) {
            var userInfo = notification.userInfo!
            
            // Get the keyboard height and width from the notification
            // Size varies depending on OS, language, orientation
            var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
            var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
            var animationDuration = durationValue.doubleValue
            var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
            var animationCurve = curveValue.integerValue
            
            
            UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
                
                self.loginContainer.center.y = 220
                //self.signInButtonsContainer.center.y = self.signInButtonsContainer.center.y - 30
                //self.loginContainer.center.y = kbSize.height - self.loginContainer.center.y/10
                //self.signInButtonsContainer.center.y = self.view.frame.size.height - (self.signInButtonsContainer.frame.origin.y/2)
                self.signInButtonsContainer.frame.origin.y = self.view.frame.height - kbSize.height - ( self.signInButtonsContainer.frame.height)
                
                }, completion: nil)
        }
        
    
    
    
        func keyboardWillHide(notification: NSNotification!) {
            var userInfo = notification.userInfo!
            
            // Get the keyboard height and width from the notification
            // Size varies depending on OS, language, orientation
            var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
            var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
            var animationDuration = durationValue.doubleValue
            var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
            var animationCurve = curveValue.integerValue
            
            UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
                self.loginContainer.center.y = 313.5
                //self.loginContainer.center.y = kbSize.height + self.loginContainer.center.y/10
                //self.signInButtonsContainer.center.y = kbSize.height + self.signInButtonsContainer.center.y/18
                self.signInButtonsContainer.frame.origin.y = self.view.frame.height - self.signInButtonsContainer.frame.height
                }, completion: nil)
        }
        
    }
    
    
    






