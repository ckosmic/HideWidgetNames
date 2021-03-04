#import <UIKit/UIKit.h>

@interface SBIcon : NSObject
    -(BOOL)isMemberOfClass:(Class)arg1;
@end
@interface SBIconView : NSObject
    @property (nonatomic,strong) SBIcon *icon;
    @property (assign,nonatomic) BOOL labelHidden;
@end

%hook SBIconView

-(void)setLabelHidden:(BOOL) arg1 {
    %orig;
    if([self.icon isMemberOfClass:%c(SBWidgetIcon)]) %orig(TRUE);
}

%end
