//
//  ViewController.swift
//  MVPLevelOne
//
//  Created by Алексей Гуляев on 04.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var greetinLabel:UILabel!
    
    //иньекция зависимостей снаружи
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: - IBAction
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }
}

//(сделаем binding) свяжем с view. Тоесть когда презентер нам что то пришлет мы это свяжем с вью
extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetinLabel.text = greeting
    }
    
    
}

