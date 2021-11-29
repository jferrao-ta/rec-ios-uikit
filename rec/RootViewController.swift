//
//  RootViewController.swift
//  rec
//
//

import UIKit

class RootViewController: UIViewController {
    
    let button: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Press here", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let helloLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Trip Advisor"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.button.addTarget(self, action: #selector(didPressButton(_:)), for: .touchUpInside)
        
        self.configureSubviews()
    }
    
    func configureSubviews() {
        
        self.view.addSubview(self.button)
        self.view.addSubview(self.helloLabel)
        self.configureSubviewsConstraints()
    }
    
    func configureSubviewsConstraints() {
        
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            self.helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.helloLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16)
        ])
    }
    
    @objc
    func didPressButton(_ sender: UIButton) {
        
        self.helloLabel.isHidden = !self.helloLabel.isHidden
    }
}
