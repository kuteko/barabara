//
//  RankingViewController.swift
//  barabaragame
//
//  Created by 内山香 on 2016/06/09.
//  Copyright © 2016年 内山香. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel!//1位のスコア
    @IBOutlet var rankingLabel2: UILabel!//2位のスコア
    @IBOutlet var rankingLabel3: UILabel!//3位のスコア
    
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()//スコア保存の変数

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        rankingLabel1.text = String(defaults.integerForKey("score1"))
        rankingLabel2.text = String(defaults.integerForKey("score2"))
        rankingLabel3.text = String(defaults.integerForKey("score3"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func toTop(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
