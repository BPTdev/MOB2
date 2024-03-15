import UIKit

/// The navigator for this scene.
final class landingNavigator {
	/// A weak reference to the scene's view controller this router performs transitions on.
	/// Has to be assigned via property injection after initialization.
	weak var viewController: UIViewController?

	/// A reference to the dependency container.
	private let dependencies: welcomeDCInterface

	init(dependencies: welcomeDCInterface) {
		self.dependencies = dependencies
	}
}

// MARK: - landingNavigatorInterface

extension landingNavigator: landingNavigatorInterface {
}
