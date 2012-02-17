#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = window_;

- (void)dealloc {
    [self.window release];
    [super dealloc];
}

-(BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    [self.window makeKeyAndVisible];
    return YES;
}

@end
