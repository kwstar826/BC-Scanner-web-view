

#import "AppDelegate.h"
#import "DZNWebViewController.h"

#define DEBUG_LOCAL 0

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
#if DEBUG_LOCAL
    NSString *path = [[NSBundle mainBundle] pathForResource:@"NSHipster.com" ofType:@"html"];
    
    DZNWebViewController *controller = [[DZNWebViewController alloc] initWithFileURL:[NSURL fileURLWithPath:path]];

#else
    DZNWebViewController *controller = [[DZNWebViewController alloc] initWithURL:[NSURL URLWithString:@"https://bc-scanner.appspot.com/"]];

#endif
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window.rootViewController = navController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
