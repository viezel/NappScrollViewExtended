/**
 * Created by Mads Møller
 * Copyright Napp CMS
 * www.napp.dk
 *
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "DkNappNappscrollviewextendedExtendedScrollViewProxy.h"
#import "DkNappNappscrollviewextendedExtendedScrollView.h"

@implementation DkNappNappscrollviewextendedExtendedScrollViewProxy

//Push To Refresh
-(void)updatePullToRefreshProperties:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappNappscrollviewextendedExtendedScrollView*)[self view] updatePullToRefreshProperties:args];}, NO);
}
-(void)triggerPullToRefresh:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappNappscrollviewextendedExtendedScrollView*)[self view] triggerPullToRefresh:args];}, NO);
}
-(void)pullToRefreshCompleted:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappNappscrollviewextendedExtendedScrollView*)[self view] pullToRefreshCompleted:args];}, NO);
}

//Infinite Scrolling
-(void)triggerInfiniteScrolling:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappNappscrollviewextendedExtendedScrollView*)[self view] triggerInfiniteScrolling:args];}, NO);
}
-(void)infiniteScrollingCompleted:(id)args
{
    TiThreadPerformOnMainThread(^{[(DkNappNappscrollviewextendedExtendedScrollView*)[self view] infiniteScrollingCompleted:args];}, NO);
}


@end
