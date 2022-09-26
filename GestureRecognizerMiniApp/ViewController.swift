//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by SAMUEL LIM on 9/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cursorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            let location = sender.location(in: view)
            cursorImage.center.x = location.x
            cursorImage.center.y = location.y
            }
    }
    
    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
        // 1
        let translation = gesture.translation(in: view)

        // 2
        guard let gestureView = gesture.view else {
          return
        }

        gestureView.center = CGPoint(
          x: gestureView.center.x + translation.x,
          y: gestureView.center.y + translation.y
        )

        // 3
        gesture.setTranslation(.zero, in: view)
      }
}
