//
//  myAccountsController.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit

class myAccountsController: BaseViewController, UICollectionViewDelegateFlowLayout{

    let cellId = "cellId"
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.width, height: view.frame.height) //this is for cell size
        let cvc = UICollectionView(frame: CGRect(origin: CGPointMake(0, 100), size: CGSize(width: view.frame.width, height: view.frame.height - 100)), collectionViewLayout: layout)
        return cvc
    }()
    
    
override func viewDidLoad() {
        super.viewDidLoad()
   
        collectionView.backgroundColor = UIColor.backgroundGray
        collectionView.register(AccountsCell.self, forCellWithReuseIdentifier: cellId)

        navigationItem.title = "My Accounts"

        view.addSubview(whiteView)
        
        whiteView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        vc.view.backgroundColor = .white
        vc.view.frame = CGRect(x: -305, y: 0, width: 305, height: 966)
        let mainWindow = UIApplication.shared.keyWindow
        mainWindow?.addSubview(vc.view)
        addChild(vc)


        view.backgroundColor = .systemPink
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "home3").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleRightNavigationItem))

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "HamburgerButton").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleLeftNavigationItem))

        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        view.addGestureRecognizer(panGesture)
        setupDarkCoverView()
    }
    
    let vc = SlideOutMenu()
    var isMenuOpened = false
    let darkCoverView = UIView()
    
    fileprivate func setupDarkCoverView() {
        darkCoverView.alpha = 0
        let mainWindow = UIApplication.shared.keyWindow
        darkCoverView.isUserInteractionEnabled = false
        mainWindow?.addSubview(darkCoverView)
        darkCoverView.frame = mainWindow?.frame ?? .zero
        darkCoverView.backgroundColor = UIColor(white: 0, alpha: 0.7)
    }

    @objc func performAnimations(transform: CGAffineTransform) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            //self.view.transform = transform
            self.vc.view.transform = transform
            self.navigationController?.view.transform = transform
            self.darkCoverView.transform = transform
            
            self.darkCoverView.alpha = transform == .identity ? 0:1 
            
        })
    }
    
    override func handleRightNavigationItem() {
        isMenuOpened = true
        print("HamburgerButton button pressed")
        performAnimations(transform: CGAffineTransform(translationX: 305, y: 0))
    }

    override func handleLeftNavigationItem() {
        isMenuOpened = false
        print("Hiding menu...")
        performAnimations(transform: .identity)
        
    }

    @objc func handlePanGesture(gesture: UIPanGestureRecognizer) {
        
        let pull = gesture.translation(in: view)
        let velocity = gesture.velocity(in: view)
        
        if gesture.state == .changed {
            var x = pull.x
            if isMenuOpened {
                x += 305
            }
            x = min(305, x)
            x = max(0, x)
            vc.view.transform = CGAffineTransform(translationX: x, y: 0)
            navigationController?.view.transform = CGAffineTransform(translationX: x, y: 0)
            darkCoverView.transform = CGAffineTransform(translationX: x, y: 0)
            darkCoverView.alpha = x / 305
            
        } else if gesture.state == .ended {
            
            if isMenuOpened {
                
                if abs(velocity.x) > 500 {
                    handleRightNavigationItem()
                    return
                }
                
                if abs(pull.x) < 305 / 2 {
                    handleLeftNavigationItem()
                }
                else {
                    handleRightNavigationItem()
                }
            }
            
            else {
                
                if velocity.x > 500 {
                    handleLeftNavigationItem()
                    return
                }
                
                if pull.x < 305/2 {
                    handleRightNavigationItem()
                }
                else {
                    handleLeftNavigationItem()
                }
            }
            
        }
    }
    
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5

    }

    private func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AccountsCell
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return.init(width: 351, height: 154)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 32
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return.init(top: 32, left: 0, bottom: 32, right: 0)
    }

//        init() {
//            super.init(collectionViewLayout: UICollectionViewFlowLayout())
//        }

//        required init?(coder aDecoder: NSCoder) {
//           fatalError("init(coder:) has not been implemented")
//      }

   }




    
  

