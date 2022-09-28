//
//  ViewController.swift
//  H-ThirdChallenge
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var storyboardCellButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("스토리보드로 만든 커스텀 셀", for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(moveFirstView), for: .touchUpInside)
        return btn
    }()
    
    lazy var codeCellButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("코드로 만든 커스텀 셀", for: .normal)
        btn.backgroundColor = .orange
        btn.addTarget(self, action: #selector(moveSecondView), for: .touchUpInside)
        return btn
    }()
    
    lazy var storyboardCollectionViewButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("스토리보드로 만든 컬랙션 뷰", for: .normal)
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(moveThirdView), for: .touchUpInside)
        return btn
    }()
    
    lazy var codeCollectionViewButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("코드로 만든 컬랙션 뷰", for: .normal)
        btn.backgroundColor = .purple
        btn.addTarget(self, action: #selector(moveFourthView), for: .touchUpInside)
        return btn
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        autoLayout()
        // Do any additional setup after loading the view.
    }

    func setupUI() {
        [
            storyboardCellButton,codeCellButton,storyboardCollectionViewButton,codeCollectionViewButton
        ].forEach{view.addSubview($0)}
    }
    
    
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            storyboardCellButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            storyboardCellButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            storyboardCellButton.widthAnchor.constraint(equalToConstant: 300),
            storyboardCellButton.heightAnchor.constraint(equalToConstant: 50),
            codeCellButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            codeCellButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            codeCellButton.widthAnchor.constraint(equalToConstant: 300),
            codeCellButton.heightAnchor.constraint(equalToConstant: 50),
            storyboardCollectionViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            storyboardCollectionViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            storyboardCollectionViewButton.widthAnchor.constraint(equalToConstant: 300),
            storyboardCollectionViewButton.heightAnchor.constraint(equalToConstant: 50),
            codeCollectionViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            codeCollectionViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            codeCollectionViewButton.widthAnchor.constraint(equalToConstant: 300),
            codeCollectionViewButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    //MARK: 화면이동 함수
    @objc func moveFirstView() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "firstVC") as! FirstViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func moveSecondView() {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func moveThirdView() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "thirdVC") as! ThirdViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func moveFourthView() {
        let vc = FourthViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

