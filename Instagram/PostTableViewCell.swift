//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by hiro on 2016/10/11.
//  Copyright © 2016年 hiro. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var createdAt: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postText: UILabel!

    @IBAction func likeButton(_ sender: AnyObject) {
    }
    @IBAction func commentButton(_ sender: AnyObject) {
    }
    var post: Post! {
        didSet{
            updateUI()
        }
    }
    
    private func updateUI(){
        // 画像を丸める
        userImage.layer.cornerRadius = userImage.layer.bounds.width / 2
        postImage.layer.cornerRadius = 5.0
        userImage.clipsToBounds = true
        postImage.clipsToBounds = true
        
        userImage.image! = post.user.profileImage
        userName.text! = post.user.fullName
        createdAt.text! = post.createdAt
        postImage.image! = post.postImage
        postText.text! = post.postText
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
