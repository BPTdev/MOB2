extension SetupModel {
	/// The scene's setup model.
	struct landing {
		/// The closure for passing back some values to the previous scene.
		let callback: landingCallback
	}

	typealias landingCallback = (_ model: landingResult) -> Void

	/// The model to pass back to the parent controller.
	struct landingResult {
	}
}
