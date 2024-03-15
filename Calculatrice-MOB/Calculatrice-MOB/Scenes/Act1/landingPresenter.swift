import UIKit

/// Responsible for updating the view according to the data to present.
final class landingPresenter {
	/// A weak reference to the view controller for changing UIKit representation.
	/// Has to be assigned via property injection after initializing.
	weak var viewController: UIViewController?

	/// A weak reference to the view responsible for.
	/// Needs to be assigned by the view controller when the view gets created.
	weak var view: landingView?
}

// MARK: - landingPresenterInterface

extension landingPresenter: landingPresenterInterface {
	func updateView(model: landingModel.Presenter.UpdateView) {
	}
}
