import SwiftUI

struct Chapter2View: View {
    let weeklyRoutineArray = ["lash appointment", "fasting", "facials"]
    let seafoodListArray = ["lobsterTail", "shrimp", "crablegs", "salmon"]
    
    @State var showingChapters = false
    @State private var showingPopup = false
    @State private var showBackstory = false
    @State private var showSeafoods = false
    @State private var selectedFavoriteSeafood: favoriteSeafood = .lobsterTail
    @State private var displayText: Text = Text("Select a food option to see details.")

    // Enum for the vegan foods she likes to eat
    enum favoriteSeafood {
        case lobsterTail, shrimp, crablegs, salmon
    }
    
    // Function to chose what vegan food she wants to eat, using the enum
    func chooseFood(food: favoriteSeafood) -> Text {
        switch(food) {
        case .lobsterTail:
            return Text("She always prefered to cook fried \(seafoodListArray[0]) for their date night ")
        case .shrimp:
            return Text("She prefer to have seasoned fresh shrimp over fried \(seafoodListArray[1])")
        case .salmon:
            return Text("She only made stuffed \(seafoodListArray[2]) with cream cheese and spinach")
        case .crablegs:
            return Text("Friday nights her and shawn speacialty was to make \(seafoodListArray[3]) with boil eggs")
        }
    }
    
    func seafoodText() {
        displayText = chooseFood(food: selectedFavoriteSeafood)
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

            Text("Chapter 2: Title")
                .font(.largeTitle)
                .bold()
                .underline()
                .multilineTextAlignment(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(.top, 15)
            Divider()
            ScrollView{
                
                if showBackstory {
                    Text("Insert 1 random text that foes into here. The best part about food is that it is delicious.")
                        .padding()
                }

                Button(showBackstory ? "Close the backstory" : "Click here to read the backstory") {
                    showBackstory.toggle()
                }
                
                Text("Insert 1 random text that foes into here. The best part about food is that it is delicious.")
                    .padding()
                Text("Insert random text that foes into here. The best part about food is that it is delicious.")
                    .padding()
                Image("lol")
                    .padding(.bottom, 20)
                
                
                if showSeafoods {
                    
                    displayText
                        .padding()
                    
                    Picker("Choose your food", selection: $selectedFavoriteSeafood) {
                        Text("Lobster Tail").tag(favoriteSeafood.lobsterTail)
                        Text("Crablegs").tag(favoriteSeafood.crablegs)
                        Text("Shrimp").tag(favoriteSeafood.shrimp)
                        Text("Salmon").tag(favoriteSeafood.salmon)

                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .onChange(of: selectedFavoriteSeafood) { newValue in
                        seafoodText()
                    }
                }
                
                Button(showSeafoods ? "Close" : "Click here to choose what seafood she should eat Lobster Tail, Crablegs, Shrimp or Salmon?") {
                    showSeafoods.toggle()
                }
                Divider()
            }
            .padding()
        }
    }
}

struct ChaptersView1: View {
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

struct Chapter2View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2View()
    }
}
