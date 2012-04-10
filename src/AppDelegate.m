#import "AppDelegate.h"

#import "ASIFormDataRequest.h"

@implementation AppDelegate

@synthesize window = window_;
@synthesize nameField = nameField_;
@synthesize messageField = messageField_;
@synthesize submitButton = submitButton_;

- (void)dealloc {
    [self.window release];
    [super dealloc];
}

-(BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    [self.window makeKeyAndVisible];
    return YES;
}

-(IBAction)onPushSubmit:(id)sender {
    NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"http://im.kayac.com/api/post/%@", self.nameField.text]];
    ASIFormDataRequest* request = [ASIFormDataRequest requestWithURL:url];
    [request setPostValue:self.messageField.text forKey:@"message"];
    [request setDelegate:self];
    [request startAsynchronous];
}

-(void)requestFinished:(ASIHTTPRequest*)request {
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"success!!"
                                                    message:nil
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];

    [alert show];
    [alert release];
}

-(void)requestFailed:(ASIHTTPRequest*)request {
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"request failed!"
                                                    message:[NSString stringWithFormat:@"%@", [request error]]
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];

    [alert show];
    [alert release];
}

@end
