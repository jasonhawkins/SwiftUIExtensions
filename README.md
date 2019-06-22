# SwiftUIExtensions

### Availability
This package is compatible with Xcode 11, macOS 10.15, iOS 13, tvOS 13, and watchOS 6.0.

### Example
This example shows how to extract `allCases` from the `ColorScheme` extension, and then display both a light and dark appearance via the `AdaptingColorScheme` `ViewModifier`.

```
#if DEBUG
struct MyView_Previews : PreviewProvider {

private static let colorScheme = ColorScheme.allCases.identified(by: \.self)

static var previews: some View {
    Group {
        ForEach(colorScheme) { appearance in
            MyView()
                .previewLayout(.sizeThatFits)                    
                .modifier(AdaptingColorScheme(appearance))
            }
        }
#endif
```
