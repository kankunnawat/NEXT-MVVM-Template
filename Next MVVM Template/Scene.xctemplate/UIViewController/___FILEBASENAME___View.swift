import RxCocoa
import RxSwift
import SnapKit

class ___VARIABLE_sceneName___View: 
    UIView 
{
    
    // MARK: - UI
    
    // MARK: - Var
    
    // MARK: - Rx
    let bag = DisposeBag()
    private let actionRelay = PublishRelay<Action>()
    var actionSignal: Signal<Action> { actionRelay.asSignal() }
    
    // MARK: - Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: Setup
    private func setupView() {}
    
    // MARK: Display
    func display(data: Data) {}
}
