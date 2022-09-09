//
//  ColocarDestinosViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ColocarDestinosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        // Inicialização da view que irá ser atribuída como view raiz do view controller
        let view = UIView()
        // MARK: - Inicializar os componentes/ as views
        let title1Label = UILabel()
        let title2Label = UILabel()
        let roteiroTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        let adicionarButton = UIButton(configuration: .filled())
        let proximoButton = UIButton(configuration: .filled())
        
        let title1LabelContainer = UIView()
        let title2LabelContainer = UIView()
        let roteiroTextFieldContainer = UIView()
        let adicionarButtonContainer = UIView()
        let proximoButtonContainer = UIView()
        
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das subviews
        view.addSubview(title1Label)
        view.addSubview(title2Label)
        view.addSubview(roteiroTextField)
        view.addSubview(proximoButton)
        view.addSubview(adicionarButton)
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(title2LabelContainer)
        stackView.addArrangedSubview(roteiroTextFieldContainer)
        stackView.addArrangedSubview(adicionarButtonContainer)
        stackView.addArrangedSubview(proximoButtonContainer)
        
        title1LabelContainer.addSubview(title1Label)
        roteiroTextFieldContainer.addSubview(roteiroTextField)
        adicionarButtonContainer.addSubview(adicionarButton)
        proximoButtonContainer.addSubview(proximoButton)
        
        
        
        // MARK: - Configuração das constraints de auto layout
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1LabelContainer.leadingAnchor),
            title1Label.trailingAnchor.constraint(equalTo: title1LabelContainer.trailingAnchor),
            title1Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            title1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
        
        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 16),
            title2Label.leadingAnchor.constraint(equalTo: title2LabelContainer.leadingAnchor, constant: 16),
            title2Label.trailingAnchor.constraint(equalTo: title2LabelContainer.trailingAnchor, constant: -16)
            
        ])
        
        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 32),
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.trailingAnchor.constraint(equalTo: roteiroTextFieldContainer.trailingAnchor, constant: -30)
        ])
        
        
        adicionarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adicionarButton.trailingAnchor.constraint(equalTo: adicionarButtonContainer.trailingAnchor, constant: -16),
            adicionarButton.topAnchor.constraint(equalTo: roteiroTextField.bottomAnchor, constant: 34)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.centerXAnchor.constraint(equalTo: proximoButtonContainer.centerXAnchor),
            proximoButton.leadingAnchor.constraint(equalTo: proximoButtonContainer.leadingAnchor, constant: 16),
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16)
        ])

        
        // MARK: - Configuração dos atributos dos componentes
        title1Label.textAlignment = .left
        title1Label.text = "Quais cidades você quer curtir?"
        title1Label.textColor = .black
        title1Label.font = UIFont.systemFont(ofSize: 28)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        title2Label.textAlignment = .left
        title2Label.text = "Primeiro destino"
        title2Label.textColor = .gray
        title2Label.font = UIFont.systemFont(ofSize: 12)
        title2Label.lineBreakMode = .byWordWrapping
        title2Label.numberOfLines = 1
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        roteiroTextField.placeholder = "Escolha uma cidade ou estado"
        roteiroTextField.font = UIFont.systemFont(ofSize: 17)
//        roteiroTextField.backgroundColor = .gray
        
        adicionarButton.setTitle("  Adicionar  ", for: .normal)
        adicionarButton.setTitleColor(.white, for: .normal)
        adicionarButton.tintColor = .systemBlue
        adicionarButton.layer.cornerCurve = .continuous
        adicionarButton.layer.cornerRadius = 40
        adicionarButton.clipsToBounds = true
        
        proximoButton.setTitle("  Próximo  ", for: .normal)
        proximoButton.setTitleColor(.white, for: .normal)
        proximoButton.tintColor = .systemGreen
        proximoButton.layer.cornerCurve = .continuous
        proximoButton.layer.cornerRadius = 40
        proximoButton.clipsToBounds = true
        
        
        

        // Atribuição da view inicializada no começo da função
        self.view = view
    }



}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ColocarDestinosViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ColocarDestinosViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
