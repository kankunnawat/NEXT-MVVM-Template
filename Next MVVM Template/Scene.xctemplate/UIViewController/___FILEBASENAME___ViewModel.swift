import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewModel:
    BaseViewModel
{
    private let observables = Observables()
    let output: Output
    var router: ___VARIABLE_sceneName___Router!
    
    // MARK: VAR
    
    // MARK: Cycle
    override init() {
        output = .init(observables: observables)
        super.init()
    }
    
    func accept(action: Action) {
        switch action {
        case .primary:
            break
        }
    }
}

// MARK: RetrieveData
extension ___VARIABLE_sceneName___ViewModel {
    func retrieveData() {
        presentData()
    }
    
    private func presentData() {
        observables.data.accept(.init())
    }
}

// MARK: PrimaryAction
extension ___VARIABLE_sceneName___ViewModel {}

// MARK: Helper
