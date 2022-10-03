import SwiftUI

struct ContentView: View {
	
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 1

	var body: some View {
		ZStack {
			Color(red: 0.79, green: 0.68, blue: 0.65).edgesIgnoringSafeArea(.all)
			VStack {
				Spacer()
				Image("diceeLogo")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 200, height: 200, alignment: .center)
				Spacer()
				HStack {
					DiceView(n: leftDiceNumber)
					DiceView(n: rightDiceNumber)
				}.padding(.horizontal)
				Spacer()
				Button {
					self.leftDiceNumber = Int.random(in: 1...6)
					self.rightDiceNumber = Int.random(in: 1...6)
				} label: {
					Text("Roll").font(.system(size: 50)).fontWeight(.heavy).foregroundColor(.white).padding(.horizontal).background(.yellow)
				}
				Spacer()
			}
		}
	}
}

// MARK: - Extracted views
struct DiceView: View {
	let n: Int
	var body: some View {
		Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding()
	}
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
