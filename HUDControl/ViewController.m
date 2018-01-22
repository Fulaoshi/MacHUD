#import "FNHUD.h"
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)showMessage:(id)sender {
    [FNHUD showMessage:_txtMsg.stringValue inView:self.view];
}

- (IBAction)clickAtSuccess:(id)sender {
    [FNHUD showSuccess:_txtMsg.stringValue inView:self.view];
}

- (IBAction)clickAtError:(id)sender {
    [FNHUD showError:_txtMsg.stringValue inView:self.view];
}

- (IBAction)clickAtHide:(id)sender {
    [FNHUD hide];
}

- (IBAction)clickAtLoading:(id)sender {
    [FNHUD showLoading:_txtMsg.stringValue inView:self.view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [FNHUD hide];
        [FNHUD showSuccess:@"Okay" inView:self.view];
    });
}

@end
