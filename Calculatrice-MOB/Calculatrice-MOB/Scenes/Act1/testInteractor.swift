/// Responsible for delivering any user inputs to the logic.
final class testInteractor {
	/// A reference to the view to recive inputs from.
	private unowned let view: testView

	/// A reference to the logic to deliver actions to.
	private unowned let logic: testLogicInterface

	/**
	 Initializes the interactor with not-retained references to the view and the logic.

	 - parameter view: The view to receive inputs from. Will be referenced as unowned.
	 - parameter logic: The logic to deliver actions to. Will be referenced as unowned.
	 */
	init(view: testView, logic: testLogicInterface) {
		self.view = view
		self.logic = logic
	}
}