#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) IBOutlet UIWindow* window;
@property (nonatomic, retain) IBOutlet UITextField* nameField;
@property (nonatomic, retain) IBOutlet UITextField* messageField;
@property (nonatomic, retain) IBOutlet UIButton* submitButton;

-(IBAction)onPushSubmit:(id)sender;

@end
