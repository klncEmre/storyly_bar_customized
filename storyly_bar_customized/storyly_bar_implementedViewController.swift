//
//  storyly_bar_implementedViewController.swift
//  storyly_bar_customized
//
//  Created by Emre Kılınç on 20.06.2022.
//

import UIKit
import Storyly

class storyly_bar_implementedViewController: UIViewController {
    let screenSize: CGRect = UIScreen.main.bounds
    let STORYLY_INSTANCE_TOKEN = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NfaWQiOjc2MCwiYXBwX2lkIjo0MDUsImluc19pZCI6NDA0fQ.1AkqOy_lsiownTBNhVOUKc91uc9fDcAxfQZtpm3nj40"
    lazy var storylyView = StorylyView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.bounds = view.frame.insetBy(dx: 0, dy: -35.0);
        self.storylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        self.storylyView.rootViewController = self
        self.storylyView.delegate = self
        self.view.addSubview(storylyView)
        self.storylyView.backgroundColor = UIColor.white
        self.storylyView.translatesAutoresizingMaskIntoConstraints = false
        self.storylyView.widthAnchor.constraint(equalToConstant: screenSize.width).isActive = true
         //Set up delegat
        self.storylyView.storyGroupTextColor = UIColor.systemBlue
        self.storylyView.storyGroupIconBackgroundColor = UIColor.yellow
        self.storylyView.storyGroupIconBorderColorNotSeen = [UIColor.brown,UIColor.gray]
//        WHY FIRST STORY'S COLORS DID NOT CHANGED
        self.storylyView.storyGroupSize = "custom"
        self.storylyView.storyGroupIconStyling = StoryGroupIconStyling(height: CGFloat(100), width: CGFloat(screenSize.width / 4), cornerRadius: CGFloat(40))

        
        
    }
    
}
extension storyly_bar_implementedViewController: StorylyDelegate {
    func storylyLoaded(_ storylyView: Storyly.StorylyView,
                       storyGroupList: [Storyly.StoryGroup],
                       dataSource: StorylyDataSource) {}
    func storylyLoadFailed(_ storylyView: Storyly.StorylyView,
                           errorMessage: String) {}
    
    
}
