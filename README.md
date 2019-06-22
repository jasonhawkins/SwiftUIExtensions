# SwiftUIExtensions

### Availability
This package is compatible with Xcode 11, macOS 10.15, iOS 13, tvOS 13, and watchOS 6.0.

### Example
This example shows how to generate a preview for all of the cases defined in the `ColorScheme` extension. 

By accessing its static property, `allCasesIdentifiableBySelf`, we'll generate previews for both the `.light` and `.dark` variants.  `MyView` is then modified with a custom `ViewModifier` called `AdaptingColorScheme` which provides padding, sets an appropriate background color, and applies the `appearance` environment modifier.

```Swift
#if DEBUG
struct MyView_Previews : PreviewProvider {

static var previews: some View {
    ForEach(ColorScheme.allCasesIdentifiableBySelf) { appearance in
        MyView()
            .previewLayout(.sizeThatFits)                    
            .modifier(AdaptingColorScheme(appearance))
    }
}
#endif
```
