# SchemataSwift

[![Test](https://github.com/nostrability/schemata-swift/actions/workflows/test.yml/badge.svg)](https://github.com/nostrability/schemata-swift/actions/workflows/test.yml)

Swift data package for [Nostr](https://nostr.com/) protocol JSON schemas. Bundles compiled schemas from [nostrability/schemata](https://github.com/nostrability/schemata).

## Usage

```swift
import SchemataSwift

let schema = Schemata.get("kind1Schema") // [String: Any]?
let allKeys = Schemata.keys()            // [String]
```

## License

GPL-3.0-or-later
