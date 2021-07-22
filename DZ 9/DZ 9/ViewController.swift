//
//  ViewController.swift
//  DZ 9
//
//  Created by AWAIN on 18.07.2021.
//

import UIKit


class ViewController: UIViewController {
    ///// MARK: Navigation metod
    func getViewController(from id: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let currentViewController = storyboard.instantiateViewController(withIdentifier: id)
        currentViewController.modalPresentationStyle = .fullScreen
        currentViewController.modalTransitionStyle = .crossDissolve
        return currentViewController
    }
    @IBAction func backToMenu(_ sender: Any) {
        timer?.invalidate()
        present(getViewController(from: "MainMenuController"), animated: true, completion: nil)
    }
    var timer: Timer?
    var countTimer: Int = 0
    var time: UILabel!
    var checkersBoard: UIView!
    let board = UIImageView()
    @IBOutlet weak var deskboard: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        time = UILabel(frame: CGRect(x: 0, y: 50, width: 100, height: 100))
        time.font = .systemFont(ofSize: 25)
        time.text = "\(countTimer)"
        time.textColor = .white
        time.center.x = view.center.x
        view.addSubview(time)
        
        timer = Timer(timeInterval: 1, target: self, selector: #selector(timerGo), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!, forMode: .common)
        makeBoard()
    }
    
    @objc func timerGo() {
        countTimer += 1
        time.text = "\(countTimer)"
        print("timer")
    }
func makeBoard()  {
    
    
    let size = view.bounds.size.width - 32
    
    checkersBoard = UIView(frame: CGRect(origin: .zero, size: CGSize(width: size, height: size)))
    checkersBoard.backgroundColor = UIColor.white
    view.addSubview(checkersBoard)
    checkersBoard.center = view.center
    let sizeColumn = size / 8
    for x in 0..<8 {
        for y in 0..<8 {
            if x % 2 == y % 2 {
                let value = UIView(frame: CGRect(x: sizeColumn * CGFloat(x), y: sizeColumn * CGFloat(y), width: sizeColumn, height: sizeColumn))
                value.backgroundColor = UIColor.black
                
                checkersBoard.addSubview(value)
                
                guard y < 3 || y > 4, value.backgroundColor == .black else { continue }
                    
                let chekers = UIImageView(frame: CGRect(x: 5, y: 5, width: sizeColumn - 10, height: sizeColumn - 10))
                chekers.image = UIImage()
                if  y > 4 {
                    chekers.image = .init(named: "redChecker")
                }
                if y < 3 {
                    chekers.image = .init(named: "whiteCheker")
                }
                chekers.layer.cornerRadius = chekers.bounds.size.height / 2
                chekers.isUserInteractionEnabled = true
                value.addSubview(chekers)
                
                let panRecognaser = UIPanGestureRecognizer(target: self, action: #selector(panRecognaser(_:)))
                chekers.addGestureRecognizer(panRecognaser)
                }
            }
        }
    }

    @objc func panRecognaser(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: checkersBoard)
        let translation = sender.translation(in: checkersBoard)
        
        switch sender.state {
        case .changed:
            guard let gate = sender.view?.superview, let cellOrigin = sender.view?.frame.origin else { return }
            checkersBoard.bringSubviewToFront(gate)
            sender.view?.frame.origin = CGPoint(x: cellOrigin.x + translation.x,
                                                y: cellOrigin.y + translation.y)
            sender.setTranslation(.zero, in: checkersBoard)
        case .ended:
            var revCell: UIView? = nil

            for cell in checkersBoard.subviews{
                if cell.frame.contains(location), cell.backgroundColor == .black {
                    revCell = cell
                }
            }
            sender.view?.frame.origin = CGPoint(x: 5, y: 5)
            guard revCell == revCell, ((revCell?.subviews.isEmpty) != nil), let cell = sender.view else {
                return
            }
            revCell?.addSubview(cell)
        default:
            break
        }
    }
    
    
    
    
    
    
    
}
