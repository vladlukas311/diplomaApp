

import SwiftUI
import MapKit






struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
   
    var body: some View {
        
        //MARK: UISettings
        NavigationView {
                 VStack {
                     Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                         .ignoresSafeArea()
                         .accentColor(Color(.systemPink))
                         .onAppear {
                             viewModel.checkIfLocationServicesIsEnabled()
                         }
                     
                     ZStack {
                         RoundedRectangle(cornerRadius: 50)
                             .frame(width: 430, height: 270)
                         .foregroundColor(.mint)
                         VStack {
                             ZStack {
                                 VStack {
                                     ZStack {
                                 RoundedRectangle(cornerRadius: 20)
                                     .frame(width: 380, height: 60)
                                 .foregroundColor(.white)
                                         HStack {
                                             Image(systemName: "bolt.car.fill")
                                                 .resizable()
                                                 .aspectRatio(contentMode: .fit)
                                                 .clipShape(Rectangle())
                                                 .frame(width: 25, height: 25)
                                                
                                             Text("Куда едем?").bold()
                                                 .font(.system(size: 20))
                                            Image(systemName: "arrow.right")
//                                                 .padding(80)
                                     }
                                     }
                                     HStack {
                                         ZStack {
                                         RoundedRectangle(cornerRadius: 20)
                                             .frame(width: 180, height: 150)
                                         .foregroundColor(.white)
                                            
                                                 VStack {
                                                 Text("ул.Свердлова 22Б").bold()
                                                     HStack{
                                                 Text("12 мин")
                                                     }
                                                     Spacer()
                                                         .frame(width: 0, height: 30)
                                                     HStack {
                                         Image(systemName: "car.fill")
                                                     .resizable()
                                                     .frame(width: 25, height: 20)
                                                     .padding()
                                        Spacer()
                                                             .frame(width: 60, height: 0)
                                        Image(systemName: "mappin.circle")
                                                             .resizable()
                                                             .frame(width: 25, height: 25)
                                                         
                                                         
                                                         
                                                         
                                                     }
                                                 }
                                         }
                                         ZStack {
                                         RoundedRectangle(cornerRadius: 20)
                                             .frame(width: 180, height: 150)
                                         .foregroundColor(.white)
                                            
                                                 VStack {
                                                 Text("ул.Геологическая 5").bold()
                                                     HStack{
                                                 Text("32 мин")
                                                     }
                                                     Spacer()
                                                         .frame(width: 0, height: 30)
                                                     HStack {
                                         Image(systemName: "car.fill")
                                                     .resizable()
                                                     .frame(width: 25, height: 20)
                                                     .padding()
                                        Spacer()
                                                             .frame(width: 60, height: 0)
                                        Image(systemName: "mappin.circle")
                                                             .resizable()
                                                             .frame(width: 25, height: 25)
                                                         
                                                         
                                                         
                                                         
                                                     }
                                                 }
                                         }
                                     }
                                 
                                 }
                                     
                             }
                             
                         }
                                              }
                     //MARK: SecondPart
                     ZStack {
                         
                        
                         
                         RoundedRectangle(cornerRadius: 50)
                             .ignoresSafeArea()
                             .frame(width: 430, height: 130)
                         .foregroundColor(.teal)
                         VStack {
                             
                             HStack {
                         NavigationLink(destination: SecondView()) {
                             
                             HStack {
                                 RoundedRectangle(cornerRadius: 15)
                                         .frame(width: 60, height: 60)
                                     .foregroundColor(.yellow)
                                     .padding(20)
                                 RoundedRectangle(cornerRadius: 15)
                                         .frame(width: 60, height: 60)
                                     .foregroundColor(.yellow)
                                     .padding(20)
                                 RoundedRectangle(cornerRadius: 15)
                                         .frame(width: 60, height: 60)
                                     .foregroundColor(.yellow)
                                     .padding(20)
                             }
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

