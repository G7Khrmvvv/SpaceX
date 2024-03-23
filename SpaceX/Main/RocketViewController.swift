//
//  RocketViewController.swift
//  SpaceX
//
//  Created by imac on 23.03.24.
//

import UIKit
import SnapKit


final class RocketViewController: UIPageViewController {

    private var pages = [UIViewController]()
    private let pageControl = UIPageControl()
    private let initialPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        style()
        layout()
    }
}

extension RocketViewController {
    
    func setup() {
        dataSource = self
        delegate = self


        let page1 = ViewController1()
        let page2 = ViewController2()
        let page3 = ViewController3()

        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
        
        setViewControllers([pages[initialPage]], direction: .forward, animated: false, completion: nil)
    }
    
    func style() {
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = initialPage
    }
    
    func layout() {
        view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: pageControl.bottomAnchor, multiplier: 1),
        ])
    }
}

// MARK: - Actions

extension RocketViewController {

    @objc func pageControlTapped(_ sender: UIPageControl) {
        setViewControllers([pages[sender.currentPage]], direction: .forward, animated: false, completion: nil)
    }
}

// MARK: - DataSources

extension RocketViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }
        
        if currentIndex == 0 {
            return pages.last
        } else {
            return pages[currentIndex - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = pages.firstIndex(of: viewController) else { return nil }

        if currentIndex < pages.count - 1 {
            return pages[currentIndex + 1]
        } else {
            return pages.first
        }
    }
}

// MARK: - Delegates

extension RocketViewController: UIPageViewControllerDelegate {

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let currentIndex = pages.firstIndex(of: viewControllers[0]) else { return }
        
        pageControl.currentPage = currentIndex
    }
}


// MARK: - ViewControllers

final class ViewController1: UIViewController {
    
    private let image1 = UIImageView()
    
    private let secondView = UIView()
    
    private let header = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
    }
}

private extension ViewController1 {
    func embedViews() {
        [
            image1,
            secondView,
            header
        
        ].forEach{view.addSubview($0)}
    }
}

private extension ViewController1 {
    func setupLayout() {
        view.addSubview(secondView)
        
        secondView.snp.makeConstraints{
            $0.top.equalTo(view.snp.topMargin).offset(300)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        image1.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(secondView.snp.topMargin).offset(60)
        }
        
        header.snp.makeConstraints{
            $0.top.equalTo(secondView.snp.topMargin).offset(30)
            $0.leading.equalTo(secondView.snp.leadingMargin).offset(30)
        }
        secondView.addSubview(header)
    }
}

private extension ViewController1 {
    func setupAppearance() {
        
        secondView.backgroundColor = .black
        secondView.clipsToBounds = true
        secondView.layer.cornerRadius = 40
        secondView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        
        header.textColor = .white
        header.font = UIFont(name: "SFProRounded-Semibold", size: 36)
    }
}

private extension ViewController1 {
    func setupData() {
        image1.image = UIImage(named: "starship")
        header.text = "Starship"
    }
}

private extension ViewController1 {
    func setupBehavior() {

    }
}

final class ViewController2: UIViewController {
    
    private let image1 = UIImageView()
    
    private let secondView = UIView()
    
    private let header = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
    }
}

private extension ViewController2 {
    func embedViews() {
        [
            image1,
            secondView,
            header
        
        ].forEach{view.addSubview($0)}
    }
}

private extension ViewController2 {
    func setupLayout() {
        view.addSubview(secondView)
        
        secondView.snp.makeConstraints{
            $0.top.equalTo(view.snp.topMargin).offset(300)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        image1.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(secondView.snp.topMargin).offset(60)
        }
        
        header.snp.makeConstraints{
            $0.top.equalTo(secondView.snp.topMargin).offset(30)
            $0.leading.equalTo(secondView.snp.leadingMargin).offset(30)
        }
        secondView.addSubview(header)
    }
}

private extension ViewController2 {
    func setupAppearance() {
        
        secondView.backgroundColor = .black
        secondView.clipsToBounds = true
        secondView.layer.cornerRadius = 40
        secondView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        
        header.textColor = .white
        header.font = UIFont(name: "SFProRounded-Semibold", size: 36)
    }
}

private extension ViewController2 {
    func setupData() {
        image1.image = UIImage(named: "starship")
        header.text = "Starship"
    }
}

private extension ViewController2 {
    func setupBehavior() {

    }
}

final class ViewController3: UIViewController {
    
    private let image1 = UIImageView()
    
    private let secondView = UIView()
    
    private let header = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()
    }
}

private extension ViewController3 {
    func embedViews() {
        [
            image1,
            secondView,
            header
        
        ].forEach{view.addSubview($0)}
    }
}

private extension ViewController3 {
    func setupLayout() {
        view.addSubview(secondView)
        
        secondView.snp.makeConstraints{
            $0.top.equalTo(view.snp.topMargin).offset(300)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        image1.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(secondView.snp.topMargin).offset(60)
        }
        
        header.snp.makeConstraints{
            $0.top.equalTo(secondView.snp.topMargin).offset(30)
            $0.leading.equalTo(secondView.snp.leadingMargin).offset(30)
        }
        secondView.addSubview(header)
    }
}

private extension ViewController3 {
    func setupAppearance() {
        
        secondView.backgroundColor = .black
        secondView.clipsToBounds = true
        secondView.layer.cornerRadius = 40
        secondView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        
        header.textColor = .white
        header.font = UIFont(name: "SFProRounded-Semibold", size: 36)
    }
}

private extension ViewController3 {
    func setupData() {
        image1.image = UIImage(named: "starship")
        header.text = "Starship"
    }
}

private extension ViewController3 {
    func setupBehavior() {

    }
}
