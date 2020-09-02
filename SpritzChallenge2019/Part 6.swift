//
//  Part 6.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 22/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//


import Foundation
import UIKit

class SixViewController: UIViewController {
    var princessView: UIImageView!
    
    override func viewDidLoad() {
        
        view.backgroundColor = .black
        
        princessView = UIImageView()
        princessView.frame = CGRect(x: 0, y: 50, width: 400, height: 730)
        view.addSubview(princessView)
        princessView.image = UIImage(imageLiteralResourceName: "princess11.png")
        princessView.alpha = 0
        
        let line1 = UILabel()
        line1.text = "She replied, 'But, I already have a magical object..'"
        line1.frame = CGRect(x: 1366/*320*/, y: 150, width: 1200, height: 50)
        line1.font = UIFont(name: "Helvetica", size: 40)
        line1.textColor = .yellow
        view.addSubview(line1)
        
        let line2 = UILabel()
        line2.text = "'..which does ALL of that.'"
        line2.frame = CGRect(x: 1366, y: 300, width: 1200, height: 50)
        line2.font = UIFont(name: "Helvetica", size: 40)
        line2.textColor = .yellow
        view.addSubview(line2)
        
        let line4 = UILabel()
        line4.text = "'..A man from the future gifted it to me last year.'"
        line4.frame = CGRect(x: 1366, y: 450, width: 1200, height: 50)
        line4.font = UIFont(name: "Helvetica", size: 40)
        line4.textColor = .yellow
        view.addSubview(line4)
        
        let line3 = UILabel()
        line3.text = "The stranger looked confused and inquired..."
        line3.frame = CGRect(x: 1366, y: 600, width: 1200, height: 50)
        line3.font = UIFont(name: "Helvetica", size: 40)
        line3.textColor = .yellow
        view.addSubview(line3)
        
        let line5 = UILabel()
        line5.text = "'..Well, what is it called?'"
        line5.frame = CGRect(x: 1366, y: 850, width: 1200, height: 80)
        line5.font = UIFont(name: "Helvetica", size: 80)
        line5.textColor = .yellow
        view.addSubview(line5)
        
        UIView.animate(withDuration: 2.5) {
            //line1.alpha = 0
            //line1.alpha = 1.0
            line1.transform = CGAffineTransform(translationX: -1050, y: 0)
            line2.transform = CGAffineTransform(translationX: -1040, y: 0)
            //line1.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
            //line2.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
        
        UIView.animate(withDuration: 4.0) {
            line4.transform = CGAffineTransform(translationX: -1030, y: 0)
            self.princessView.alpha = 1.0
            self.princessView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
        
        UIView.animate(withDuration: 5.5) {
            line3.transform = CGAffineTransform(translationX: -980, y: 0)
            line5.transform = CGAffineTransform(translationX: -1040, y: 0)
        }
    }
}
