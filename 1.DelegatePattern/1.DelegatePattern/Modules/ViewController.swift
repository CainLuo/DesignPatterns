//
//  ViewController.swift
//  1.DelegatePattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    private let pushButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Push", for: .normal)
        button.addTarget(self, action: #selector(pushRedController), for: .touchUpInside)
        return button
    }()

    // MARK: - Lift Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.addSubview(pushButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let height: CGFloat = 40.0
        let width: CGFloat = UIScreen.main.bounds.width
        let y: CGFloat = UIScreen.main.bounds.height / 2.0 - height / 2.0
        pushButton.frame = CGRect(x: 0, y: y, width: width, height: height)
    }
    
    // MARK: - Push button action
    @objc func pushRedController() {
        let vc = RedViewController()
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - RedViewDelegate
extension ViewController: RedViewControllerDelegate {
    func redDidRed() {
        view.backgroundColor = .red
        print("💥💥💥 --- I'm Red!!!! --- 💥💥💥")
    }
}
