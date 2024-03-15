import UIKit

/// The interface for presenting something in the view.
protocol landingPresenterInterface: AnyObject {
	/**
	 Updates the whole view according to the given state.

	 - parameter model: The new state.
	 */
	func updateView(model: landingModel.Presenter.UpdateView)
}

extension landingModel {
	/// The models send to the presenter.
	enum Presenter {
		struct UpdateView {
		}
	}
}
