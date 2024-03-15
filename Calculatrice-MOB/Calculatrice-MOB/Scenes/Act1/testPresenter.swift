import UIKit

/// Responsible for updating the view according to the data to present.
final class testPresenter {
	/// A weak reference to the view controller for changing UIKit representation.
	/// Has to be assigned via property injection after initializing.
	weak var viewController: UIViewController?

	/// A weak reference to the view responsible for.
	/// Needs to be assigned by the view controller when the view gets created.
	weak var view: testView?
}

// MARK: - testPresenterInterface

extension testPresenter: testPresenterInterface {
	func updateView(model: testModel.Presenter.UpdateView) {
	}
}
