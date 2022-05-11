

import SwiftUI

struct SecondViewCell: View {
    let title: String
    let subtitle: String
    let stars: Int
    let image: String
    
    let id = UUID().uuidString

    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .cornerRadius(30)
                .frame(width: 400, height: 220)
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("Чайхана сити")
            }
        }
    }
}

struct SecondViewCell_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewCell(title: "", subtitle: "", stars: 2, image: "mcDonalds")
            .previewLayout(.fixed(width: 400, height: 320))
    }
}
