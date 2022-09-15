//
//  ExplorarViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ExploreViewController: UIViewController {
    
    let exploreView = ExploreView()
    
    let scrollView =  UIScrollView()
    
    let contentView = UIView()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 20
//        stackView.backgroundColor = .green
        return stackView
    }()
    
    let stackViewTitle1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
//        stackView.backgroundColor = .green
        return stackView
    }()
    
    let title3Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para conhecer pessoas"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais1Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
//        verMais.backgroundColor = .blue
        return verMais
    }()
 
    
    private let pessoasCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 157, height: 136)
        layout.scrollDirection = .horizontal
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "pessoasCell")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let stackViewTitle2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
//        stackView.backgroundColor = .green
        return stackView
    }()
    
    let title4Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para fazer renda extra"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais2Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
//        verMais.backgroundColor = .blue
        return verMais
    }()
    
    private let rendaCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 157, height: 136)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "rendaCell")
        return collectionView
        
    }()
    
    let stackViewTitle3: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
//        stackView.backgroundColor = .green
        return stackView
    }()
    
    let title5Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para fazer renda extra"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais3Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
//        verMais.backgroundColor = .blue
        return verMais
    }()
    
    private let descansarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 157, height: 136)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "rendaCell")
        return collectionView
        
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupConstraints()
        
        pessoasCollectionView.delegate = self
        pessoasCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func setupHierarchy() {
        view.addSubview(exploreView)
        view.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(stackViewTitle1)
        stackView.addArrangedSubview(pessoasCollectionView)
        stackView.addArrangedSubview(stackViewTitle2)
        stackView.addArrangedSubview(rendaCollectionView)
        stackView.addArrangedSubview(stackViewTitle3)
        stackView.addArrangedSubview(descansarCollectionView)
        
        stackViewTitle1.addArrangedSubview(title3Label)
        stackViewTitle1.addArrangedSubview(verMais1Button)
        
        stackViewTitle2.addArrangedSubview(title4Label)
        stackViewTitle2.addArrangedSubview(verMais2Button)
        
        stackViewTitle3.addArrangedSubview(title5Label)
        stackViewTitle3.addArrangedSubview(verMais3Button)
        
        
    }
    
    func setupConstraints() {
        exploreView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            exploreView.topAnchor.constraint(equalTo: view.topAnchor),
            exploreView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exploreView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//            exploreView.bo
            
        ])
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: exploreView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -16),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        pessoasCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pessoasCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        rendaCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rendaCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        descansarCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descansarCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        
//        scrollView.backgroundColor = .purple
//        contentView.backgroundColor = .red
        pessoasCollectionView.backgroundColor = .systemPink
    }
    
    
    
    
//    override func loadView() {
//        // Inicialização da view que irá ser atribuída como view raiz do view controller
//        let view = UIView()
//        // MARK: - Inicializar os componentes/ as views
//
//
//
//        let viewGreenContainer = UIView()//(frame: CGRect.init(x: 0, y: 0, width: view.bounds.width, height: 219))
//        let collectionViewContainer = UIView()
//
//        let title3Label = UILabel()
//        let verMaisButton = UIButton()
//
//        let title4Label = UILabel()
//        let verMais2Button = UIButton()
//
//        let scrollView = UIScrollView()
//
//
//        let stackView = UIStackView()
//
//        let contentViewSize = CGSize(width: view.frame.width, height: view.frame.height + 300)
//
//        scrollView.contentSize = contentViewSize
//
//
//
//        pessoasCollectionView.delegate = self
//        pessoasCollectionView.dataSource = self
        
        // MARK: - Setup na hierarquia das subviews
//        view.addSubview(stackView)
//
//
//
//
////        collectionViewContainer.addSubview(scrollView)
//
//        scrollView.addSubview(collectionViewContainer)
//
//
//
//        collectionViewContainer.addSubview(title3Label)
//        collectionViewContainer.addSubview(verMaisButton)
//        collectionViewContainer.addSubview(pessoasCollectionView)
//        collectionViewContainer.addSubview(title4Label)
//        collectionViewContainer.addSubview(verMais2Button)
//
//        scrollView.addSubview(title3Label)
//        scrollView.addSubview(verMaisButton)
//        scrollView.addSubview(pessoasCollectionView)
//        scrollView.addSubview(title4Label)
//        scrollView.addSubview(verMais2Button)
        
        
        // MARK: - Configuração das constraints de auto layout
       
        
//        title3Label.translatesAutoresizingMaskIntoConstraints = false
////        NSLayoutConstraint.activate([
//            title3Label.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor),
//            title3Label.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor, constant: 16),
//            title3Label.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor, constant: 150),
//            title3Label.bottomAnchor.constraint(equalTo: pessoasCollectionView.topAnchor, constant: -12)
//        ])
//        NSLayoutConstraint.activate([
//            title3Label.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            title3Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
//            title3Label.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 150),
//            title3Label.bottomAnchor.constraint(equalTo: pessoasCollectionView.topAnchor, constant: -12)
//        ])
//
//        verMaisButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            verMaisButton.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor),
//            verMaisButton.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor, constant: 299),
//            verMaisButton.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor, constant: -16),
//            verMaisButton.bottomAnchor.constraint(equalTo: pessoasCollectionView.topAnchor, constant: -12)
                                    
//            NSLayoutConstraint.activate([
//                verMaisButton.topAnchor.constraint(equalTo: scrollView.topAnchor),
//                verMaisButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 299),
//                verMaisButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
//                verMaisButton.bottomAnchor.constraint(equalTo: pessoasCollectionView.topAnchor, constant: -12)
//        ])
//
        
//        pessoasCollectionView.frame = CGRect(x: 0, y: 107, width: view.frame.size.width, height: 136).integral
//        pessoasCollectionView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            pessoasCollectionView.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor),
//            pessoasCollectionView.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor),
//            pessoasCollectionView.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor),
//            pessoasCollectionView.bottomAnchor.constraint(equalTo: collectionViewContainer.bottomAnchor)
//
//
//        ])
        
//        pessoasCollectionView.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 32).isActive = true
//        pessoasCollectionView.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor, constant: 16).isActive = true
//        pessoasCollectionView.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor, constant: -16).isActive = true
//        pessoasCollectionView.bottomAnchor.constraint(equalTo: collectionViewContainer.bottomAnchor, constant: -400).isActive = true
        //essa to em duvida se ta certo
//        pessoasCollectionView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 32).isActive = true
//        pessoasCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
//        pessoasCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
//        pessoasCollectionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -400).isActive = true
        
        
//        title4Label.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            title4Label.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 217),
//            title4Label.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor, constant: 16),
//            title4Label.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor, constant: -150),
//            title4Label.bottomAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 239)
            //soma da distancia ate o topo do container + altura (figma)
//            NSLayoutConstraint.activate([
//                title4Label.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 217),
//                title4Label.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
//                title4Label.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -150),
//                title4Label.bottomAnchor.constraint(equalTo: scrollView.topAnchor, constant: 239)
//
//
//        ])
//
//        verMais2Button.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            verMais2Button.topAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 217),
//            verMais2Button.leadingAnchor.constraint(equalTo: collectionViewContainer.leadingAnchor, constant: 299),
//            verMais2Button.trailingAnchor.constraint(equalTo: collectionViewContainer.trailingAnchor, constant: -16),
//            verMais2Button.bottomAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 239)
//
//            NSLayoutConstraint.activate([
//                verMais2Button.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 217),
//                verMais2Button.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 299),
//                verMais2Button.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
//                verMais2Button.bottomAnchor.constraint(equalTo: collectionViewContainer.topAnchor, constant: 239)
//        ])
//
//
//
//        // MARK: - Configuração dos atributos dos componentes
////        viewGreen.contentMode = .scaleAspectFit
//
//
//
//
//        view.backgroundColor = .white
//
////        scrollView.backgroundColor = .green
//
//        collectionViewContainer.backgroundColor = .gray
////        viewGreenContainer.setContentHuggingPriority(.defaultLow, for: .vertical)
////        collectionViewContainer.setContentHuggingPriority(.defaultHigh, for: .vertical)
////
//
//        title3Label.textAlignment = .left
//        title3Label.text = "Para conhecer pessoas"
//        title3Label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
//        title3Label.font = UIFont.boldSystemFont(ofSize: 20)
//
//        verMaisButton.setTitle("Ver Mais", for: .normal)
//        verMaisButton.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
//        verMaisButton.clipsToBounds = true
//
////        pessoasCollectionView.frame = collectionViewContainer.bounds
//
//        pessoasCollectionView.backgroundColor = .systemPink
//
//        title4Label.textAlignment = .left
//        title4Label.text = "Para fazer renda extra"
//        title4Label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
//        title4Label.font = UIFont.boldSystemFont(ofSize: 20)
//
//        verMais2Button.setTitle("Ver Mais", for: .normal)
//        verMais2Button.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
//        verMais2Button.clipsToBounds = true
//
//
//
//
//
//
//        // Atribuição da view inicializada no começo da função
//        self.view = view
//    }


}

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pessoasCell", for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExploreViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExploreViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
