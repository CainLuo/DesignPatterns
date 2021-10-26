//
//  RedViewController.swift
//  1.DelegatePattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

protocol RedViewControllerDelegate: AnyObject {
    func redDidRed()
}

class RedViewController: UIViewController {
    
    // MARK: - Properties
    weak var delegate: RedViewControllerDelegate?
    
    private let redButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.setTitle("I'm Red", for: .normal)
        button.addTarget(self, action: #selector(redAction), for: .touchUpInside)
        return button
    }()

    // MARK: - Lift Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Red View"
        view.backgroundColor = .white
        view.addSubview(redButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let height: CGFloat = 40.0
        let width: CGFloat = UIScreen.main.bounds.width
        let y: CGFloat = UIScreen.main.bounds.height / 2.0 - height / 2.0
        redButton.frame = CGRect(x: 0, y: y, width: width, height: height)
    }
    
    // MARK: - Red Button Action
    @objc func redAction() {
        delegate?.redDidRed()
        navigationController?.popViewController(animated: true)
    }
}
