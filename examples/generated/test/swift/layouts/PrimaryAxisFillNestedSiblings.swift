import UIKit
import Foundation

// MARK: - PrimaryAxisFillNestedSiblings

public class PrimaryAxisFillNestedSiblings: UIView {

  // MARK: Lifecycle

  public init() {
    super.init(frame: .zero)

    setUpViews()
    setUpConstraints()

    update()
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Private

  private var horizontalView = UIView(frame: .zero)
  private var leftCardView = FillWidthFitHeightCard()
  private var spacerView = UIView(frame: .zero)
  private var rightCardView = FillWidthFitHeightCard()

  private func setUpViews() {
    addSubview(horizontalView)
    horizontalView.addSubview(leftCardView)
    horizontalView.addSubview(spacerView)
    horizontalView.addSubview(rightCardView)

    backgroundColor = Colors.teal50
    horizontalView.backgroundColor = Colors.teal100
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    horizontalView.translatesAutoresizingMaskIntoConstraints = false
    leftCardView.translatesAutoresizingMaskIntoConstraints = false
    spacerView.translatesAutoresizingMaskIntoConstraints = false
    rightCardView.translatesAutoresizingMaskIntoConstraints = false

    let horizontalViewTopAnchorConstraint = horizontalView.topAnchor.constraint(equalTo: topAnchor, constant: 10)
    let horizontalViewBottomAnchorConstraint = horizontalView
      .bottomAnchor
      .constraint(equalTo: bottomAnchor, constant: -10)
    let horizontalViewLeadingAnchorConstraint = horizontalView
      .leadingAnchor
      .constraint(equalTo: leadingAnchor, constant: 10)
    let horizontalViewTrailingAnchorConstraint = horizontalView
      .trailingAnchor
      .constraint(equalTo: trailingAnchor, constant: -10)
    let leftCardViewRightCardViewWidthAnchorSiblingConstraint = leftCardView
      .widthAnchor
      .constraint(equalTo: rightCardView.widthAnchor)
    let leftCardViewHeightAnchorParentConstraint = leftCardView
      .heightAnchor
      .constraint(lessThanOrEqualTo: horizontalView.heightAnchor)
    let spacerViewHeightAnchorParentConstraint = spacerView
      .heightAnchor
      .constraint(lessThanOrEqualTo: horizontalView.heightAnchor)
    let rightCardViewHeightAnchorParentConstraint = rightCardView
      .heightAnchor
      .constraint(lessThanOrEqualTo: horizontalView.heightAnchor)
    let leftCardViewLeadingAnchorConstraint = leftCardView
      .leadingAnchor
      .constraint(equalTo: horizontalView.leadingAnchor)
    let leftCardViewTopAnchorConstraint = leftCardView.topAnchor.constraint(equalTo: horizontalView.topAnchor)
    let leftCardViewBottomAnchorConstraint = leftCardView.bottomAnchor.constraint(equalTo: horizontalView.bottomAnchor)
    let spacerViewLeadingAnchorConstraint = spacerView.leadingAnchor.constraint(equalTo: leftCardView.trailingAnchor)
    let spacerViewTopAnchorConstraint = spacerView.topAnchor.constraint(equalTo: horizontalView.topAnchor)
    let rightCardViewTrailingAnchorConstraint = rightCardView
      .trailingAnchor
      .constraint(equalTo: horizontalView.trailingAnchor)
    let rightCardViewLeadingAnchorConstraint = rightCardView
      .leadingAnchor
      .constraint(equalTo: spacerView.trailingAnchor)
    let rightCardViewTopAnchorConstraint = rightCardView.topAnchor.constraint(equalTo: horizontalView.topAnchor)
    let rightCardViewBottomAnchorConstraint = rightCardView
      .bottomAnchor
      .constraint(equalTo: horizontalView.bottomAnchor)
    let spacerViewHeightAnchorConstraint = spacerView.heightAnchor.constraint(equalToConstant: 0)
    let spacerViewWidthAnchorConstraint = spacerView.widthAnchor.constraint(equalToConstant: 8)

    leftCardViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    spacerViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    rightCardViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow

    NSLayoutConstraint.activate([
      horizontalViewTopAnchorConstraint,
      horizontalViewBottomAnchorConstraint,
      horizontalViewLeadingAnchorConstraint,
      horizontalViewTrailingAnchorConstraint,
      leftCardViewRightCardViewWidthAnchorSiblingConstraint,
      leftCardViewHeightAnchorParentConstraint,
      spacerViewHeightAnchorParentConstraint,
      rightCardViewHeightAnchorParentConstraint,
      leftCardViewLeadingAnchorConstraint,
      leftCardViewTopAnchorConstraint,
      leftCardViewBottomAnchorConstraint,
      spacerViewLeadingAnchorConstraint,
      spacerViewTopAnchorConstraint,
      rightCardViewTrailingAnchorConstraint,
      rightCardViewLeadingAnchorConstraint,
      rightCardViewTopAnchorConstraint,
      rightCardViewBottomAnchorConstraint,
      spacerViewHeightAnchorConstraint,
      spacerViewWidthAnchorConstraint
    ])
  }

  private func update() {}
}
