import SwiftUI

struct StateText: View {
    
    var stateName: String
    var stateValue: String
    
    var body: some View {
        HStack(alignment: .center){
            Text("\(stateName):")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding(.leading, 30)
        
            Text(stateValue)
                .font(.system(size: 25))
                .fontWeight(.light)
                .padding(.trailing, 30)
        
            Spacer()
        }
    }
}

struct StateText_Previews: PreviewProvider {
    static var previews: some View {
        StateText(stateName: "SateName", stateValue: "StateValue")
    }
}
