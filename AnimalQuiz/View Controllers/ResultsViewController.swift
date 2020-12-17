//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by Екатерина Батеева on 10.12.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты на экране
    // 4. Избавиться от кнопки возврата на предыдущий экран
    var resultArray: [Answer] = []
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let function = findMostFrequentNumber()
        
        titleLabel.text = "You are - \(function.type.rawValue)"
        descriptionLabel.text = function.type.definition
        
        navigationItem.hidesBackButton = true
        
        
    
    }
    
    func findMostFrequentNumber() -> Answer {
        let countedSet = NSCountedSet(array: resultArray)
        let mostFrequent = countedSet.max{countedSet.count(for: $0) < countedSet.count(for: $1)}
        return mostFrequent as! Answer
    }

}
