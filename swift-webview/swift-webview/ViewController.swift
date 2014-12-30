//
//  ViewController.swift
//  swift-webview
//
//  Created by apple on 14-12-30.
//  Copyright (c) 2014年 thinker. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
  
    
    @IBAction func stop(sender: AnyObject) {
        webView.stopLoading()
    }
    
    @IBAction func fresh(sender: AnyObject) {
        webView.reload()
    }
    
    @IBAction func goForward(sender: AnyObject) {
        webView.goForward()
    }

    @IBAction func goBack(sender: AnyObject) {
        webView.goBack()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURLRequest(URL: NSURL(string:"http://www.baidu.com")!)
        webView.delegate = self
        webView.loadRequest(url)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        println("start")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        println("finish")
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        println("error \(error)")
        
    }

}

