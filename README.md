# SwiftUI Wiggle Animation Modifier

This repository contains a custom SwiftUI modifier for adding a 'wiggle' animation to any SwiftUI `View`. The idea was inspired by [markmals](https://github.com/markmals) on GitHub. This implementation extends the original idea by allowing the animation to be controlled by a boolean state variable and providing custom rotation and bounce amounts.

https://github.com/ngimelliUW/WiggleAnimationModifier/assets/47952124/150cbbef-aa51-41da-9cd9-92cf52a449ef

## Installation

Just copy the `WiggleModifier.swift` file into your project.

## Usage

In your SwiftUI `View`, you can use the `wiggling` modifier like this:

```swift
struct ContentView: View {
    @State private var isWiggling = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .wiggling(isWiggling: $isWiggling, rotationAmount: 3, bounceAmount: 2)

            Button(action: {
                withAnimation {
                    self.isWiggling.toggle()
                }
            }) {
                Text(self.isWiggling ? "Disable Animation" : "Enable Animation")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}
```

The `wiggling` modifier takes three arguments:

1. `isWiggling`: A `Binding<Bool>` that controls whether the wiggle animation is active.
2. `bounceAmount`: A `Double` that controls the bounce amount of the wiggle animation.
3. `rotationAmount`: A `Double` that controls the rotation amount of the wiggle animation.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
