//
//  ViewController.swift
//  ColorfulLabel
//
//  Created by Actto on 2/8/2016.
//  Copyright © 2016 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.whiteColor();
        
        self.view.addSubview(initColorfulLabel());
        self.view.addSubview(initColorfulLabelOfMentor());
//
        self.view.addSubview(initShadowLabel());
        self.view.addSubview(initShadowLabelOfMentor());
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Initializes a colorful label container view
     
     - returns: A colorful label container view instance
     */
    func initColorfulLabel() -> UIView {
        let containerViewFrame:CGRect = CGRect(x: -7, y: 100, width: self.view.bounds.width, height: 20);
        let containerView:UIView = UIView(frame: containerViewFrame);
        
        let redLabelFrame = CGRect(x: 0, y: 0, width: containerView.bounds.width / 2, height: 20);
        let redLabel:UILabel = UILabel(frame: redLabelFrame);
        redLabel.text = "RED";
        redLabel.textColor = UIColor.redColor();
        redLabel.textAlignment = NSTextAlignment.Right;
        
        containerView.addSubview(redLabel);
        
        let blueLabelFrame = CGRect(x: containerView.bounds.width / 2, y: 0, width: containerView.bounds.width / 2, height: 20);
        let blueLabel:UILabel = UILabel(frame: blueLabelFrame);
        blueLabel.text = " BLUE";
        blueLabel.textColor = UIColor.blueColor();
        blueLabel.textAlignment = NSTextAlignment.Left;
        
        containerView.addSubview(blueLabel);
        
        
        return containerView;
    }
    
    /**
     Initializes a real colorful UILabel instance instead of a container view,this method is guided by a mentor
     
     - returns: A real colorful UILabel instance
     */
    func initColorfulLabelOfMentor() -> UILabel {
        let str:NSMutableAttributedString = NSMutableAttributedString(string: "RED BLUE");
        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(0, 3));
        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(4, 4));
        
        let labelFrame = CGRect(x: 0, y: 140, width: self.view.bounds.width, height: 20);
        let label:UILabel = UILabel(frame: labelFrame);
        label.attributedText = str;
        label.textAlignment = NSTextAlignment.Center;
        
        
        return label;
    }
    
    /**
     Initializes a shadow label container view
     
     - returns: A UIView instance which contains two UILabels to display a shadow
     */
    func initShadowLabel() -> UIView {
        
        let containerViewFrame:CGRect = CGRect(x: 0, y: 180, width: self.view.bounds.width, height: 20);
        let containerView:UIView = UIView(frame: containerViewFrame);
        
        let lowerLabelFrame = CGRect(x: 1, y: 1, width: self.view.bounds.width, height: 20);
        let lowerLabel:UILabel = UILabel(frame: lowerLabelFrame);
        lowerLabel.text = "LABEL WITH SHADOW";
        lowerLabel.textColor = UIColor.blueColor();
        lowerLabel.textAlignment = NSTextAlignment.Center;
        
        containerView.addSubview(lowerLabel);
        
        
        let upperLabelFrame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 20);
        let upperLabel:UILabel = UILabel(frame: upperLabelFrame);
        upperLabel.text = "LABEL WITH SHADOW";
        upperLabel.textColor = UIColor.redColor();
        upperLabel.textAlignment = NSTextAlignment.Center;
        
        containerView.addSubview(upperLabel);
        
        
        return containerView;
    }
    
    /**
     Initializes a real shadow UILabel instance instead of a container view,this method is guided by a mentor
     
     - returns: A UILabel which has a shadow
     */
    func initShadowLabelOfMentor() -> UILabel {
        
        let labelFrame = CGRect(x: 0, y: 220, width: self.view.bounds.width, height: 20);
        let label:UILabel = UILabel(frame: labelFrame);
        label.text = "LABEL WITH SHADOW";
        label.textColor = UIColor.redColor();
        label.shadowColor = UIColor.blueColor();
        label.shadowOffset = CGSize(width: 1, height: 1);
        label.textAlignment = NSTextAlignment.Center;
        
        
        return label;
    }


}

