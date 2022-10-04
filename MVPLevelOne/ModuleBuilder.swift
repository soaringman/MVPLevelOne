//
//  ModuleBuilder.swift
//  MVPLevelOne
//
//  Created by Алексей Гуляев on 04.10.2022.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        //injection dependencies (можно инжектить через функцию или инициализатор)
        let model = Person(firstName: "Alexey", secondName: "Gulyev")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
    
    
}
