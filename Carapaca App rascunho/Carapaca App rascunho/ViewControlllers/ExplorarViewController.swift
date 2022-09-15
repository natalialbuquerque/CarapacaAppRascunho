//
//  ExplorarViewController.swift
//  Carapaca App rascunho
//
//  Created by mcor on 14/09/22.
//

import UIKit

class ExplorarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        let view = UIView()
    

    // MARK: - Inicializar os componentes/ as views
    
    let viewGreen = UIView()
    let title1Label = UILabel()
    let title2Label = UILabel()
    let localizacaoButton = UIButton()
    let title3Label = UILabel()
    let verMais1Button = UIButton()
        
    let viewGreenContainer = UIView()
    let title1Container = UIView()
    let title2Container = UIView ()
    let localizacaoButtonContainer = UIView()
    let title3Container = UIView()
    let verMais1Container = UIView()
        
    let scrollView = UIScrollView()
    let view2 = UIView()


    let stackView = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
       
    
    // MARK: - Setup na hierarquia das subviews
    
    view.addSubview(stackView)
        

    stackView.addArrangedSubview(viewGreenContainer)
    stackView.addArrangedSubview(scrollView)
//        stackView.addArrangedSubview(stackView2)
    

    viewGreenContainer.addSubview(viewGreen)
    title1Container.addSubview(title1Label)
    title2Container.addSubview(title2Label)
    localizacaoButtonContainer.addSubview(localizacaoButton)

        
        viewGreenContainer.addSubview(title1Container)
        viewGreenContainer.addSubview(title2Container)
        viewGreenContainer.addSubview(localizacaoButtonContainer)
        
        scrollView.addSubview(view2)

        view2.addSubview(stackView2)
        
        stackView2.addSubview(stackView3)
        
        stackView3.addSubview(title3Label)

        
//        view2.addSubview(title3Container)
//        stackView2.addArrangedSubview(title3Container)
//
//        view2.addSubview(verMais1Container)
//        stackView2.addArrangedSubview(verMais1Container)
//
//        title3Container.addSubview(title3Label)
//        verMais1Container.addSubview(verMais1Button)
    
    // MARK: - Configuração das constraints de auto layout
        
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    viewGreen.leadingAnchor.constraint(equalTo: viewGreenContainer.leadingAnchor),
                    viewGreen.trailingAnchor.constraint(equalTo: viewGreenContainer.trailingAnchor),
                    viewGreen.topAnchor.constraint(equalTo: viewGreenContainer.topAnchor),
                    viewGreen.bottomAnchor.constraint(equalTo: viewGreenContainer.bottomAnchor),
                    ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
                        NSLayoutConstraint.activate([
                            stackView.topAnchor.constraint(equalTo: view.topAnchor),
                            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                        ])
        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
            title1Label.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -88),
            title1Label.topAnchor.constraint(equalTo: viewGreen.topAnchor, constant: 107),
            title1Label.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor, constant: 103)
            
        ])
        
        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: viewGreen.topAnchor, constant: 142),
            title2Label.leadingAnchor.constraint(equalTo: title2Container.leadingAnchor, constant: 16),
            title2Label.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor, constant: 31),
            title2Label.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -55)
        ])
        
        localizacaoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            localizacaoButton.topAnchor.constraint(equalTo: viewGreen.topAnchor, constant: 170),
            localizacaoButton.leadingAnchor.constraint(equalTo: localizacaoButtonContainer.leadingAnchor, constant: 16),
            localizacaoButton.trailingAnchor.constraint(equalTo: viewGreen.leadingAnchor, constant: 245),
            localizacaoButton.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -16)
        ])
        
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: viewGreen.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        view2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view2.topAnchor.constraint(equalTo: scrollView.topAnchor),
            view2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            view2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            view2.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: view2.bottomAnchor),
            stackView2.leadingAnchor.constraint(equalTo: view2.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: view2.trailingAnchor),
            stackView2.bottomAnchor.constraint(equalTo: view2.bottomAnchor)
        ])
        
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView3.topAnchor.constraint(equalTo: stackView2.topAnchor),
            stackView3.leadingAnchor.constraint(equalTo: stackView3.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: stackView2.trailingAnchor),
            stackView3.bottomAnchor.constraint(equalTo: stackView2.topAnchor, constant: 30)
        ])

        
        title3Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title3Label.topAnchor.constraint(equalTo: stackView3.topAnchor, constant: 16),
            title3Label.leadingAnchor.constraint(equalTo: stackView3.leadingAnchor, constant: 16),
            title3Label.trailingAnchor.constraint(equalTo: stackView3.trailingAnchor,constant: 150),
          title3Label.bottomAnchor.constraint(equalTo: stackView3.bottomAnchor,constant: -300)

        ])
        
//        verMais1Button.translatesAutoresizingMaskIntoConstraints =false
//        NSLayoutConstraint.activate([
//            verMais1Button.topAnchor
//
//        ])
        
    
    // MARK: - Configuração dos atributos dos componentes
    
    viewGreen.contentMode = .scaleAspectFill
        viewGreen.backgroundColor = UIColor(red: 0.10, green: 0.42, blue: 0.33, alpha: 1.00)
            viewGreen.layer.cornerRadius = 25
        
        title1Label.textAlignment = .left
        title1Label.text = "Explore o mundo"
        title1Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        title1Label.font = UIFont.boldSystemFont(ofSize: 28)
        
        title2Label.textAlignment = .left
        title2Label.text = "Encontre os melhores lugares para você visitar!"
        title2Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        title2Label.font = UIFont.boldSystemFont(ofSize: 16)
        
        localizacaoButton.setTitle("Sua Localização", for: .normal)
        localizacaoButton.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00), for: .normal)
        localizacaoButton.backgroundColor = UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00)
        localizacaoButton.layer.cornerCurve = .continuous
        localizacaoButton.layer.cornerRadius = 40
        localizacaoButton.clipsToBounds = true
        
        stackView.backgroundColor = .green
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        scrollView.backgroundColor = .brown
        
        view2.backgroundColor = .purple
        
        stackView2.backgroundColor = .blue
        stackView2.axis = .vertical
        stackView2.alignment = .fill
        stackView2.distribution = .fill
        stackView2.spacing = 0
        
        stackView3.axis = .horizontal
        stackView3.alignment = .fill
        stackView3.distribution = .fill
        stackView.spacing = 4


        
//        title3Container.backgroundColor = .blue
        
        title3Label.textAlignment = .left
        title3Label.text = "Para conhecer pessoas"
        title3Label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        title3Label.font = UIFont.boldSystemFont(ofSize: 20)
//
//        title3Container.backgroundColor = .purple
        
    
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
            ExplorarViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
