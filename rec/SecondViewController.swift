//
//  SecondViewController.swift
//  rec
//
//  Created by Duarte Lopes on 29/11/2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let helloLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(withLabel text: String) {
        
        self.helloLabel.text = text
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.configureSubviews()
    }
    
    func configureSubviews() {
        
        self.view.addSubview(self.helloLabel)
        self.configureSubviewsConstraints()
    }
    
    func configureSubviewsConstraints() {
        
        NSLayoutConstraint.activate([
            self.helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.helloLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16)
        ])
    }
}
