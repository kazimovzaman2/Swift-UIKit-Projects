
//
//  View.swift
//  CryptoViper
//
//  Created by Zaman Kazimov on 18.12.24.
//

import Foundation

enum NetworkError : Error {
    case NetworkFailed
    case ParsingFailed
}


protocol AnyPresenter {
    var router : AnyRouter? { get set }
    var interactor : AnyInteractor? { get set }
    var view : AnyView? { get set }
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>)
}



class CryptoPresenter: AnyPresenter {
    var router: (any AnyRouter)?
    
    var interactor: (any AnyInteractor)? {
        didSet {
            interactor?.downloadCryptos()
        }
    }
    
    var view: (any AnyView)?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], any Error>) {
        switch result {
        case .success(let cryptos):
            view?.update(with: cryptos)
        case .failure(let error):
            view?.update(with: error)
        }
    }
    
    
}
