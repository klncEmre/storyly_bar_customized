//
//  ThreeStorylyViewController.swift
//  storyly_bar_customized
//
//  Created by Emre Kılınç on 21.06.2022.
//

import UIKit
import Storyly
class ThreeStorylyViewController: UIViewController {
    
    @IBOutlet weak var window1: StorylyView!
    
    @IBOutlet weak var window2: StorylyView!
    let screenSize: CGRect = UIScreen.main.bounds
    let STORYLY_INSTANCE_TOKEN = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NfaWQiOjc2MCwiYXBwX2lkIjo0MDUsImluc19pZCI6NDA0fQ.1AkqOy_lsiownTBNhVOUKc91uc9fDcAxfQZtpm3nj40"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.window1.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        self.window1.rootViewController = self
        self.window1.delegate = self
        self.window1.storyGroupTextIsVisible = true
        self.window1.storyGroupTextColor = UIColor.systemYellow
        self.window1.storyGroupTextFont = UIFont.systemFont(ofSize: CGFloat(15))
        self.window1.storyGroupTextLines = 4
        // Do any additional setup after loading the view.
        
        self.window2.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        self.window2.rootViewController = self
        self.window2.delegate = self
        self.window2.storyGroupTextIsVisible = true
        self.window2.storyGroupTextColor = UIColor.systemYellow
        self.window2.storyGroupTextFont = UIFont.systemFont(ofSize: CGFloat(15))
        self.window2.storyGroupTextLines = 4
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

extension ThreeStorylyViewController: StorylyDelegate {
    
}
