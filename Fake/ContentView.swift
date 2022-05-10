

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                 VStack {
                     Spacer()
                     
                     ZStack {
                         
                         RoundedRectangle(cornerRadius: 50)
                             .frame(width: 500, height: 350)
                         .foregroundColor(.teal)
                         VStack {
                             
                             HStack {
                         NavigationLink(destination: SecondView()) {
                                 RoundedRectangle(cornerRadius: 80)
                                     .frame(width: 90, height: 90)
                                     .foregroundColor(.yellow)
                                 }
                         }
                     }
                     }
                        }
                    }
                 }
              }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
