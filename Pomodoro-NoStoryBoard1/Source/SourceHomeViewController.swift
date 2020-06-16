//
//  SourceHomeViewController.swift
//  Pomodoro-NoStoryBoard1
//
//  Created by JD on 6/16/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet var homeView: UIView!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        // Do any additional setup after loading the view.
//        let HomeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
//        self.present(HomeViewController, animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
