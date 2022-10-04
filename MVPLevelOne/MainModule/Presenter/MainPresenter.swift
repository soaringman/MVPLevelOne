//
//  MainPresenter.swift
//  MVPLevelOne
//
//  Created by Алексей Гуляев on 04.10.2022.
//

import Foundation

//протокол должен быть типа AnyClass для того что бы ссылки были слабыми
//протокол будет сообщать  view что то
//input porotocol
protocol MainViewProtocol {
    //напишем метод который будет отправлять сообщение нашей view
    func setGreeting(greeting: String)
}

//дробим наши протоколы, одна отвественность один протокол,
//Делать иньекцию зависимостей Dependency Injection Dependency Inversion
//output protocol
protocol MainViewPresenterProtocol {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

//Теперь создадим класс подписанный под наш протокол MainViewPresenterProtocol
//Он достаточно абстрактный и тем самым мы удовлетворяем будкве D

class MainPresenter: MainViewPresenterProtocol {
    //для управления view
    let view: MainViewProtocol
    //для управления моделью
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.secondName
        self.view.setGreeting(greeting: greeting)
    }
}
