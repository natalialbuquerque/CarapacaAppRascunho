//
//  HomeView.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 12/09/22.
//

import UIKit

class HomeView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let bgHomeView = UIImageView(image: UIImage(named: "bgHome"))
    let title1Label = UILabel()
    let title2Label = UILabel()
    let criarRoteiroButton = UIButton(configuration: .filled())
    let meusRoteirosLabel = UILabel()
//    var meusRoteirosCollectionView = UICollectionView()
//    let layout = UICollectionViewFlowLayout ()
    
    let bgHomeContainer = UIView()
    let title1Container = UIView()
    let title2Container = UIView()
    let criarRoteiroButtonContainer = UIView()
    let meusRoteirosContainer = UIView()
//    let meusRoteirosCollectionViewContainer = UIView()
    
    let stackView = UIStackView()
    
    weak var delegate: HomeViewDelegate?
    
    //    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //        return 30
    //    }
    //
    //    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier , for: indexPath) as! CustomCollectionViewCell
    //        cell.configure(label: "Custom \(indexPath.row)")
    //
    //        return cell
    //    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewHierarchy()
        setupConstraints()
        setUpAttributes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        func setupViewHierarchy(){
            // MARK: - Setup na hierarquia das subviews
            self.addSubview(bgHomeView)
            self.addSubview(stackView)
            self.addSubview(title1Label)
            self.addSubview(title2Label)
    //        view.addSubview(meusRoteirosCollectionView)
            
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
        }
        
        
        
        func setupConstraints(){
            // MARK: - Configuração das constraints de auto layout
            bgHomeView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bgHomeView.topAnchor.constraint(equalTo: self.topAnchor),
                bgHomeView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                bgHomeView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            ])
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
            
            title1Label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
                title1Label.bottomAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: -44)
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
            
    //        meusRoteirosCollectionView.translatesAutoresizingMaskIntoConstraints = false
    //        NSLayoutConstraint.activate([
    //            meusRoteirosCollectionView.centerYAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.centerYAnchor),
    //            meusRoteirosCollectionView.centerXAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.centerXAnchor),
    //            meusRoteirosCollectionView.topAnchor.constraint(equalTo: meusRoteirosLabel.bottomAnchor),
    //            meusRoteirosCollectionViewContainer.leadingAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.leadingAnchor, constant:  16),
    //            meusRoteirosCollectionViewContainer.trailingAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.trailingAnchor, constant:  -16)
    //
    //        ])
        }
        
        
        
        func setUpAttributes(){
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
            
    //        layout.scrollDirection = .vertical
    //        layout.minimumLineSpacing = 1
    //        layout.minimumInteritemSpacing = 1
    //        layout.itemSize = CGSize(width: (view.frame.size.width/2)-4,
    //                                 height: (view.frame.size.width/2)-4)
    //
    //
    //        meusRoteirosCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    ////        guard let meusRoteirosCollectionView = meusRoteirosCollectionView else {
    ////            return
    ////        }
    //        meusRoteirosCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    //        meusRoteirosCollectionView.frame = view.bounds

        }
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        criarRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        print("Apertou o botao")
        delegate?.criarRoteiro()
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
