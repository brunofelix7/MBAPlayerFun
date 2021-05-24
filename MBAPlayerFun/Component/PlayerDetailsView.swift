import SwiftUI

struct PlayerDetailsView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
                
            Image(player.team.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle()
                .stroke(Color.white, lineWidth: 5))
                .offset(x: 0, y: -90)
                .padding(.bottom, -70)
                .shadow(radius: 15)
            
            Text(player.name)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding([.leading, .bottom, .trailing], 30)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            StateText(stateName: "Age", stateValue: String(player.age))
                .padding(.bottom, 10)
            StateText(stateName: "Height", stateValue: player.height)
                .padding(.bottom, 10)
            StateText(stateName: "Weight", stateValue: "\(player.weight)lbs")
                .padding(.bottom, 10)
            
            //  Ocupa o maximo de espaço possivel
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetailsView(player: players[0]).previewDevice("iPhone 8")
            //PlayerDetailsView(player: players[0]).previewDevice("iPhone 11")
            //PlayerDetailsView(player: players[0]).previewDevice("iPhone 11 Pro Max")
        }
    }
}
