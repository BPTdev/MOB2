import UIKit

/// The interface for presenting something in the view.
protocol testPresenterInterface: AnyObject {
	/**
	 Updates the whole view according to the given state.

	 - parameter model: The new state.
	 */
	func updateView(model: testModel.Presenter.UpdateView)
}

extension testModel {
	/// The models send to the presenter.
	enum Presenter {
		struct UpdateView {
		}
	}
}
