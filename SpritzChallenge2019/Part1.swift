//
//  Part1.swift
//  SpritzChallenge2019
//
//  Created by Abdulbasit Shaikh on 21/10/2019.
//  Copyright © 2019 Abdulbasit Shaikh. All rights reserved.
//

import UIKit
import Foundation


class OneViewController: UIViewController {
    
    var castleView: UIImageView!
    var moonView: UIImageView!
    
    override func viewDidLoad() {
        let view = UIView()
        view.backgroundColor = .black
        
        // Castle
        castleView = UIImageView()
        castleView.frame = CGRect(x: 300, y: 50, width: 800, height: 700)
        view.addSubview(castleView)
        castleView.image = UIImage(imageLiteralResourceName: "castle.png")
        castleView.alpha = 0
        
        // Stars
        let starView1 = UIImageView()
        starView1.frame = CGRect(x: 1000, y: 20, width: 30, height: 30)
        view.addSubview(starView1)
        starView1.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView2 = UIImageView()
        starView2.frame = CGRect(x: 860, y: 130, width: 30, height: 30)
        view.addSubview(starView2)
        starView2.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView3 = UIImageView()
        starView3.frame = CGRect(x: 580, y: 30, width: 30, height: 30)
        view.addSubview(starView3)
        starView3.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView4 = UIImageView()
        starView4.frame = CGRect(x: 520, y: 150, width: 30, height: 30)
        view.addSubview(starView4)
        starView4.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView5 = UIImageView()
        starView5.frame = CGRect(x: 780, y: 90, width: 30, height: 30)
        view.addSubview(starView5)
        starView5.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView6 = UIImageView()
        starView6.frame = CGRect(x: 470, y: 50, width: 30, height: 30)
        view.addSubview(starView6)
        starView6.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView7 = UIImageView()
        starView7.frame = CGRect(x: 400, y: 100, width: 30, height: 30)
        view.addSubview(starView7)
        starView7.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        let starView8 = UIImageView()
        starView8.frame = CGRect(x: 930, y: 80, width: 30, height: 30)
        view.addSubview(starView8)
        starView8.image = UIImage(imageLiteralResourceName: "starrr.png")
        
        // Lines
        let line1 = UILabel()
        line1.frame = CGRect(x: 300, y: 830, width: 800, height: 50)
        line1.text = "Once upon a time..."
        line1.font = UIFont(name: "Helvetica", size: 50)
        line1.textColor = UIColor(red: 1.0, green: 0.84, blue: 0.0, alpha: 1.0)
        view.addSubview(line1)
        
        let line2 = UILabel()
        line2.frame = CGRect(x: 550, y: 920, width: 800, height: 60)
        line2.text = "In a kingdom far, far away..."
        line2.font = UIFont(name: "Helvetica", size: 50)
        line2.textColor = UIColor(red: 1.0, green: 0.84, blue: 0.0, alpha: 1.0)
        view.addSubview(line2)
        
        self.view = view
        
        let stars = [starView1, starView2, starView3, starView4, starView5, starView6, starView7, starView8]
        
        for star in stars {
            UIView.animate(withDuration: 7.0) {
                star.alpha = 0
                star.alpha = 0.5
                star.transform = CGAffineTransform(rotationAngle: .pi)
                star.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                star.alpha = 1.0
            }
        }
        
        UIView.animate(withDuration: 5.0) {
            line1.alpha = 0
            line1.alpha = 0.5
            line1.alpha = 1.0
            line1.transform = CGAffineTransform(translationX: 7, y: -50)
            line1.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }
        
        UIView.animate(withDuration: 5.0) {
            line2.alpha = 0
            line2.alpha = 0.5
            line2.alpha = 1.0
            line2.transform = CGAffineTransform(translationX: 7, y: -50)
            line2.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }
        
        UIView.animate(withDuration: 5.0) {
            self.castleView.alpha = 1.0
            self.castleView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//        case "two":
//            let twoViewController = segue.destination as! TwoViewController
//            twoViewController.princessView = princessView
//        default:
//            print("Errrrrror")
//        }
//    }
}
