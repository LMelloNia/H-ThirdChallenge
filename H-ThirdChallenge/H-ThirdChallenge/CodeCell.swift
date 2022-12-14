//
//  CodeCell.swift
//  H-ThirdChallenge
//
//  Created by κΉμν on 2022/09/28.
//

import UIKit

class CodeCell: UITableViewCell {

    static let identifier = "CodeCell"
    
    lazy var codeImageView: UIImageView = {
       let civ = UIImageView()
        civ.translatesAutoresizingMaskIntoConstraints = false
        civ.backgroundColor = .orange
        return civ
    }()
    
    lazy var codeLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .orange
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: .default, reuseIdentifier: reuseIdentifier)
        setupUI()
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func setupUI() {
        contentView.addSubview(codeImageView)
        contentView.addSubview(codeLabel)
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            codeImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            codeImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            codeImageView.widthAnchor.constraint(equalToConstant: 100),
            codeImageView.heightAnchor.constraint(equalToConstant: 100),
            codeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            codeLabel.leadingAnchor.constraint(equalTo: self.codeImageView.trailingAnchor, constant: 10),
            codeLabel.widthAnchor.constraint(equalToConstant: 250),
            codeLabel.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    

}
