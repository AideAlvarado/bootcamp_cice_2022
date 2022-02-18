//
//  GenericWebViewController.swift
//  CiceMusic
//
//  Created by Aide Alvarado on 18/2/22.
//

import UIKit
import WebKit

protocol GenericWebOutputPresenterProtocol{
    
}

class GenericWebViewController: UIViewController {

    // MARK: - ID
    var presenter: GenericWebPresenterInputProtocol?
    
    // MARK: - Variables globales
    var myWebViewInContainer: WKWebView!
    
    
    // MARK: IBOutlets
    @IBOutlet weak var contentWebView: UIView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionWebView()
        self.loadWebView()
        // Do any additional setup after loading the view.
    }
    
    private func configuracionWebView() {
        self.title = "Cice Music Web"
        self.myActivityIndicator.isHidden = false
        self.myActivityIndicator.startAnimating()
        
        let contentWebView = WKUserContentController()
        let config = WKWebViewConfiguration()
        let prefers = WKWebpagePreferences()
        
        prefers.allowsContentJavaScript = true
        self.myWebViewInContainer = WKWebView(frame: self.contentWebView.bounds, configuration: config)
        self.myWebViewInContainer.configuration.userContentController = contentWebView
        self.myWebViewInContainer.navigationDelegate = self
        
        self.contentWebView.addSubview(self.myWebViewInContainer)
        
    }
    
    private func loadWebView() {
        guard let urlUnw = URL(string: "http://www.icologic.co") else { return }
        self.myWebViewInContainer.load(URLRequest(url: urlUnw))
    }



}

extension GenericWebViewController: GenericWebOutputPresenterProtocol {
    
}

extension GenericWebViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView,
                 didStartProvisionalNavigation navigation: WKNavigation!) {
        //
    }
    
    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!) {
        
        self.myActivityIndicator.isHidden = true
        self.myActivityIndicator.stopAnimating()
    }
    
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
        
    }
    
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationResponse: WKNavigationResponse,
                 decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(.allow)
        
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        //
    }
}
