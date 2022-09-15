//
//  ExploreView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 15/09/22.
//

import UIKit

class ExploreView: UIView {
    
    
    let viewGreen: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = UIColor(red: 0.10, green: 0.42, blue: 0.33, alpha: 1.00)
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewRetangularGreen: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = UIColor(named: "VerdePrimaria")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let title1Label: UILabel = {
        title1Label.textAlignment = .left
        title1Label.text = "Explore o mundo"
        title1Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        title1Label.font = UIFont.boldSystemFont(ofSize: 28)
    }
    
    let title2Label = UILabel()
    let localizacaoButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupHierarchy() {
        addSubview(viewRetangularGreen)
        addSubview(viewGreen)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            viewGreen.topAnchor.constraint(equalTo: topAnchor),
            viewGreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewGreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewGreen.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            viewRetangularGreen.topAnchor.constraint(equalTo: topAnchor),
            viewRetangularGreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewRetangularGreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewRetangularGreen.bottomAnchor.constraint(equalTo: viewGreen.centerYAnchor)
        ])
    }
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExploreView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExploreView().showPreview().previewLayout(.fixed(width: 375.0, height: 219.0))
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
