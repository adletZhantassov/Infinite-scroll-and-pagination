//
//  APICaller.swift
//  Infinite scroll and pagination Training project
//
//  Created by Adlet Zhantassov on 25.10.2022.
//

import Foundation

class APICaller {
    public var isPaginating = false
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void ) {
        if pagination {
            isPaginating = true
        }
        DispatchQueue.global().asyncAfter(deadline: .now()+(pagination ? 3 : 2)) {
            let originalData = ["Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet","Apple", "Google", "Adlet"]
            let newData = ["oranges","apples","grapes","foods"]
            completion(.success( pagination ? newData : originalData))
            if pagination {
                self.isPaginating = false
            }
        }
    }
}
