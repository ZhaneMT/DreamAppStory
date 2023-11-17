
import SwiftUI

struct Chapter2View: View {
    let weeklyRoutineArray = ["lash appointment", "fasting", "facials"]
    let seafoodListArray = ["lobsterTail", "shrimp", "crablegs", "salmon"]
    
    @State var showingChapters = false
    @State private var showingPopup = false
    @State private var showBackstory = false
    @State private var showSeafoods = false
    @State private var selectedFavoriteSeafood: favoriteSeafood = .lobsterTail
    @State private var displayText: Text = Text("What food should she eat")
    
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
        NavigationView {
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
                
                Text("Chapter 2: Being Tasha Jane")
                    .font(.title)
                    .bold()
                    .underline()
                    .multilineTextAlignment(.leading)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .padding(.top, 15)
                Divider()
                ScrollView{
                    
                    if showBackstory {
                        Text("Everyone have experienced childhood things that they may have changed due to an adult or probably even still hold those habits with them.")
                            .padding()
                    }
                    
                    Button(showBackstory ? "Close the backstory" : "Click here to read the backstory") {
                        showBackstory.toggle()
                    }
                    .padding()
                    
                    Text("\(mainCharacter) was a seafood lover and enjoyed working out for her apperance.")
                        .padding()

                    Text("Eventually she gained balance in both areas eating,working out and fasting, after a bad break up cause self-recoginiton.")
                        .padding()
                    Image("SZA")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .padding(.bottom, 20)
                    
                    Text("\(mainCharacter) was hungry and wanted some food.")
                        .padding()
                    Image("seafood")
                        .resizable()
                        .frame(width: 300, height: 200)
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
                    HStack{
                        NavigationLink(destination: Chapter1View()) {
                            Label("", systemImage:"arrowshape.left.circle.fill")
                        }
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        Text("Oh Okay...")
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: Chapter3View()) {
                            Label ("", systemImage: "arrowshape.right.circle.fill" )
                        }
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    }
                }
                .padding()
            }
        
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

