import UIKit

/**
 The view controller which is the main module for this scene and thus creates and holds all components of it.
 */
final class testVC: BaseViewController {
	/// A strong reference to the interactor which binds the display to the logic.
	private var interactor: testInteractor?

	// A strong reference to the presenter which presents data on the view.
	private let presenter = testPresenter()

	// A strong reference to the navigator which is responsible for routing.
	private let navigator: testNavigator

	// A strong reference to the business logic.
	private let logic: testLogic

	required init(setupModel: SetupModel.test, dependencies actDependencies: testDCInterface) {
		navigator = testNavigator(dependencies: actDependencies)
		let logicDependencies = testModel.LogicDependencies(
			setupModel: setupModel,
			presenter: presenter,
			navigator: navigator,
			actDependencies: actDependencies
		)
		logic = testLogic(dependencies: logicDependencies)
		super.init()
		navigator.viewController = self
		presenter.viewController = self
	}

	// MARK: - View

	override func loadView() {
		let sceneView = testView()
		view = sceneView
		presenter.view = sceneView
		interactor = testInteractor(view: sceneView, logic: logic)
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		if isMovingToParent || isBeingPresented {
			// Request initial display data.
			logic.updateDisplay()
		}
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

		if isMovingFromParent || isBeingDismissed {
			// Scene is transitioning back to the previous.
			logic.updateParentScene()
		}
	}
}
