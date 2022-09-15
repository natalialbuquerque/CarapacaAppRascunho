//
//  LocalizacaoViewController.swift
//  Carapaca App rascunho
//
//  Created by mcor on 14/09/22.
//

import UIKit

class LocalizacaoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        let view = UIView()
    
    // MARK: - Inicializar os componentes/ as views
    let titleLabel = UILabel()
    
    
    
    // MARK: - Setup na hierarquia das subviews
    view.addSubview(titleLabel)
    
    // MARK: - Configuração das constraints de auto layout
//        titleLabel.translatesAutoresizingMaskIntoConstraints =  false
//        NSLayoutConstraint.activate([
//            titleLabel.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>)
//        
//        ])
        
    // MARK: - Configuração dos atributos dos componentes
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LocalizacaoViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LocalizacaoViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

