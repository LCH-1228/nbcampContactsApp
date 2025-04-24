//
//  ContactsListView.swift
//  nbcampContactsApp
//
//  Created by Chanho Lee on 4/24/25.
//
import UIKit

class ContactsListView: UIView {
    
    lazy var contactList: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        [
            contactList,
        ].forEach{ self.addSubview($0) }
        
        contactList.snp.makeConstraints {
            $0.size.equalToSuperview()
            $0.center.equalToSuperview()
        }
    }
    
    
    
}
