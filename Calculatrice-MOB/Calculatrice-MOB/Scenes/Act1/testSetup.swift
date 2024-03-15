extension SetupModel {
	/// The scene's setup model.
	struct test {
		/// The closure for passing back some values to the previous scene.
		let callback: testCallback
	}

	typealias testCallback = (_ model: testResult) -> Void

	/// The model to pass back to the parent controller.
	struct testResult {
	}
}
