//
//  RepoFeedTableViewCell.swift
//  GithubDemo
//
//  Created by Liem Ly Quan on 10/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoFeedTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var repo: GithubRepo! {
        didSet {
            titleLabel.text = repo.name!
            authorLabel.text = repo.ownerHandle!
            if let url = URL(string: repo.ownerAvatarURL!) {
                authorImageView.setImageWith(url)
            }
            forkLabel.text = "\(repo.forks!)"
            starLabel.text = "\(repo.stars!)"
            descriptionLabel.text = repo.repoDescription!
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
