import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewController:
    BaseViewController
{
    static func create() -> ___VARIABLE_sceneName___ViewController {
        let destination = ___VARIABLE_sceneName___ViewController()
        destination.viewModel = .init()
        destination.viewModel.router = .init(viewController: destination)
        return destination
    }
    
    var viewModel: ___VARIABLE_sceneName___ViewModel!
    
    // MARK: UI
    private let mainView = ___VARIABLE_sceneName___View().apply({
        $0.isHidden = true
    })
    
    // MARK: VAR
    override var navigationTransitionStyle: NavigationTransitionStyle { .close }
    override var isMinimizeLayoutMargins: Bool { true }
    override var preferredNavigationItemByNavigationItemStyle: Bool { true }
    
    // MARK: Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupEvent()
        viewModel.retrieveData()
    }
    
    // MARK: Setup
    private func setupView() {
        view.backgroundColor = .primary.kTWhite
        mainView.attach(to: self)
    }
    
    private func setupEvent() {
        disposeBag.insert([
            mainView.actionSignal
                .emit(onNext: { [weak self] in
                    self?.accept(action: $0)
                })
        ])
        // Out
        observe(viewModel: viewModel)
        let output = viewModel.output
        disposeBag.insert([
            output.data
                .drive(onNext: { [weak self] in
                    self?.display(data: $0)
                })
        ])
    }
    
    private func setupData() {
        setupScreenTitle(name: "<#placeholder#>")
    }
    
    // MARK: Display
    private func display(data: Data) {
        mainView.isHidden = false
        mainView.display(data: data)
    }
    
    // MARK: Handler
    func accept(action: Action) {
        viewModel.accept(action: action)
    }
}
