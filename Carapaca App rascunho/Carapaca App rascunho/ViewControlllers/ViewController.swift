//
//  ViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 06/09/22.
//

import UIKit

class ViewController: UIViewController{
    
    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = homeView
        homeView.delegate = self

//        meusRoteirosCollectionView.dataSource = self
//        meusRoteirosCollectionView.delegate = self
    }    
}

extension ViewController: HomeViewDelegate{
    func criarRoteiro() {
        print("Deve aparecer a próxima página")
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
