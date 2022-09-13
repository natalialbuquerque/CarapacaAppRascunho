//
//  LugaresInforView.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class LugaresInfoView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let bgImageView = UIImageView(image: UIImage(named:"pet"))
    let title1Label = UILabel()
    let grayView = UIView()
    let ofereceLabel = UILabel()
    let circleView = UIView()
    let circleImage = UIImageView()
    let enderecoLabel = UILabel()
    let enderecoDetalhesLabel = UILabel()
    let telefoneLabel = UILabel()
    let telefoneDetalhesLabel = UILabel()
    let fotosLabel = UILabel()
    let adicionarAoRoteiroButton = UIButton(configuration: .filled())
    
    
    let bgImageContainer = UIView()
    let title1Container = UIView()
    let grayViewContainer = UIView()
    let ofereceLabelContainer = UIView()
    let circleViewContainer = UIView()
    let circleImageContainer = UIView()
    let enderecoLabelContainer = UIView()
    let enderecoDetalhesLabelContainer = UIView()
    let telefoneLabelContainer = UIView()
    let telefoneDetalhesLabelContainer = UIView()
    let fotosLabelContainer = UIView()
    let adicionarAoRoteiroButtonContainer = UIView()
    
    
    let stackView = UIStackView()
    
//    weak var delegate: HomeViewDelegate?

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
            self.addSubview(stackView)
            
            stackView.addArrangedSubview(bgImageContainer)
            stackView.addArrangedSubview(grayViewContainer)
            stackView.addArrangedSubview(enderecoLabelContainer)
            stackView.addArrangedSubview(enderecoDetalhesLabelContainer)
            stackView.addArrangedSubview(telefoneLabelContainer)
            stackView.addArrangedSubview(telefoneDetalhesLabelContainer)
            stackView.addArrangedSubview(fotosLabelContainer)
            stackView.addArrangedSubview(adicionarAoRoteiroButtonContainer)
    
    
            
            bgImageContainer.addSubview(bgImageView)
            title1Container.addSubview(title1Label)
            grayViewContainer.addSubview(grayView)
            ofereceLabelContainer.addSubview(ofereceLabel)
            circleViewContainer.addSubview(circleView)
            circleImageContainer.addSubview(circleImage)
            enderecoLabelContainer.addSubview(enderecoLabel)
            enderecoDetalhesLabelContainer.addSubview(enderecoDetalhesLabel)
            telefoneLabelContainer.addSubview(telefoneLabel)
            telefoneDetalhesLabelContainer.addSubview(telefoneDetalhesLabel)
            fotosLabelContainer.addSubview(fotosLabel)
            adicionarAoRoteiroButtonContainer.addSubview(adicionarAoRoteiroButton)
            
            bgImageContainer.addSubview(title1Container)
            grayViewContainer.addSubview(ofereceLabelContainer)
            grayViewContainer.addSubview(circleViewContainer)
            circleViewContainer.addSubview(circleImageContainer)
        }
        
        
        
        func setupConstraints(){
            // MARK: - Configuração das constraints de auto layout
            bgImageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bgImageView.topAnchor.constraint(equalTo: bgImageContainer.topAnchor),
                bgImageView.leadingAnchor.constraint(equalTo: bgImageContainer.leadingAnchor),
                bgImageView.trailingAnchor.constraint(equalTo: bgImageContainer.trailingAnchor),
                bgImageView.bottomAnchor.constraint(equalTo: bgImageContainer.bottomAnchor)
            ])
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
            
            title1Label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
                title1Label.bottomAnchor.constraint(equalTo: bgImageView.bottomAnchor, constant: -44)
            ])
            
            grayView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                grayView.centerXAnchor.constraint(equalTo: grayViewContainer.centerXAnchor),
                grayView.centerYAnchor.constraint(equalTo: grayViewContainer.centerYAnchor),
                grayView.topAnchor.constraint(equalTo: grayViewContainer.topAnchor, constant: 16),
                grayView.leadingAnchor.constraint(equalTo: grayViewContainer.leadingAnchor,constant: 16),
                grayView.trailingAnchor.constraint(equalTo: grayViewContainer.trailingAnchor, constant: -16),
                grayView.heightAnchor.constraint(equalToConstant: 72)
                
            ])
            
            ofereceLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                ofereceLabel.leadingAnchor.constraint(equalTo: ofereceLabelContainer.leadingAnchor,constant: 32),
                ofereceLabel.centerXAnchor.constraint(equalTo: ofereceLabelContainer.centerXAnchor),
            ])
            
            circleView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                circleView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -16),
                circleView.leadingAnchor.constraint(equalTo: ofereceLabel.trailingAnchor),
                circleView.heightAnchor.constraint(equalToConstant: 40),
                circleView.widthAnchor.constraint(equalToConstant: 40),
                circleView.centerYAnchor.constraint(equalTo: grayView.centerYAnchor)
            ])
            
            circleImage.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                circleImage.centerYAnchor.constraint(equalTo: circleView.centerYAnchor),
                circleImage.centerXAnchor.constraint(equalTo: circleView.centerXAnchor)
            ])
            
            enderecoLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                enderecoLabel.trailingAnchor.constraint(equalTo: enderecoLabelContainer.trailingAnchor, constant: -16),
                enderecoLabel.leadingAnchor.constraint(equalTo: enderecoLabelContainer.leadingAnchor, constant: 16),
                enderecoLabel.topAnchor.constraint(equalTo: enderecoLabelContainer.topAnchor),
                enderecoLabel.bottomAnchor.constraint(equalTo: enderecoLabelContainer.bottomAnchor)
            ])
            
            
            enderecoDetalhesLabel.translatesAutoresizingMaskIntoConstraints = false
            telefoneLabel.translatesAutoresizingMaskIntoConstraints = false
            telefoneDetalhesLabel.translatesAutoresizingMaskIntoConstraints = false
            fotosLabel.translatesAutoresizingMaskIntoConstraints = false
            adicionarAoRoteiroButton.translatesAutoresizingMaskIntoConstraints = false

        }
        
        
        func setUpAttributes(){
            // MARK: - Configuração dos atributos dos componentes
            bgImageView.contentMode = .scaleAspectFill
            
            title1Label.textAlignment = .left
            title1Label.text = "Pet Lovers"
            title1Label.textColor = .white
            title1Label.font = UIFont.boldSystemFont(ofSize: 24)
            
            grayView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
            grayView.layer.cornerRadius = 16
            
            ofereceLabel.textAlignment = .left
            ofereceLabel.text = "Estabelecimento que oferece trabalho"
            ofereceLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            ofereceLabel.numberOfLines = 2
            ofereceLabel.font = UIFont.boldSystemFont(ofSize: 15)
            
            circleView.layer.cornerRadius = 20
            circleView.clipsToBounds = true
            circleView.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
            circleView.layer.borderWidth = 0.0
            
            
            circleImage.image = UIImage(systemName: "bag.fill")
            circleImage.contentMode = .scaleAspectFit
            circleImage.clipsToBounds = true
            
            enderecoLabel.textAlignment = .left
            enderecoLabel.text = "Endereço"
            enderecoLabel.font = UIFont.boldSystemFont(ofSize: 17)
            enderecoLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            
            enderecoLabel.textAlignment = .left
            enderecoLabel.text = "Endereço"
            enderecoLabel.font = UIFont.boldSystemFont(ofSize: 17)
            enderecoLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            
            

            stackView.backgroundColor = .gray
            grayViewContainer.backgroundColor = .orange
            enderecoLabelContainer.backgroundColor = .systemPink
            enderecoDetalhesLabelContainer.backgroundColor = .purple
            telefoneLabelContainer.backgroundColor = .red
            telefoneDetalhesLabelContainer.backgroundColor = .gray
            fotosLabelContainer.backgroundColor = .orange
            fotosLabelContainer.backgroundColor = .systemPink
            adicionarAoRoteiroButtonContainer.backgroundColor = .purple
            
            

            
//            criarRoteiroButton.setTitle("Criar novo roteiro!", for: .normal)
//            criarRoteiroButton.setTitleColor(.white, for: .normal)
//            criarRoteiroButton.tintColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
//            criarRoteiroButton.layer.cornerCurve = .continuous
//            criarRoteiroButton.layer.cornerRadius = 35
//            criarRoteiroButton.clipsToBounds = true
//
//
//            meusRoteirosLabel.textAlignment = .left
//            meusRoteirosLabel.text = "Meus Roteiros"
//            meusRoteirosLabel.textColor = .black
//            meusRoteirosLabel.font = UIFont.boldSystemFont(ofSize: 22)
            
            
            stackView.axis = .vertical
            stackView.alignment = .fill
            stackView.distribution = .fill
            stackView.spacing = 0
            
            

        }
 

}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LugaresInforView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LugaresInfoView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
