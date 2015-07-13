//
//  ViewController.swift
//  DTCoreTextSpike
//
//  Created by Takashi Hatakeyama on 2015/07/13.
//  Copyright (c) 2015年 esminc. All rights reserved.
//

import UIKit
import DTCoreText

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var objects = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        var html = "<p>Some Text</p>"
        var data: NSData? = html.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        
        var dict: NSDictionary? = NSDictionary()
        
        let options:[NSObject:AnyObject] = [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute:NSUTF8StringEncoding]
        let attrString = NSAttributedString(data: data!, options: options, documentAttributes: nil, error: nil)
        
//        println(attrString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
//        let object = objects[indexPath.row] as! NSDate
//        cell.textLabel!.text = "おしんこ"
        var customCell = cell as! CustomCell
        var data = "<p>hi".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        customCell.hi.attributedString = NSAttributedString(HTMLData: data, documentAttributes: nil)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

