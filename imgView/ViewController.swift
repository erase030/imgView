//
//  ViewController.swift
//  imgView
//
//  Created by dit08 on 2019. 3. 26..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var count = 1
    var d = 0
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = UIImage(named: "frame1.png")
        lbl.text = "1"
    }
    @IBAction func btn(_ sender: Any) {
        
        if count >= 1 && d==0{
            count += 1
            if count==5{
                d=1
            }
        }else if count<=5&&d==1{
            count-=1
            if count==1{
                d=0
            }
        }
        
        imgView.image = UIImage(named: "frame\(count).png")
        
        lbl.text = String(count)
    }
    
    

}

