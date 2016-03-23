//
//  CounterViewController.swift
//  DDRCounter
//
//  Created by Robert Hieger on 3/22/16.
//  Copyright © 2016 Hieger Designs. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, UITextFieldDelegate {

    // IBOutlets:
    var item: Item!

    @IBOutlet var counterName: UITextField?
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        counterName!.resignFirstResponder()
    }
    @IBAction func counterNameDidChange(sender: AnyObject) {
        item.name = counterName!.text
        print(item.name)
    }
    @IBOutlet var counterLabel: UILabel!
    
    @IBAction func countUp(sender: AnyObject) {
        item.count = item.count + 1
        counterLabel.text = "\(item.count)"
    }
    @IBAction func countDown(sender: AnyObject) {
        if (item.count > 0){
            item.count = item.count - 1
            counterLabel.text = "\(item.count)"
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(item.name)
        if item.name != "" {
            counterName!.text = item.name
        }
        
        counterLabel!.text = "\(item.count)"
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

