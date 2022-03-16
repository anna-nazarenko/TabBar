//
//  SecondTabController.swift
//  TabBar
//
//  Created by Anna Nazarenko on 10.03.2022.
//

import UIKit
import SwiftUI

class SecondTabController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Second Tab Controller"
    addSwiftUI()
  }

  func addSwiftUI() {
    let hostingController = UIHostingController(rootView: SwiftUIView())
    
    addChild(hostingController)

    view.addSubview(hostingController.view)
    hostingController.didMove(toParent: self)
    
    hostingController.view.translatesAutoresizingMaskIntoConstraints = false
    
    let constraints = [
      hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
      hostingController.view.leftAnchor.constraint(equalTo: view.leftAnchor),
      hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      hostingController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
    ]
    
    NSLayoutConstraint.activate(constraints)
  }
}
