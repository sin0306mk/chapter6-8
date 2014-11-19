//
//  ViewController.swift
//  chapter6-8
//
//  Created by SMB開発部 on 2014/11/19.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        var jsondata = NSData(contentsOfFile: path!)
        
//        let jsonArray = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as NSArray
//        for dat in jsonArray {
//            var d1 = dat["name"] as String
//            var d2 = dat["price"] as Int
//            println("名称:\(d1)　値段:\(d2)")
//        }
        let jsonDictionary = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as NSDictionary
        for (key, data) in jsonDictionary{
            var d1 = data["餅"] as String
            var d2 = data["醤油"] as String
            var d3 = data["月見団子"] as String
            println("\(key)-> \(d1)")
            println("\(key)-> \(d2)")
            println("\(key)-> \(d3)")
        }
    }


}

