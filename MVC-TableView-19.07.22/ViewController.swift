//
//  ViewController.swift
//  MVC-TableView-19.07.22
//
//  Created by Pavel Абрамов on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var myView: TableView? {
        guard isViewLoaded else { return nil }
        return view as? TableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = TableView(controller: self)
    }

//    let tableView = UITableView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(tableView)
//        tableView.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        tableView.frame = view.bounds
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        cell.textLabel?.text = "Cell \(indexPath.row + 1)"
//        return cell
//    }

}

