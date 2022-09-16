//
//  PessoasCollectionView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 16/09/22.
//

import UIKit

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pessoasCollectionView.dequeueReusableCell(withReuseIdentifier: PessoasCollectionViewCell.identifier, for: indexPath) as! PessoasCollectionViewCell
//        cell.backgroundColor = .white
        cell.configure(imagem: UIImage(systemName: "person.2") ?? UIImage(), lugar: "Lugar")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Clicou em uma cell")
    }
    
}


