import SwiftUI
//variables
let mainCharacter = "Tasha"
let villianCharacter = "Shawn"
let supportCharacter = "Carvantre"
var doesSheChange: Bool = true
var userReCap: Bool = true
var textReCap: Bool = true
var input = ""
let womenGroup = ["Jessica", "Brenda", "Adriana"]
struct womenInfo {
var name: String
var age: Int
var personality: String
var occupation: String
var extra: String //----->Extra variable for optional function
}
var jessicaInfo = (name:"Jessica", age: 25, personality: "She is a suprisingly bubbly person
and sweet person. ", occupation:"Nurse")
var BrendaInfo = (name:"Brenda", age: 23, personality: "a quiet women but she seems really
intelligent. ", occupation:"CEO")
var adrianaInfo = (name:"Adriana", age: 35, personality: "random", occupation:"random")

/*
@IBAction didClickButton() {
showAlert()

}
func showAlert() {
let alert = UIAlertController(title: "Title", message: "Hey girll", preferredStyle:.alert)
alert.addAction(UIAlertAction(title: "yes", style:.default))
print("Insert Recap")
alert.addAction(UIAlertAction(title: "no", style:.cancel))
}))
present(alert, animated: true)
*/
struct Chapter3View: View {
var body: some View {
NavigationView{
ZStack{
VStack {
HStack{
NavigationLink(destination: ContentView()) {
Label ("", systemImage:"door.right.hand.open")
}
.font(.title2)
.foregroundColor(.black)
}
Text("Chapter 3: New Comings")

.italic()
.font(.largeTitle)
.bold()
.underline()
.multilineTextAlignment(.leading)
.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
/* Divider()
.alert(isPresented: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is

Presented@*/.constant(false)/*@END_MENU_TOKEN@*/) {

/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Alert(title:

Text("Alert"))/*@END_MENU_TOKEN@*/

}
*/

ScrollView{
VStack{
Text("\(mainCharacter), was mentally broken after having to deal with \
(villianCharacter) and his actions. She needed to find comfort, so she decided to relax at
starbucks and get a nice hot drink.")
.padding(10)
Text("\(mainCharacter) eyes traveled over the poster, it was a peer group on

learning about self-respect! The peer group was held by a young man named \
(supportCharacter).")

Image("latte")//<---Place Holder Image
.resizable()
.scaledToFit()
.padding(10)
Text("\(mainCharacter), gathered all of her courage to sign up for the peer

group. She signed up for the meeting for next week! ")

//wait a minute bro....
Text("\(mainCharacter), stared at the poster but it sent her into spirals. Even if \

(villianCharacter) took her money, how would \(supportCharacter) help?")

Image("Stress")
.resizable()
.scaledToFit()
Text ("She didn't tell \(villianCharacter), but she could not contain her

anticipation! The idea of \(supportCharacter)'s peer group potentially changing her circumstance
did intrigue her. Maybe seeing that poster in the coffee shop was a sign that she should've
took")

.padding(10)
Text(".....fast forward to next week!.......")
.padding(10)
Text("\(mainCharacter) stood at the outside of the building that divided her and
her future. She hesitated before walking into the room that was labeled 'Women Support Group'.
When she opened the door she was met with a group of women sitting in a circle. It seems like
they were already in the middle of activity speaking one by one...")
Image("talking")//<---Place Holder Image
.resizable()
.scaledToFit()
.padding(10)
Text("My name Jessica, I am strong, and I am independent.")
.padding(10)
Text("My name Brenda, I am strong, and I am independent.")
.padding(10)
Text("My name Adriana, I am strong, and I am independent.")

.padding(10)
//wait a minute bro....
Text("When \(mainCharacter) entered the room all eyes locked onto her. \
(mainCharacter) walked to her seat and sat down and followed along with the current activity.
When it ended, the group started another activity which required everyone to get into groups of
two.")

Image("stop")
.resizable()
.scaledToFit()
Text("\(mainCharacter) felt super nervous, I mean she didn't know a lot of
people in the group. Her eyes wandered between Jessica, Brenda, and Adriana wondering who
she thought would be the best choice.")
.padding(10)
Text("After choosing her partner, \(supportCharacter) then gave out sticky
notes with different topics for icebreakers. Some topics were silly and fun while the others had
much deeper and serious topics.")
.padding(10)
Text("The topic \(mainCharacter) and \(BrendaInfo.name) got a sticky note that

said Who is you're biggest inspiration? \(BrendaInfo.name) responded:")

.padding(10)
Text("The icebreakers didn't last long but they realized some of these small
conversations led to many meaningful and deep coversations. When the session came to an
end she left with a new found confidence and a sense of hope about the future of her
relationship. Especially after hearing storiees from other women. However, when she arrived
home, she felt confliction, she wanted to be able to tell someone about her accomplishment.")

.padding(10)
Image("help")
.resizable()
.scaledToFit()
}
}
Divider()
HStack{
NavigationLink(destination: Chapter2View()) {
Label("", systemImage:"arrowshape.left.circle.fill")
}
.font(.largeTitle)
.foregroundColor(.black)
Text("Oh Okay...")
.foregroundColor(.white)
NavigationLink(destination: Chapter4View()) {
Label ("", systemImage: "arrowshape.right.circle.fill" )
}
.font(.largeTitle)
.foregroundColor(.black)
}

}
}
.padding()

}
}
}

#Preview {
Chapter3View()
}
