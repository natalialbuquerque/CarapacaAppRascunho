//
//  ViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 06/09/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
    override func loadView() {
        // Inicialização da view que irá ser atribuída como view raiz do view controller
        let view = UIView()
        // MARK: - Inicializar os componentes/ as views
        let bgHomeView = UIImageView(image: UIImage(named: "bgHome"))
        let title1Label = UILabel()
        let title2Label = UILabel()
        let criarRoteiroButton = UIButton(configuration: .filled())
        let meusRoteirosLabel = UILabel()
//        let meusRoteirosCollectionView = UICollectionView()
        
        
        let bgHomeContainer = UIView()
        let title1Container = UIView()
        let title2Container = UIView()
        let criarRoteiroButtonContainer = UIView()
        let meusRoteirosContainer = UIView()
//        let meusRoteirosCollectionViewContainer = UIView()
        
        
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das subviews
        view.addSubview(bgHomeView)
        view.addSubview(stackView)
        view.addSubview(title1Label)
        view.addSubview(title2Label)
        
        stackView.addArrangedSubview(bgHomeContainer)
        stackView.addArrangedSubview(title1Container)
        stackView.addArrangedSubview(title2Container)
        stackView.addArrangedSubview(criarRoteiroButtonContainer)
        stackView.addArrangedSubview(meusRoteirosContainer)
//        stackView.addArrangedSubview(meusRoteirosCollectionViewContainer)
        
        bgHomeContainer.addSubview(bgHomeView)
        title1Container.addSubview(title1Label)
        title2Container.addSubview(title2Label)
        criarRoteiroButtonContainer.addSubview(criarRoteiroButton)
        meusRoteirosContainer.addSubview(meusRoteirosLabel)
//        meusRoteirosCollectionViewContainer.addSubview(meusRoteirosCollectionView)
        
        
        // MARK: - Configuração das constraints de auto layout
        bgHomeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bgHomeView.topAnchor.constraint(equalTo: view.topAnchor),
            bgHomeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgHomeView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
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
            title1Label.bottomAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: -44),
//            title1Label.topAnchor.constraint(equalTo: NSLayoutAnchor<NSLayoutYAxisAnchor>)
        ])
        
        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.leadingAnchor.constraint(equalTo: title2Container.leadingAnchor, constant: 16),
            title2Label.bottomAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: -24)
        ])
        
        
        
        meusRoteirosLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            meusRoteirosLabel.leadingAnchor.constraint(equalTo: title2Container.leadingAnchor, constant: 16),
            meusRoteirosLabel.bottomAnchor.constraint(equalTo: criarRoteiroButton.bottomAnchor, constant: 50)
        ])
        
        
        
        criarRoteiroButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            criarRoteiroButton.centerXAnchor.constraint(equalTo: criarRoteiroButtonContainer.centerXAnchor),
            criarRoteiroButton.centerYAnchor.constraint(equalTo: criarRoteiroButtonContainer.bottomAnchor, constant: -390),
            criarRoteiroButton.trailingAnchor.constraint(equalTo: criarRoteiroButtonContainer.trailingAnchor, constant: -16),
            criarRoteiroButton.heightAnchor.constraint(equalToConstant: 64),
            criarRoteiroButton.topAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: 22)
        ])
        

        
        
        
        
        // MARK: - Configuração dos atributos dos componentes
        bgHomeView.contentMode = .scaleAspectFill
        
        title1Label.textAlignment = .left
        title1Label.text = "Olá, Mochileiro!"
        title1Label.textColor = .white
        title1Label.font = UIFont.boldSystemFont(ofSize: 24)
        
        title2Label.textAlignment = .left
        title2Label.text = "Crie as melhores viagens de forma simples"
        title2Label.textColor = .white
        
        criarRoteiroButton.setTitle("Criar novo roteiro!", for: .normal)
        criarRoteiroButton.setTitleColor(.white, for: .normal)
        criarRoteiroButton.tintColor = .systemGreen
        criarRoteiroButton.layer.cornerCurve = .continuous
        criarRoteiroButton.layer.cornerRadius = 40
        criarRoteiroButton.clipsToBounds = true
        
        
        meusRoteirosLabel.textAlignment = .left
        meusRoteirosLabel.text = "Meus Roteiros"
        meusRoteirosLabel.textColor = .black
        meusRoteirosLabel.font = UIFont.boldSystemFont(ofSize: 22)
        

        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        

        // Atribuição da view inicializada no começo da função
        self.view = view
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
            ViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
