import UIKit
import BraintreeDropIn

class BlankViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        let vc = FakeCheckoutViewController()
        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true)
    }
}

class FakeCheckoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
    }

    override func viewDidAppear(_ animated: Bool) {
        let dropInController = BTDropInController(
            authorization: "sandbox_9dbg82cq_dcpspy2brwdjr3qn",
            request: BTDropInRequest()
        ) { controller, result, error in
            // handle result
        }
        
        self.present(dropInController!, animated: true)
    }

}
