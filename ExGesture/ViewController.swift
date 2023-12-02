//
//  ViewController.swift
//  ExGesture
//
//  Created by 김종권 on 2023/12/02.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeGestureRecognizer.direction = .up
        view.addGestureRecognizer(swipeGestureRecognizer)

        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        view.addGestureRecognizer(panGestureRecognizer)

        swipeGestureRecognizer.delegate = self
        panGestureRecognizer.delegate = self
    }

    @objc func handleSwipe(_ gestureRecognizer: UISwipeGestureRecognizer) {
        print("swipe!!")
    }

    @objc func handlePan(_ gestureRecognizer: UIPanGestureRecognizer) {
        print("Pan!")
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
