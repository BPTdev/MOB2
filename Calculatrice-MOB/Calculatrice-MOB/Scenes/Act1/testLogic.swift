import Foundation

extension testModel {
	/// The dependencies for the logic to inject.
	struct LogicDependencies {
		let setupModel: SetupModel.test
		let presenter: testPresenterInterface
		let navigator: testNavigatorInterface
		let actDependencies: testDCInterface
	}
}

/**
 The business logic for this scene.
 This class is responsible for any logic happening in the scene.
 */
final class testLogic {
	/// The data model holding the current scene's logic state.
	private(set) var state = testModel.LogicState()

	/// The injected dependencies.
	private let dependencies: testModel.LogicDependencies

	required init(dependencies: testModel.LogicDependencies) {
		self.dependencies = dependencies
	}
}

// MARK: - testLogicInterface

extension testLogic: testLogicInterface {
	func updateDisplay() {
		let model = testModel.Presenter.UpdateView()
		dependencies.presenter.updateView(model: model)
	}

    func updateParentScene() {
        let model = SetupModel.testResult()
        dependencies.setupModel.callback(model)
    }
}
