# SchemataSwift (Deprecated)

> **This package has been merged into [schemata-validator-swift](https://github.com/nostrability/schemata-validator-swift).**
>
> Swift's SPM resource bundles cause iOS codesign failures with the `@` alias directory and nested bundle structure. Unlike Rust (`include_dir!`) and JS (webpack bundling), Swift has no compile-time data embedding, so keeping schemas as a separate resource bundle adds complexity with no independent use case. The validator package now bundles schemas directly.

## Migration

Replace:

```swift
// Before (two packages)
.package(url: "https://github.com/nostrability/schemata-swift.git", branch: "main"),
.package(url: "https://github.com/nostrability/schemata-validator-swift.git", branch: "main"),
```

With:

```swift
// After (single package)
.package(url: "https://github.com/nostrability/schemata-validator-swift.git", branch: "main"),
```

The `SchemataValidator` module provides both validation and schema access:

```swift
import SchemataValidator

let result = SchemataValidator.validateNote(event)
let schema = SchemataValidator.getSchema("kind1Schema")
```

## License

GPL-3.0-or-later
