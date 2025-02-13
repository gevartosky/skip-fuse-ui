// Copyright 2025 Skip
//
// This is free software: you can redistribute and/or modify it
// under the terms of the GNU Lesser General Public License 3.0
// as published by the Free Software Foundation https://fsf.org

public struct VerticalAlignment : Equatable /*, Sendable */ {
    let key: String

    init(key: String) {
        self.key = key
    }

    @available(*, unavailable)
    public init(_ id: Any /* AlignmentID.Type */) {
        key = ""
    }

    @available(*, unavailable)
    public func combineExplicit(_ values: any Sequence<CGFloat?>) -> CGFloat? {
        fatalError()
    }

    public static let center = VerticalAlignment(key: "center")
    public static let top = VerticalAlignment(key: "top")
    public static let bottom = VerticalAlignment(key: "bottom")
    public static let firstTextBaseline = VerticalAlignment(key: "firstTextBaseline")
    public static let lastTextBaseline = VerticalAlignment(key: "lastTextBaseline")
}
