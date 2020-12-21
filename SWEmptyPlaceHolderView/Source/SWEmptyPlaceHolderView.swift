//
//  SWEmptyPlaceHolderView.swift
//  SWEmptyPlaceHolderView
//
//  Created by Sean on 21/12/2020.
//

import Foundation
import UIKit

class SWEmptyPlaceHolderView: UIView {
    var imageView: UIImageView!
    var imageLabel: UILabel!
    var gap: CGFloat = 8
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }
    
    func setupView() {
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        
        imageView = UIImageView()
        let image = UIImage(named: "binoculars")
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageLabel = UILabel()
        imageLabel.text = "SWEmptyPlaceHolderView"
        imageLabel.translatesAutoresizingMaskIntoConstraints = false
        imageLabel.textAlignment = .center
        
        self.addSubview(imageView)
        self.addSubview(imageLabel)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: gap),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    func configureView(image: UIImage?,
                       text: String?,
                       imageSize: CGSize = CGSize(width: 100, height: 100)) {
        imageView?.image = image
        imageLabel?.text = text
                
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: imageSize.height),
            imageView.widthAnchor.constraint(equalToConstant: imageSize.width)
        ])
    }
}


extension UIView{
    func addFullscreenView(_ view: UIView,
                           left: CGFloat = 0,
                           right: CGFloat = 0,
                           top: CGFloat = 0,
                           bottom: CGFloat = 0) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.safeAreaLayoutGuide.leadingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: left),
            view.safeAreaLayoutGuide.topAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.topAnchor, constant: top),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -right),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -bottom)
        ])
    }
}
