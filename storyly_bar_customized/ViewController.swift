//
//  ViewController.swift
//  storyly_bar_customized
//
//  Created by Emre Kılınç on 20.06.2022.
//

import UIKit
import Storyly
class ViewController: UIViewController {
    
   let STORYLY_INSTANCE_TOKEN = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NfaWQiOjc2MCwiYXBwX2lkIjo0MDUsImluc19pZCI6NDA0fQ.1AkqOy_lsiownTBNhVOUKc91uc9fDcAxfQZtpm3nj40"
    
    @IBOutlet weak var story_window: StorylyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.story_window.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        self.story_window.rootViewController = self
        self.story_window.delegate = self
        self.story_window.storyGroupTextIsVisible = true
        self.story_window.storyGroupTextColor = UIColor.systemYellow
        self.story_window.storyGroupTextFont = UIFont.systemFont(ofSize: CGFloat(15))
        story_window.storyGroupTextLines = 4

        // Do any additional setup after loading the view.
    }


}
extension ViewController: StorylyDelegate {
    func storylyLoaded(_ storylyView: Storyly.StorylyView,
                       storyGroupList: [Storyly.StoryGroup],
                       dataSource: StorylyDataSource) {}
    func storylyLoadFailed(_ storylyView: Storyly.StorylyView,
                           errorMessage: String) {}
     
}

