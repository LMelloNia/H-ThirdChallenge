//
//  FourthViewController.swift
//  H-ThirdChallenge
//
//  Created by 김시훈 on 2022/09/28.
//

import UIKit

class FourthViewController: UIViewController {

//    lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//                layout.minimumLineSpacing = 10
//
//                layout.scrollDirection = .vertical
//                layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//       let ctv = UICollectionView()
//        ctv.translatesAutoresizingMaskIntoConstraints = false
//        return ctv
//    }()
    let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
//        layout.minimumLineSpacing = 10
//
//        layout.scrollDirection = .vertical
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
       
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .purple
        return cv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        autoLayout()
        // Do any additional setup after loading the view.
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
//            collectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
//            collectionView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0),
//            collectionView.widthAnchor.constraint(equalToConstant: 250),
//            collectionView.heightAnchor.constraint(equalToConstant: 250)
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

extension FourthViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "codeCell", for: indexPath) as! CollectionViewCell
        return cell
    }
//    func collectionView(
//              _ collectionView: UICollectionView,
//              layout collectionViewLayout: UICollectionViewLayout,
//              sizeForItemAt indexPath: IndexPath
//         ) -> CGSize {
//              return CGSize(width: 300, height: 100)
//         }
    
}

