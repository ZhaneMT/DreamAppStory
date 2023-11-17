import SwiftUI

struct Chapter4View: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Image(systemName: "book.fill")
                        .font(.largeTitle)
                        .frame(width: 260 , height:0)
                    Image(systemName: "door.right.hand.open")
                        .font(.largeTitle)
                        .frame(width: 260 , height:0)
                }
                Text("Chapter 4: Fourth")
                    .font(.largeTitle)
                    .bold()
                    .underline()
                    .multilineTextAlignment(.leading)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                
                Divider()
                ScrollView{
                    VStack{
                        Image("lessons")
                            .resizable()
                            .frame(width: 300, height: 200)
                            .padding(.bottom, 20)
                        Text("\(mainCharacter) learned 2 good lessons.")
                            .padding()
                        Text("1. Always have a plan for saving your money")
                            .padding()
                        Image("save")
                            .resizable()
                            .frame(width: 300, height: 200)
                            .padding(.bottom, 20)
                            .padding()
                        Text("2. Always practice self care")
                            .padding()
                        Image("care")
                            .resizable()
                            .frame(width: 300, height: 200)
                            .padding(.bottom, 20)
                            .padding()

                        Text ("The end")
                            .padding()
                    }
                    Divider()
                    HStack{
                        NavigationLink(destination: Chapter3View()) {
                            Label("", systemImage:"arrowshape.left.circle.fill")
                        }
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        Text("Oh Okay...")
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: CoverView()) {
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

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}
