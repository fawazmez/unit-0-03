// Created on: sep 10
// Created by: fawaz.m
// Created for: ICS3U
// This program is the UIKit solution for name,city,and country program
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let addressButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.239215686917305, green: 0.674509823322296, blue: 0.968627452850342, alpha: 1.0)
        self.view = view
        
        //nameLabel.text = "fawaz"
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //cityLabel.text = "Ottawa"
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //countryLabel.text = "Canada"
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        countryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        addressButton.setTitle("Click Me", for: UIControlState.normal)
        addressButton.setTitleColor(.blue, for: .normal)
        addressButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(addressButton)
        addressButton.translatesAutoresizingMaskIntoConstraints = false;
        addressButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
        addressButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
    }
    
    @objc func showText() {
        // show Hello, World!
        nameLabel.text = "fawaz"
        cityLabel.text = "Ottawa"
        countryLabel.text = "Canada"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()




