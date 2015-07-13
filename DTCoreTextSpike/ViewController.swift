//
//  ViewController.swift
//  DTCoreTextSpike
//
//  Created by Takashi Hatakeyama on 2015/07/13.
//  Copyright (c) 2015年 esminc. All rights reserved.
//

import UIKit
import DTCoreText

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        var html = "<p>Some Text</p>"
        var data: NSData? = html.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        
        var dict: NSDictionary? = NSDictionary()
        
        let options:[NSObject:AnyObject] = [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute:NSUTF8StringEncoding]
        let attrString = NSAttributedString(data: data!, options: options, documentAttributes: nil, error: nil)
        
        println(attrString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

