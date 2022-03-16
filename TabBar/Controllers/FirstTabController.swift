//
//  FirstTabController.swift
//  TabBar
//
//  Created by Anna Nazarenko on 10.03.2022.
//

import UIKit

class FirstTabController: UITableViewController {
  
  let randomWords = [
    "Anna Nazarenko 1",
    "Anna Nazarenko 2",
    "Anna Nazarenko 3",
    "Anna Nazarenko 4",
    "Anna Nazarenko 5",
    "Anna Nazarenko 6",
    "Anna Nazarenko 7",
    "Anna Nazarenko 8",
    "Anna Nazarenko 9",
    "Anna Nazarenko 10",
    "Anna Nazarenko 11",
    "Anna Nazarenko 12",
    "Anna Nazarenko 13",
    "Anna Nazarenko 14",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
    "Anna Nazarenko 15",
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "First Tab Controller"
    navigationController?.navigationBar.prefersLargeTitles = true

//    addLabel()
  }

  func addLabel() {
    let label = UILabel()
    label.text = "Tab Bar 1"
    label.backgroundColor = .red
//    label.frame = CGRect(width: 300, height: 20)
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    
    let constraints = [
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ]
    
    NSLayoutConstraint.activate(constraints)
  }
}

extension FirstTabController {
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return randomWords.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
    cell.textLabel?.text = randomWords[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.performSegue(withIdentifier: "goToDetailVC", sender: self)
//    navigationController?.pushViewController(DetailViewController(), animated: true)
//    pushDetailVC()
  }
}

extension FirstTabController {
  func pushDetailVC() {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let detailsVC = storyBoard.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
//    if let indexPath = tableView.indexPathForSelectedRow, let devices = self.devicesPresenter?.devices {
//      detailsVC.device = devices[indexPath.row]
//    }
    self.performSegue(withIdentifier: "DetailVC", sender: self)
  }
}
