//
//  Part 4.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 22/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//

import Foundation
import UIKit

class FourViewController: UIViewController {
    var strangeManView: UIImageView!
    var birthdayDecorationView: UIImageView!
    var diamondView: UIImageView!
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        strangeManView = UIImageView()
        strangeManView.frame = CGRect(x: 250, y: 250, width: 800, height: 550)
        view.addSubview(strangeManView)
        strangeManView.image = UIImage(imageLiteralResourceName: "strangeMan1")
        
        birthdayDecorationView = UIImageView()
        birthdayDecorationView.frame = CGRect(x: 150, y: 0, width: 1100, height: 400)
        view.addSubview(birthdayDecorationView)
        birthdayDecorationView.image = UIImage(imageLiteralResourceName: "birthday1")
        
        diamondView = UIImageView()
        diamondView.frame = CGRect(x: 730, y: 510, width: 110, height: 110)
        view.addSubview(diamondView)
        diamondView.image = UIImage(imageLiteralResourceName: "diamond2")
        diamondView.alpha = 0
        
        let line1 = UILabel()
        line1.text = "A strange guest presented a mysterious gift... a diamond"
        line1.frame = CGRect(x: 60, y: 850, width: 1400, height: 60)
        view.addSubview(line1)
        line1.textColor = .yellow
        line1.font = UIFont(name: "Helvetica", size: 50)
        
        UIView.animate(withDuration: 4.0) {
            self.birthdayDecorationView.alpha = 0
            self.birthdayDecorationView.alpha = 0.5
            self.birthdayDecorationView.alpha = 1.0
            
            line1.alpha = 0
            line1.alpha = 0.5
            line1.alpha = 1.0
            line1.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
        
        UIView.animate(withDuration: 5.0) {
            self.diamondView.alpha = 0.3
            self.diamondView.alpha = 0.6
            self.diamondView.alpha = 1.0
            self.diamondView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }
}
