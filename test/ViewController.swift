//
//  ViewController.swift
//  test
//
//  Created by Vicky Bang on 3/24/20.
//  Copyright © 2020 Vicky Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseFromCamera() {
        let picker:UIImagePickerController = UIImagePickerController()
        
        picker.delegate = self;
        picker.sourceType = .camera
        
        picker.isNavigationBarHidden = true;
        picker.showsCameraControls = false;
        
//        picker.cameraViewTransform = __CGAffineTransformMake(<#T##a: CGFloat##CGFloat#>, <#T##b: CGFloat##CGFloat#>, <#T##c: CGFloat##CGFloat#>, <#T##d: CGFloat##CGFloat#>, <#T##tx: CGFloat##CGFloat#>, <#T##ty: CGFloat##CGFloat#>)
        picker.cameraViewTransform.ty += 80;
        
        present(picker, animated: true, completion: nil)
    }
    
}

