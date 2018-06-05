//
//  LiveInspectionViewController.swift
//  Foscoris
//
//  Created by Developer on 05/06/18.
//  Copyright © 2018 Neuweg Technologies. All rights reserved.
//

import UIKit

class LiveInspectionViewController: UIViewController {
    @IBOutlet weak var viewBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBar.layer.shadowColor = UIColor.darkGray.cgColor
        viewBar.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewBar.layer.shadowOpacity = 0.7
        viewBar.layer.shadowRadius = 5
        viewBar.layer.masksToBounds = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
