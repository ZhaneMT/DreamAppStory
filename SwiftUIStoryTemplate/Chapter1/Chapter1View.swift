import SwiftUI

struct Chapter1View: View {
    let veganOptions = [ "rawFruits", "veggies", "meat substitutes"]
    
    @State var showingChapters = false
    @State private var showingPopup = false
    @State private var showIntro = false
    @State private var showVeganFoods = false
    @State private var selectedFood: Vegan = .rawFruits
    @State private var displayText: Text = Text("Select a food option to see details.")

    // Enum for the vegan foods she likes to eat
    enum Vegan {
        case rawFruits,rawVeggies,meatSubstitutes
    }
    
    // Function to chose what vegan food she wants to eat, using the enum
    func chooseFood(food: Vegan) -> Text {
        switch(food) {
        case .rawFruits:
            return Text("Tasha was super consistent at deflecting her feelings. This is why she became vegan, to at least care about something other than herself.She was so busy grieving and dating the wrong dudes; she forces herself to cleanse and detox. so she started with \(veganOptions[0])")
        case .rawVeggies:
            return Text("Now that she was detoxing and cleansing from within, she decided to think about her future as a vegan, and how she wanted her next man to be a vegan as well. She was tired of her broke miserable exes, and told herself they needed to be left behind just like meat and dairy so she ate a lot of \(veganOptions[1])")
        case .meatSubstitutes:
            return Text("She decided to explore tech and explore ways to share the vegan lifestyle like eating \(veganOptions[2])with people in her community, After all, her dad always said each one teach one so we can reach one!")
        }
    }
    
    func veganFoodText() {
        displayText = chooseFood(food: selectedFood)
    }
    
    var body: some View {
                VStack {
                    HStack {
                        Button(action: { showingChapters = true }) {
                            Image(systemName: "book.fill")
                                .font(.largeTitle)
                        }
                        .padding(.horizontal, 100)
                        .sheet(isPresented: $showingChapters) {
                            ChaptersView()
                        }
                        Image(systemName: "door.right.hand.open")
                            .font(.largeTitle)
                            .frame(width: 260 , height:0)
                    }
                    .padding(.bottom, -58)

            Text("Chapter 1: Title")
                .font(.largeTitle)
                .bold()
                .underline()
                .multilineTextAlignment(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(.top, 15)
            Divider()
            ScrollView{
                
                if showIntro {
                    Text("Insert 1 random text that foes into here. The best part about food is that it is delicious.")
                        .padding()
                }

                Button(showIntro ? "Close the backstory" : "Click here to read the backstory") {
                    showIntro.toggle()
                }
                
                Text("Insert 1 random text that foes into here. The best part about food is that it is delicious.")
                    .padding()
                Text("Insert random text that foes into here. The best part about food is that it is delicious.")
                    .padding()
                Image("lol")
                    .padding(.bottom, 20)
                
                
                if showVeganFoods {
                    
                    displayText
                        .padding()
                    
                    Picker("Choose your food", selection: $selectedFood) {
                        Text("Raw Fruits").tag(Vegan.rawFruits)
                        Text("Raw Veggies").tag(Vegan.rawVeggies)
                        Text("Meat Substitutes").tag(Vegan.meatSubstitutes)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .onChange(of: selectedFood) { newValue in
                        veganFoodText()
                    }
                }
                
                Button(showVeganFoods ? "Close" : "Click here to choose if she should eat rawVeggies, rawFruits or meatSubsitutes?") {
                    showVeganFoods.toggle()
                }
                Divider()
            }
            .padding()
        }
    }
}

struct ChaptersView: View {
    var body: some View {
        NavigationView {
                    List {
                        NavigationLink("Cover", destination: CoverView())
                        NavigationLink("Chapter 1", destination: Chapter1View())
                        NavigationLink("Chapter 2", destination: Chapter2View())
                        NavigationLink("Chapter 3", destination: Chapter3View())
                        NavigationLink("Chapter 4", destination: Chapter4View())
                    }
                    .navigationBarTitle("Chapters")
                }
    }
}

struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}


