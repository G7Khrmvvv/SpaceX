//
//  File.swift
//  SpaceX
//
//  Created by imac on 23.03.24.
//

import UIKit
import SnapKit



final class PropertyViewController: UIViewController {
    
    private let height = UILabel()
    
    private let diameter = UILabel()
    
    private let weight = UILabel()
    
    private let payload = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
        self.title = "Property"
    }
}

private extension PropertyViewController {
    func embedViews() {
        [
            height,
            diameter,
            weight,
            payload
        
        ].forEach{view.addSubview($0)}
    }
}

private extension PropertyViewController {
    func setupLayout() {
        
        
    }
}

private extension PropertyViewController {
    func setupAppearance() {
        
        view.backgroundColor = .green
        

    }
}

private extension PropertyViewController {
    func setupData() {
        
        
        
    }
}

private extension PropertyViewController {
    func setupBehavior() {

    }
}

