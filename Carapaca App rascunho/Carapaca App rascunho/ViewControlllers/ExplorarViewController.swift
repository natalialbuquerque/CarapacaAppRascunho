//
//  ExplorarViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ExplorarViewController: UIViewController {
    
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
    
    
    let pessoasCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 157, height: 136)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PessoasCollectionViewCell.self, forCellWithReuseIdentifier: PessoasCollectionViewCell.identifier)
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
    
    let rendaCollectionView: UICollectionView = {
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
    
    var delegate: DelegateExplorar?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupConstraints()
        
        pessoasCollectionView.delegate = self
        pessoasCollectionView.dataSource = self
        
        rendaCollectionView.delegate = self
        rendaCollectionView.dataSource = self
        
        descansarCollectionView.delegate = self
        descansarCollectionView.dataSource = self
        
        
        
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
        
        view.backgroundColor = .white
    }
    
    
    func setupAdditionalConfiguration() {
        
        verMais1Button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    @objc func tappedButton(sender: UIButton) {
        print("Apertou ver mais")
        delegate?.verMais()
        
    }
    
}

//extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = pessoasCollectionView.dequeueReusableCell(withReuseIdentifier: PessoasCollectionViewCell.identifier, for: indexPath) as! PessoasCollectionViewCell
//        cell.backgroundColor = .white
//        cell.configure(imagem: UIImage(systemName: "person.2") ?? UIImage(), lugar: "Lugar")
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("Clicou em uma cell")
//    }
//
//}
//
extension ExploreView: DelegateExplorar {
    
    func verMais() {
        print("Página de Ver Mais")
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
            ExplorarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
