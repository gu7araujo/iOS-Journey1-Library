//
//  Journey1Coordinator.swift
//  Journey1
//
//  Created by Gustavo Araujo Santos on 20/06/24.
//

import Foundation
import UIKit
import Core

public protocol Journey1CoordinatorDelegate: AnyObject {
    func navigateToJourney4()
}

public class Journey1Coordinator: CoordinatorProtocol {
    
    public weak var delegate: (any Journey1CoordinatorDelegate)?
    public weak var finishDelegate: (any CoordinatorFinishDelegate)?
    public var navigationController: UINavigationController
    public var childCoordinators: [any CoordinatorProtocol] = []
    public var parentCoordinator: (any CoordinatorProtocol)?
    public var type: CoordinatorType = .journey1
    
    public required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    public func start() {
        let viewModel = HomeViewModel()
        viewModel.delegate = self
        let viewController = HomeViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension Journey1Coordinator: HomeViewModelDelegate {
    func navigateToJourney4() {
        delegate?.navigateToJourney4()
    }
}
