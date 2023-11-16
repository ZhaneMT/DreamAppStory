struct Chapter2View: View {
    @State var showingChapters = false
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
                        //....The Rest of our code 


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
