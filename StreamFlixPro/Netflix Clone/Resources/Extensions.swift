//
//  Extensions.swift
//  Netflix Clone
//
//  Created by T.Jeyesh on 07/10/2025.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
