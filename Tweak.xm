@interface CSQuickActionsViewController : UIViewController
@end

@interface CSCoverSheetViewController : UIViewController
@end

@interface SBMediaController : NSObject
+(id)sharedInstance;
-(BOOL)isPlaying;
@end

%hook CSCoverSheetViewController
- (void)updateQuickActionsVisibility {
    %orig;
    CSQuickActionsViewController *quickActionsViewController = MSHookIvar<CSQuickActionsViewController *>(self, "_quickActionsViewController");
    if ([[%c(SBMediaController) sharedInstance] isPlaying]) {
        quickActionsViewController.view.hidden = YES;
    } else {
        quickActionsViewController.view.hidden = NO;
    }
}
%end
