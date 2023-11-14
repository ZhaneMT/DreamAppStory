import SwiftUI

struct Chapter3View: View {
    var body: some View {
        VStack {
            HStack{
                Image   (systemName: "book.fill")
                    .font(.largeTitle)
                    .frame(width: 260 , height:0)
                Image(systemName: "door.right.hand.open")
                    .font(.largeTitle)
                    .frame(width: 260 , height:0)
            }
            Text("Chapter X: Title")
                .font(.largeTitle)
                .bold()
                .underline()
                .multilineTextAlignment(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            
            Divider()
            ScrollView{
                VStack{
                    Text("Insert random text that foes into here. The best part about food is that it is delicious.")
                        .padding()
                    Text("Insert random text that foes into here. The best part about food is that it is delicious.")
                    Image("lol")//<---Place Holder Image
                        .padding()
                    Text("Insert random text that foes into here. The best part about food is that it is delicious.")
                    Text("Some more text but I worry about some other things. Like how in the world are we gonna keep the divider at the bottom?")
                    Image("lol")
                    Text ("It moves along with the divider.")
                        .padding()
                    
                }
                Divider()
                
            }
            .padding()
        }
    }
    }
    



#Preview {
    Chapter3View()
}
