/// This file is purely for helping in the transition from `BCTextView` to `BCSourceEditor`
/// The struct here is an empty view, and will be removed in a future release.

import SwiftUI

// swiftlint:disable:next line_length
@available(*, unavailable, renamed: "BCSourceEditor", message: "BCTextView has moved to https://github.com/CodeEditApp/CodeEditSourceEditor, please update any dependencies to use this new repository URL.")
struct BCTextView: View {
    var body: some View {
        EmptyView()
    }
}
