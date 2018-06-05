//
//  ViewController.swift
//  Foscoris
//
//  Created by Developer on 04/06/18.
//  Copyright © 2018 Neuweg Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtfldState: UITextField!
    @IBOutlet weak var txtfldUserTYPE: UITextField!
    @IBOutlet weak var viewLogin: UIView!
    @IBOutlet weak var txtfldUsername: UITextField!
    
    @IBOutlet weak var txtfldPassword: UITextField!
    
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let borderLayer = dashedBorderLayerWithColor(color: UIColor.lightGray.cgColor)
//        viewLogin.layer.addSublayer(borderLayer)
        
        txtfldUserTYPE.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        txtfldUserTYPE.layer.borderWidth = 0.5
        txtfldUserTYPE.layer.cornerRadius = 5.0
        txtfldUserTYPE.clipsToBounds = true
        
        txtfldState.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        txtfldState.layer.borderWidth = 0.5
        txtfldState.layer.cornerRadius = 5.0
        txtfldState.clipsToBounds = true
        
        txtfldUsername.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        txtfldUsername.layer.borderWidth = 0.5
        txtfldUsername.layer.cornerRadius = 5.0
        txtfldUsername.clipsToBounds = true
        
        txtfldPassword.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        txtfldPassword.layer.borderWidth = 0.5
        txtfldPassword.layer.cornerRadius = 5.0
        txtfldPassword.clipsToBounds = true
        
        btnSignIn.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        btnSignIn.layer.borderWidth = 0.5
        btnSignIn.layer.cornerRadius = 5.0
        btnSignIn.clipsToBounds = true
        
        btnReset.layer.borderColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1.0).cgColor
        btnReset.layer.borderWidth = 0.5
        btnReset.layer.cornerRadius = 5.0
        btnReset.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dashedBorderLayerWithColor(color:CGColor) -> CAShapeLayer {
        
        let  borderLayer = CAShapeLayer()
        borderLayer.name  = "borderLayer"
        let frameSize = viewLogin.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
            //CGRectMake(0, 0, frameSize.width, frameSize.height)
        //CGPointMake( frameSize.width/2,frameSize.height/2)
        borderLayer.bounds=shapeRect
        borderLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
        borderLayer.fillColor = UIColor.clear.cgColor
        borderLayer.strokeColor = color
        borderLayer.lineWidth = 0.5
        borderLayer.lineJoin=kCALineJoinRound
        borderLayer.lineDashPattern = NSArray(array: [NSNumber(value: 8),NSNumber(value:4)]) as? [NSNumber]
        
        let path = UIBezierPath.init(roundedRect: shapeRect, cornerRadius: 0)
        
        borderLayer.path = path.cgPath
        
        return borderLayer
        
    }


}

