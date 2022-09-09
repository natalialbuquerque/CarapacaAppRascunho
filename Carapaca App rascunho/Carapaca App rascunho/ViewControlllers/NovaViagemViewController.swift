//
//  NovaViagemViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class NovaViagemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        // Inicialização da view que irá ser atribuída como view raiz do view controller
        let view = UIView()
        // MARK: - Inicializar os componentes/ as views
        let title1Label = UILabel()
        let roteiroTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        let proximoButton = UIButton(configuration: .filled())
        
        let title1LabelContainer = UIView()
        let roteiroTextFieldContainer = UIView()
        let proximoButtonContainer = UIView()
        
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das subviews
        view.addSubview(title1Label)
        view.addSubview(roteiroTextField)
        view.addSubview(proximoButton)
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(roteiroTextFieldContainer)
        stackView.addArrangedSubview(proximoButtonContainer)
        
        title1LabelContainer.addSubview(title1Label)
        roteiroTextFieldContainer.addSubview(roteiroTextField)
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
        
        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 16),
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.trailingAnchor.constraint(equalTo: roteiroTextFieldContainer.trailingAnchor, constant: -16)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16),
            proximoButton.topAnchor.constraint(equalTo: roteiroTextField.bottomAnchor, constant: 34)
        ])

        
        
        
        
        // MARK: - Configuração dos atributos dos componentes
        title1Label.textAlignment = .left
        title1Label.text = "Primeiro, dê um nome para sua aventura"
        title1Label.textColor = .black
        title1Label.font = UIFont.systemFont(ofSize: 28)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        roteiroTextField.placeholder = "Ex.: Mochilão pela Ásia 2023"
        roteiroTextField.font = UIFont.systemFont(ofSize: 17)
//        roteiroTextField.backgroundColor = .gray
        
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
struct NovaViagemViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            NovaViagemViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
