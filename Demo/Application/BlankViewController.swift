import UIKit

class BlankViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        let checkoutVC = DemoContainerViewController()
        let navigationController = UINavigationController(rootViewController: checkoutVC)

        self.present(navigationController, animated: true)
    }

}
