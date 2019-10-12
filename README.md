# SwiftUI-Layout-Practice

<div align="center">
  <img width="800" alt="screenshot_1" src="https://github.com/kazy-dev/SwiftUI-Layout-Practice/blob/master/SwiftUI-Layout-Practice/Screenshots/swiftui_layout.png">
</div>

This project is for learning SwiftUI.
We are mainly committing layout samples.

## Environment
Xcode11.1  
SwiftUI  
Mac OS 10.15（19A583）  

## Layout_1 CardListView
This layout is simply Card List Layout.  
<div align="center">
  <img width="300" alt="screenshot_1" src="https://github.com/kazy-dev/SwiftUI-Layout-Practice/blob/master/SwiftUI-Layout-Practice/Screenshots/topview_screenshot_1.png">
</div>

## Layout_2 SideMenuView
This layout is Side Menu Layout.  
This is a sample layout that displays the side menu when you tap the button.  
<div align="center">
  <img width="300" alt="screenshot_1" src="https://github.com/kazy-dev/SwiftUI-Layout-Practice/blob/master/SwiftUI-Layout-Practice/Screenshots/side_menu_sample_gif.gif">
</div>

## Layout_3 CardAnimationView
This is Card Animation Layout.
<div align="center">
  <img width="300" alt="screenshot_1" src="https://github.com/kazy-dev/SwiftUI-Layout-Practice/blob/master/SwiftUI-Layout-Practice/Screenshots/card_animation_sample.gif">
</div>

Tap the card to enlarge the view to the full screen size.  
Since the animation is attached, the view can be enlarged smoothly.  
The display logic is very simple.  
Use the @State modifier to bind button taps.  
Next, simply use the ternary operator to set the properties used in @State in the View frame.  

```swift
struct CardAnimationView: View {
    @State var show = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.show.toggle()
            }
        }) {
            VStack() {
                Text("SwiftUI-Layout")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding(.top, show ? 100 : 20)
                Spacer()
            }
            .padding()
            .frame(width: show ? ScreenSize.width : 300, height: show ? ScreenSize.height : 300)
            .background(Color.blue)
        }
        .cornerRadius(30)
        .animation(.spring())
    }
}
```

## Layout_4 UserDefaultTest
This is UserDefautlt Test by PropertyWrappers.

<div align="center">
  <img width="300" alt="screenshot_1" src="https://github.com/kazy-dev/SwiftUI-Layout-Practice/blob/master/SwiftUI-Layout-Practice/Screenshots/userdefault_test_sample.png">
</div>

## Layout_5 now making...
