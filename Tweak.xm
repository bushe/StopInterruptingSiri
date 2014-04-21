%hook SBAssistantController
+ (BOOL)isAssistantVisible{
	if([[[objc_getClass("SBLockScreenManager") sharedInstance] lockScreenViewController] isInScreenOffMode])
		return NO;
	else
		return %orig;
}
%end