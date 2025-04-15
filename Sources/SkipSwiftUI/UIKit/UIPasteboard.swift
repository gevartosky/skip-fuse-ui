// Copyright 2023–2025 Skip
// SPDX-License-Identifier: LGPL-3.0-only WITH LGPL-3.0-linking-exception
import Foundation
import SkipUI

public class UIPasteboard {
    public static let general = UIPasteboard()

    private init() {
    }

    @available(*, unavailable)
    public init?(name pasteboardName: UIPasteboard.Name, create: Bool) {
    }

    @available(*, unavailable)
    public static func withUniqueName() -> UIPasteboard {
        fatalError()
    }

    public var name: UIPasteboard.Name {
        return .general
    }

    @available(*, unavailable)
    public static func remove(withName pasteboardName: UIPasteboard.Name) {
    }

    @available(*, unavailable)
    public var isPersistent: Bool {
        fatalError()
    }

    @available(*, unavailable)
    public func setPersistent(_ persistent: Bool) {
    }

    @available(*, unavailable)
    public var changeCount: Int {
        fatalError()
    }

    @available(*, unavailable)
    public var itemProviders: [Any /* NSItemProvider */] {
        fatalError()
    }

    @available(*, unavailable)
    public func setItemProviders(_ itemProviders: [Any /* NSItemProvider */], localOnly: Bool, expirationDate: Date?) {
    }

    @available(*, unavailable)
    public func setObjects(_ objects: [Any /* NSItemProviderWriting */]) {
    }

    @available(*, unavailable)
    public func setObjects(_ objects: [Any /* NSItemProviderWriting */], localOnly: Bool, expirationDate: Date?) {
    }

    @available(*, unavailable)
    public var types: [String] {
        fatalError()
    }

    @available(*, unavailable)
    public func contains(pasteboardTypes: [String]) -> Bool {
        fatalError()
    }

    @available(*, unavailable)
    public func data(forPasteboardType pasteboardType: String) -> Data? {
        fatalError()
    }

    @available(*, unavailable)
    public func value(forPasteboardType pasteboardType: String) -> Any? {
        fatalError()
    }

    @available(*, unavailable)
    public func setValue(_ value: Any, forPasteboardType pasteboardType: String) {
    }

    @available(*, unavailable)
    public func setData(_ data: Data, forPasteboardType pasteboardType: String) {
    }

    @available(*, unavailable)
    public func types(forItemSet itemSet: IndexSet?) -> [[String]] {
        fatalError()
    }

    @available(*, unavailable)
    public func contains(pasteboardTypes: [String], inItemSet itemSet: IndexSet?) -> Bool {
        fatalError()
    }

    @available(*, unavailable)
    public func itemSet(withPasteboardTypes pasteboardTypes: [String]) -> IndexSet? {
        fatalError()
    }

    @available(*, unavailable)
    public func values(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Any]? {
        fatalError()
    }

    @available(*, unavailable)
    public func data(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Data]? {
        fatalError()
    }

    @available(*, unavailable)
    public var items: [[String : Any]] {
        fatalError()
    }

    @available(*, unavailable)
    public func addItems(_ items: [[String : Any]]) {
    }

    @available(*, unavailable)
    open func setItems(_ items: [[String : Any]], options: [UIPasteboard.OptionsKey : Any] = [:]) {
        fatalError()
    }

    public var numberOfItems: Int {
        return SkipUI.UIPasteboard.general.numberOfItems
    }

    public var string: String? {
        get {
            return SkipUI.UIPasteboard.general.string
        }
        set {
            SkipUI.UIPasteboard.general.string = newValue
        }
    }

    public var strings: [String]? {
        get {
            return SkipUI.UIPasteboard.general.strings
        }
        set {
            SkipUI.UIPasteboard.general.strings = newValue
        }
    }

    public var url: URL? {
        get {
            return SkipUI.UIPasteboard.general.url
        }
        set {
            SkipUI.UIPasteboard.general.url = newValue
        }
    }

    public var urls: [URL]? {
        get {
            return SkipUI.UIPasteboard.general.urls
        }
        set {
            SkipUI.UIPasteboard.general.urls = newValue
        }
    }

    public var hasStrings: Bool {
        return SkipUI.UIPasteboard.general.hasStrings
    }

    public var hasURLs: Bool {
        return SkipUI.UIPasteboard.general.hasURLs
    }

    @available(*, unavailable)
    public var image: Any? /* UIImage */ {
        get {
            fatalError()
        }
        set {
        }
    }

    @available(*, unavailable)
    public var images: [Any /* UIImage */]? {
        get {
            fatalError()
        }
        set {
        }
    }

    @available(*, unavailable)
    public var color: Any? /* UIColor? */ {
        get {
            fatalError()
        }
        set {
        }
    }

    @available(*, unavailable)
    public var colors: [Any /* UIColor */]? {
        get {
            fatalError()
        }
        set {
        }
    }

    @available(*, unavailable)
    open var hasImages: Bool {
        fatalError()
    }

    @available(*, unavailable)
    open var hasColors: Bool {
        fatalError()
    }

    public struct DetectedValues {
        @available(*, unavailable)
        public var patterns: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */> {
            fatalError()
        }

        @available(*, unavailable)
        public var probableWebURL: String {
            fatalError()
        }

        @available(*, unavailable)
        public var probableWebSearch: String {
            fatalError()
        }

        @available(*, unavailable)
        public var number: Double? {
            fatalError()
        }

        @available(*, unavailable)
        public var links: [Any /* DDMatchLink */] {
            fatalError()
        }

        @available(*, unavailable)
        public var phoneNumbers: [Any /* DDMatchPhoneNumber */] {
            fatalError()
        }

        @available(*, unavailable)
        public var emailAddresses: [Any /* DDMatchEmailAddress */] {
            fatalError()
        }

        @available(*, unavailable)
        public var postalAddresses: [Any /* DDMatchPostalAddress */] {
            fatalError()
        }

        @available(*, unavailable)
        public var calendarEvents: [Any /* DDMatchCalendarEvent */] {
            fatalError()
        }

        @available(*, unavailable)
        public var shipmentTrackingNumbers: [Any /* DDMatchShipmentTrackingNumber */] {
            fatalError()
        }

        @available(*, unavailable)
        public var flightNumbers: [Any /* DDMatchFlightNumber */] {
            fatalError()
        }

        @available(*, unavailable)
        public var moneyAmounts: [Any /* DDMatchMoneyAmount */] {
            fatalError()
        }
    }

    @available(*, unavailable)
    public func detectPatterns(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, completionHandler: @escaping (Result<Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, Error>) -> ()) {
        fatalError()
    }

    @available(*, unavailable)
    public func detectedPatterns(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>) async throws -> Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */> {
        fatalError()
    }

    @available(*, unavailable)
    public func detectPatterns(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>], Error>) -> ()) {
        fatalError()
    }

    @available(*, unavailable)
    public func detectedPatterns(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, inItemSet itemSet: IndexSet?) async throws -> [Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>] {
        fatalError()
    }

    @available(*, unavailable)
    public func detectValues(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, completionHandler: @escaping (Result<UIPasteboard.DetectedValues, Error>) -> ()) {
        fatalError()
    }

    @available(*, unavailable)
    public func detectedValues(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>) async throws -> UIPasteboard.DetectedValues {
        fatalError()
    }

    @available(*, unavailable)
    public func detectValues(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[UIPasteboard.DetectedValues], Error>) -> ()) {
        fatalError()
    }

    @available(*, unavailable)
    public func detectedValues(for keyPaths: Set<AnyHashable /* PartialKeyPath<UIPasteboard.DetectedValues> */>, inItemSet itemSet: IndexSet?) async throws -> [UIPasteboard.DetectedValues] {
        fatalError()
    }

    /*
    @available(*, unavailable)
    public func setObjects<T>(_ objects: [T]) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting {
        fatalError()
    }

    @available(*, unavailable)
    public func setObjects<T>(_ objects: [T], localOnly: Bool, expirationDate: Date?) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting {
        fatalError()
    }
    */

    public struct OptionsKey : Hashable, Equatable, RawRepresentable /*, Sendable */ {
        @available(*, unavailable)
        public static var expirationDate: UIPasteboard.OptionsKey {
            fatalError()
        }

        @available(*, unavailable)
        public static var localOnly: UIPasteboard.OptionsKey {
            fatalError()
        }

        public let rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public static var changedNotification = Notification.Name(rawValue: "UIPasteboardChanged")

    @available(*, unavailable)
    public static var changedTypesAddedUserInfoKey: String {
        fatalError()
    }

    @available(*, unavailable)
    public static var changedTypesRemovedUserInfoKey: String {
        fatalError()
    }

    @available(*, unavailable)
    public static var removedNotification: Notification.Name {
        fatalError()
    }

    @available(*, unavailable)
    public static var typeListString: [String] {
        fatalError()
    }

    @available(*, unavailable)
    public static var typeListURL: [String] {
        fatalError()
    }

    @available(*, unavailable)
    public static var typeListImage: [String] {
        fatalError()
    }

    @available(*, unavailable)
    public static var typeListColor: [String] {
        fatalError()
    }

    @available(*, unavailable)
    public static var typeAutomatic: String {
        fatalError()
    }

    public struct Name : Hashable, Equatable, RawRepresentable /*, @unchecked Sendable */ {
        public static let general = UIPasteboard.Name(rawValue: "general")

        public let rawValue: String

        public init(_ rawValue: String) {
            self.rawValue = rawValue
        }

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public struct DetectionPattern : Hashable, Equatable, RawRepresentable /*, @unchecked Sendable */ {
        public let rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}
