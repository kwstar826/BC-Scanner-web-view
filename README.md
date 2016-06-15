DZNWebViewController 3.0
================
[![Pod Version](http://img.shields.io/cocoapods/v/DZNWebViewController.svg)](https://cocoadocs.org/docsets/DZNWebViewController)
[![License](http://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)

An iPhone/iPad web browser built on top of WebKit with navigation controls and contextual features, useful for in-app web browsing.
Designed to be subclassed and extended.

![DZNWebViewController](Docs/DZNWebViewController_screenshot.png)

### Features
* Load HTTP links or local HTML.
* Navigation tools: backward/foward/stop/reload.
* Back/forward History (optional).
* Dragging gestures for back/forward, like Safari app.
* Progress bar embeded on the navigation bar or activity indicator (optional).
* Hide top and bottom bars when scrolling, like Safari app (optional).
* Contextual features: share link, copy link, read later.
* Open in Safari, Chrome, Opera Mini & Dolphin.
* Customizable toolbar icons.

### Supports
* Portrait/Landscape
* Localization
* iPhone/iPad
* Retina & iPad6+ displays
* iOS8 only
* ARC

## Installation
Available in [CocoaPods](http://cocoapods.org/?q=DZNWebViewController)
```ruby
pod 'DZNWebViewController'
```

If you're importing the source files manually, you must add the `WebKit` framework to your project.

## How to use

Create a new instance of DZNWebViewController, or your custom subclass, and initialize it with a NSURL.
You MUST embed the view controller into a UINavigationController to make it work properly.
```objc
NSURL *URL = [NSURL URLWithString:@"http://www.google.com/"];

DZNWebViewController *WVC = [[DZNWebViewController alloc] initWithURL:URL];
UINavigationController *NC = [[UINavigationController alloc] initWithRootViewController:WVC];

WVC.supportedWebNavigationTools = DZNWebNavigationToolAll;
WVC.supportedWebActions = DZNWebActionAll;
WVC.showLoadingProgress = YES;
WVC.allowHistory = YES;
WVC.hideBarsWithGestures = YES;

[self presentViewController:NC animated:YES completion:NULL];
```
