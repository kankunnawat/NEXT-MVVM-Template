import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewModels {
    struct Data {}
    
    enum Action {
        case primary
    }
}

extension ___VARIABLE_sceneName___ViewModel {
    typealias Data = ___VARIABLE_sceneName___ViewModels.Data
    typealias Action = ___VARIABLE_sceneName___ViewModels.Action
    
    struct Observables {
        var data = PublishRelay<Data>()
    }
    
    struct Output {
        var data: Driver<Data>
        
        init(observables: Observables) {
            data = observables.data.asDriverOnErrorJustComplete()
        }
    }
}

extension ___VARIABLE_sceneName___ViewController {
    typealias Data = ___VARIABLE_sceneName___ViewModels.Data
    typealias Action = ___VARIABLE_sceneName___ViewModels.Action
}

extension ___VARIABLE_sceneName___View {
    typealias Data = ___VARIABLE_sceneName___ViewModels.Data
    typealias Action = ___VARIABLE_sceneName___ViewModels.Action
}
