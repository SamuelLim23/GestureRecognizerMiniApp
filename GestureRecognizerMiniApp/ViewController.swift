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
    
    func movePuzzle(_ gesture: UIPanGestureRecognizer){
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
    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer){
        movePuzzle(gesture)
    }
    
    @IBAction func handlePan1(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan2(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan3(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan4(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan5(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    
    @IBAction func handlePan6(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan7(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
    
    @IBAction func handlePan8(_ sender: UIPanGestureRecognizer) {
        movePuzzle(sender)
    }
}
