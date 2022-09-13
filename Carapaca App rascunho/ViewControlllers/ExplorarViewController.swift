
//  ExplorarViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ExplorarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        // Inicialização da view que irá ser atribuída como view raiz do view controller
        let view = UIView()
        // MARK: - Inicializar os componentes/ as views
        let viewBlue = UIView(frame: CGRect.init(x: 0, y: 0, width: 20, height: 20))
        let title1Label = UILabel()
        let title2Label = UILabel()
        let localizacaoButton = UIButton()
        
        
        let viewBlueContainer = UIView()
        let title1Container = UIView()
        let title2Container = UIView()
        let localizacaoButtonContainer = UIView()

        
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das subviews
        view.addSubview(viewBlue)
        view.addSubview(stackView)
        view.addSubview(title1Label)
        view.addSubview(title2Label)
        view.addSubview(localizacaoButton)
        
        
        stackView.addArrangedSubview(viewBlueContainer)
        stackView.addArrangedSubview(title1Container)
        stackView.addArrangedSubview(title2Container)
        stackView.addArrangedSubview(localizacaoButtonContainer)
        
        
        
        viewBlueContainer.addSubview(viewBlue)
        title1Container.addSubview(title1Label)
        title2Container.addSubview(title2Label)
        localizacaoButtonContainer.addSubview(localizacaoButton)
        
        
        // MARK: - Configuração das constraints de auto layout
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewBlue.leadingAnchor.constraint(equalTo: viewBlueContainer.leadingAnchor),
            viewBlue.trailingAnchor.constraint(equalTo: viewBlueContainer.trailingAnchor),
            viewBlue.topAnchor.constraint(equalTo: viewBlueContainer.topAnchor),
            viewBlue.bottomAnchor.constraint(equalTo: viewBlueContainer.bottomAnchor),
            
            
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    stackView.topAnchor.constraint(equalTo: view.topAnchor),
                    stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
            title1Label.bottomAnchor.constraint(equalTo: viewBlue.bottomAnchor, constant: -44)
        ])
        
        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.leadingAnchor.constraint(equalTo: title2Container.leadingAnchor, constant: 16),
            title2Label.bottomAnchor.constraint(equalTo: viewBlue.bottomAnchor, constant: -24)
        ])
        
        localizacaoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            localizacaoButton.leadingAnchor.constraint(equalTo: localizacaoButtonContainer.leadingAnchor),
//            localizacaoButton.topAnchor.constraint(equalTo: localizacaoButtonContainer.topAnchor),
//            localizacaoButton.bottomAnchor.constraint(equalTo: localizacaoButtonContainer.bottomAnchor),
//            localizacaoButton.topAnchor.constraint(equalTo: title2Label.bottomAnchor, constant: -100),
//            localizacaoButton.bottomAnchor.constraint(equalTo: viewBlue.bottomAnchor)
            localizacaoButton.leadingAnchor.constraint(equalTo: localizacaoButtonContainer.leadingAnchor, constant: 16),
            localizacaoButton.bottomAnchor.constraint(equalTo: viewBlue.bottomAnchor, constant: -24)
        ])
        
        
        
        // MARK: - Configuração dos atributos dos componentes
        viewBlue.contentMode = .scaleAspectFill
        viewBlue.backgroundColor = .blue
        viewBlue.layer.cornerRadius = 25
        
        title1Label.textAlignment = .left
        title1Label.text = "Explore o mundo"
        title1Label.textColor = .white
        title1Label.font = UIFont.boldSystemFont(ofSize: 24)
        
        
        title2Label.textAlignment = .left
        title2Label.text = "Encontre os melhores lugares para você visitar!"
        title2Label.textColor = .white
        

        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        localizacaoButton.setTitle("     Sua Localização     ", for: .normal)
        localizacaoButton.setTitleColor(.black, for: .normal)
        localizacaoButton.tintColor = .systemGreen
        localizacaoButton.layer.cornerCurve = .continuous
        localizacaoButton.layer.cornerRadius = 40
        localizacaoButton.clipsToBounds = true
        
        view.backgroundColor = .white
        
        // Atribuição da view inicializada no começo da função
        self.view = view
    }



}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExplorarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExplorarViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
