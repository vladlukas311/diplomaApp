

import Foundation


struct FirstCell: Identifiable {
    let title: String
    let subtitle: String
    let stars: Int
    let image: String
    
    let id = UUID().uuidString
}
