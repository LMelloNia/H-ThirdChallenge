//
//  SecondViewController.swift
//  H-ThirdChallenge
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var tableView:UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.backgroundColor = .blue
        
        return tb
    }()
    
    let imageArray = ["trash","trash.fill","trash.circle"]
    let textData = ["one","tow","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.register(CodeCell.self, forCellReuseIdentifier: CodeCell.identifier)
        tableView.rowHeight = 120
        tableView.dataSource = self
        tableView.delegate = self
        setupUI()
        autoLayout()
        // Do any additional setup after loading the view.
    }
    func setupUI() {
        [
        tableView
        ].forEach{view.addSubview($0)}
    }
    
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70)
//            tableView.widthAnchor.constraint(equalToConstant: 300),
//            tableView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CodeCell.identifier, for: indexPath) as! CodeCell
        cell.codeImageView.image = UIImage(systemName: imageArray[indexPath.row])
        cell.codeLabel.text = textData[indexPath.row]
//        cell.selectionStyle = .none
        return cell
    }
    
    
}
