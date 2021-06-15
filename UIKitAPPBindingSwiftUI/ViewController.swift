//
//  ViewController.swift
//  UIKitAPPBindingSwiftUI
//
//  Created by 张亚飞 on 2021/6/15.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.isHidden = true
        
        extractView()
    }

    // Extracting SwiftUI View And Setting to UIKit View...
    func extractView() {
        
        let hostView = UIHostingController(rootView: Home())
        
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(hostView.view)
        
        //Constraints....
        //clipping SwiftUI View to UIKit View...
        
        let  constraints = [
            
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            
        ]
        
        self.view.addConstraints(constraints)
    }
    
    

}

