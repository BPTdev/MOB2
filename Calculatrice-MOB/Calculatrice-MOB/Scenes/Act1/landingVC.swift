import UIKit

/**
 The view controller which is the main module for this scene and thus creates and holds all components of it.
 */
final class landingVC: BaseViewController {
	/// A strong reference to the interactor which binds the display to the logic.
	private var interactor: landingInteractor?

	// A strong reference to the presenter which presents data on the view.
	private let presenter = landingPresenter()

	// A strong reference to the navigator which is responsible for routing.
	private let navigator: landingNavigator

	// A strong reference to the business logic.
	private let logic: landingLogic

	required init(setupModel: SetupModel.landing, dependencies actDependencies: welcomeDCInterface) {
		navigator = landingNavigator(dependencies: actDependencies)
		let logicDependencies = landingModel.LogicDependencies(
			setupModel: setupModel,
			presenter: presenter,
			navigator: navigator,
			actDependencies: actDependencies
		)
		logic = landingLogic(dependencies: logicDependencies)
		super.init()
		navigator.viewController = self
		presenter.viewController = self
	}

	// MARK: - View

	override func loadView() {
		let sceneView = landingView()
		view = sceneView
		presenter.view = sceneView
		interactor = landingInteractor(view: sceneView, logic: logic)
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
