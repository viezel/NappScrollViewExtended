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

#import "TiBase.h"
#import "TiUIScrollView.h"

@interface DkNappNappscrollviewextendedExtendedScrollView : TiUIScrollView {
    
}

#pragma mark Public APIs

//Push to Refresh
-(void)updatePullToRefreshProperties:(id)args;
-(void)triggerPullToRefresh:(id)args;
-(void)pullToRefreshCompleted:(id)args;

//Infinite Scrolling
-(void)triggerInfiniteScrolling:(id)args;
-(void)infiniteScrollingCompleted:(id)args;

@end
