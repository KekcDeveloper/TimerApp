import UIKit

class TimerViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var switchButton: UIButton!

    @IBAction func switchButtonPressed() {
        switchButton.isSelected.toggle()
    }

}
