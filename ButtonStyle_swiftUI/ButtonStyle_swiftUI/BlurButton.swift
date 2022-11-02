import SwiftUI

struct BlurButton : ButtonStyle{
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack{
            configuration.label
                .font(.system(size: 15))
                .foregroundColor(.white)
                .frame(width: 100)
                .padding(5)
                .background(color)
                .cornerRadius(10)
                .blur(radius: configuration.isPressed ? 5 : 0)
                
        }
    }
}

struct BlurButton_PreViews: PreviewProvider{
    
    static var previews: some View{
        
        Button(action: {
            print("clicked")
        }, label: {
            Text("test")
        }).buttonStyle(BlurButton(color: Color.blue))
    }
}
