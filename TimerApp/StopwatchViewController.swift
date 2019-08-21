import UIKit

class StopwatchViewControler: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var switchButton: UIButton!

    @IBAction func switchButtonPressed() {
        switchButton.isSelected.toggle()
        if switchButton.isSelected {
            startTimer()
        } else {
            stopTimer()
        }
    }

    var timer: Timer?

    private func startTimer() {
        let date = Date()
        let timeFormatter = DateComponentsFormatter()
        timeFormatter.allowedUnits = [.minute, .second]
        timeFormatter.unitsStyle = .positional
        timeFormatter.zeroFormattingBehavior = .pad
        timeFormatter.allowsFractionalUnits = true
        timeLabel.text =  timeFormatter.string(from: 0)
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { [weak self] _ in
            let formattedTime = timeFormatter.string(from: date, to: Date())
            self?.timeLabel.text = formattedTime
        }
    }

    private func stopTimer() {
        timer?.invalidate()
    }

}
