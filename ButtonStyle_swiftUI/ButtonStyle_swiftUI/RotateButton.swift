import SwiftUI


struct RotateButton : ButtonStyle{
    
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
                .rotationEffect(configuration.isPressed ? .degrees(90): .degrees(0))
            //anchor: 회전 기준 조건을 줄 수 있음
                
        }
    }
    
}

struct RotateButton_PreViews: PreviewProvider{
    
    static var previews: some View{
        
        Button(action: {
            print("clicked")
        }, label: {
            Text("test")
        }).buttonStyle(RotateButton(color: Color.blue))
    }
}
