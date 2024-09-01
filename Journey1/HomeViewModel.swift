//
//  HomeViewModel.swift
//  Journey1
//
//  Created by Gustavo Araujo Santos on 20/06/24.
//

import Foundation

protocol HomeViewModelDelegate: AnyObject {
    func navigateToJourney4()
}

class HomeViewModel {
    
    weak var delegate: HomeViewModelDelegate?
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    func navigateToJourney4() {
        delegate?.navigateToJourney4()
    }
}
