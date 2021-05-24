import SwiftUI

struct PlayerListView: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in NavigationLink(destination: PlayerDetailsView(player: currentPlayer)){
                    PlayerRow(player: currentPlayer).frame(height: 50)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
