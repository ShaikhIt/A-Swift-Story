//
//  Part 5.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 22/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//


import Foundation
import UIKit

class FiveViewController: UIViewController {
    
    var strangeManView: UIImageView!
    var diamondview: UIImageView!
    var heartView: UIImageView!
    var magic1View: UIImageView!
    var protectView: UIImageView!
    var timeView: UIImageView!
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        // Images
        strangeManView = UIImageView()
        strangeManView.frame = CGRect(x: 710, y: 550, width: 650, height: 450)
        view.addSubview(strangeManView)
        strangeManView.image = UIImage(imageLiteralResourceName: "strangeMan2")
        strangeManView.alpha = 0
        
        diamondview = UIImageView()
        diamondview.frame = CGRect(x: 1070, y: 600, width: 110, height: 110)
        view.addSubview(diamondview)
        diamondview.image = UIImage(imageLiteralResourceName: "diamond2")
        diamondview.alpha = 0
        
        heartView = UIImageView()
        heartView.frame = CGRect(x: 50, y: 370, width: 230, height: 180)
        view.addSubview(heartView)
        heartView.image = UIImage(imageLiteralResourceName: "heart3")
        heartView.alpha = 0
        
        magic1View = UIImageView()
        magic1View.frame = CGRect(x: 850, y: 150, width: 420, height: 420)
        view.addSubview(magic1View)
        magic1View.image = UIImage(imageLiteralResourceName: "magic2")
        magic1View.alpha = 0
        
        protectView = UIImageView()
        protectView.frame = CGRect(x: 50, y: 50, width: 230, height: 230)
        view.addSubview(protectView)
        protectView.image = UIImage(imageLiteralResourceName: "protect")
        protectView.alpha = 0
        
        timeView = UIImageView()
        timeView.frame = CGRect(x: 50, y: 680, width: 200, height: 300)
        view.addSubview(timeView)
        timeView.image = UIImage(imageLiteralResourceName: "time9")
        timeView.alpha = 0
        
        // Labels
        let line1 = UILabel()
        line1.text = "He said, 'This is no ordinary diamond!'"
        view.addSubview(line1)
        line1.frame = CGRect(x: 300, y: 100, width: 1400, height: 60)
        line1.textColor = .yellow
        line1.font = UIFont(name: "Helvetica", size: 50)
        line1.alpha = 0
        
        let line2 = UILabel()
        line2.text = "'It has magical powers!'"
        view.addSubview(line2)
        line2.frame = CGRect(x: 300, y: 250, width: 1400, height: 60)
        line2.textColor = .yellow
        line2.font = UIFont(name: "Helvetica", size: 50)
        line2.alpha = 0
        
        let line3 = UILabel()
        line3.text = "'It will protect you..'"
        view.addSubview(line3)
        line3.frame = CGRect(x: 300, y: 400, width: 1400, height: 60)
        line3.textColor = .yellow
        line3.font = UIFont(name: "Helvetica", size: 50)
        line3.alpha = 0
        
        let line4 = UILabel()
        line4.text = "'It will make your heart strong..'"
        view.addSubview(line4)
        line4.frame = CGRect(x: 300, y: 550, width: 1400, height: 60)
        line4.textColor = .yellow
        line4.font = UIFont(name: "Helvetica", size: 50)
        line4.alpha = 0
        
        let line5 = UILabel()
        line5.text = "'And it will make you..'"
        view.addSubview(line5)
        line5.frame = CGRect(x: 300, y: 700, width: 1400, height: 60)
        line5.textColor = .yellow
        line5.font = UIFont(name: "Helvetica", size: 50)
        line5.alpha = 0
        
        let line7 = UILabel()
        line7.text = "'..the master of your time and destiny!"
        view.addSubview(line7)
        line7.frame = CGRect(x: 300, y: 850, width: 1400, height: 60)
        line7.textColor = .yellow
        line7.font = UIFont(name: "Helvetica", size: 50)
        line7.alpha = 0
        
        // First bullet point
        UIView.animate(withDuration: 3.0) {
            self.strangeManView.alpha = 1.0
            self.diamondview.alpha    = 1.0
            line1.alpha = 1.0
            self.strangeManView.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
            self.diamondview.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }
        
        //UIView.animate(withDuration: 3, delay: 0, options: nil, animations: {}, completion: print("Done!"))
        
        // Second bullet point
        UIView.animate(withDuration: 5.0) {
            line2.alpha = 1.0
            self.magic1View.alpha = 1.0
            self.magic1View.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
        
        // Third bullet point
        UIView.animate(withDuration: 7.0) {
            line3.alpha = 1.0
            self.protectView.alpha = 1.0
            self.protectView.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
        
        // fourth bullet point
        UIView.animate(withDuration: 9.0) {
            line4.alpha = 1.0
            self.heartView.alpha = 1.0
            self.heartView.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
        
        // Fifth and sixth bullet point
        UIView.animate(withDuration: 11.0) {
            line5.alpha = 1.0
            line7.alpha = 1.0
            self.timeView.alpha = 1.0
            self.timeView.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        }
    }
}
