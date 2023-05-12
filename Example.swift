import SwiftUI

struct Example: View {
    @State private var isWiggling = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .wiggling(isWiggling: $isWiggling, bounceAmount: 2, rotationAmount: 3)
                // .wiggling(isWiggling: $isWiggling) we can also leave bounceAmount and rotationAmount blank, as the default values are 3 and 1 respectively

            Button(action: {
                withAnimation {
                    self.isWiggling.toggle()
                }
            }) {
                Text(self.isWiggling ? "Disable Animation" : "Enable Animation")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
