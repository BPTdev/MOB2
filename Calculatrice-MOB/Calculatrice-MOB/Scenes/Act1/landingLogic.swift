import Foundation

extension landingModel {
	/// The dependencies for the logic to inject.
	struct LogicDependencies {
		let setupModel: SetupModel.landing
		let presenter: landingPresenterInterface
		let navigator: landingNavigatorInterface
		let actDependencies: welcomeDCInterface
	}
}

/**
 The business logic for this scene.
 This class is responsible for any logic happening in the scene.
 */
final class landingLogic {
	/// The data model holding the current scene's logic state.
	private(set) var state = landingModel.LogicState()

	/// The injected dependencies.
	private let dependencies: landingModel.LogicDependencies

	required init(dependencies: landingModel.LogicDependencies) {
		self.dependencies = dependencies
	}
}

// MARK: - landingLogicInterface

extension landingLogic: landingLogicInterface {
	func updateDisplay() {
		let model = landingModel.Presenter.UpdateView()
		dependencies.presenter.updateView(model: model)
	}

    func updateParentScene() {
        let model = SetupModel.landingResult()
        dependencies.setupModel.callback(model)
    }
}
