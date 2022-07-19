//
//  Model.swift
//  MVC-TableView-19.07.22
//
//  Created by Pavel Абрамов on 19.07.2022.
//

import Foundation

struct Model {
    let image: String
    let name: String
    
    var title: String {
        "\(image) - \(name)"
    }
}

extension Model {
    static func getModelList() -> [Model] {
        [
            Model(image: "Модель данных", name: "Model"),
            Model(image: "Управление программой", name: "Controller"),
            Model(image: "Отображение", name: "View")
        ]
    }
}
