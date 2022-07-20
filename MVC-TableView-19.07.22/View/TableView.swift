//
//  TableView.swift
//  MVC-TableView-19.07.22
//
//  Created by Pavel Абрамов on 19.07.2022.
//

import UIKit

class TableView: UIView {
    
    // MARK: - Element
    
    var model = Model.getModelList()
    
    private var controller: ViewController?
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    init(controller: ViewController) {
        super.init(frame: .zero)
        self.controller = controller
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // MARK: - public function
    
    private func commonInit() {
        tableView.backgroundColor = .init(patternImage: UIImage(named: "View")!)
        tableView.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    // MARK: - public function
    
    func setupData(data: [Model]) {
        model = data
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource

extension TableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let model = model[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = model.name
        content.secondaryText = model.image
        content.image = UIImage(named: model.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension TableView: UITableViewDelegate {
}
