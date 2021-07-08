//
//  ViewController.swift
//  ImaGestures
//
//  Created by DCS on 07/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "bg.png")
        imageView.backgroundColor = .clear
        return imageView
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(MoveToNextPage), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myImageView)
        view.addSubview(myButton)
        self.title = "ImageGesture"
        self.view.backgroundColor = .white
    }
    @objc func MoveToNextPage(){
        let vc = GesturesView()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        myImageView.frame = CGRect(x: 40, y: view.height/2-170, width: view.width-80, height:90)
        myButton.frame = CGRect(x: 40, y: view.height/2+200, width: view.width-80, height: 60)
    }


}

