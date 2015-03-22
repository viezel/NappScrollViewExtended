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

#import "DkNappNappscrollviewextendedExtendedScrollView.h"
#import "SVPullToRefresh.h"
#import "TiUIViewProxy.h"

@implementation DkNappNappscrollviewextendedExtendedScrollView


//////////////////////////////////////////////////////////////
//      PULL TO REFRESH
//////////////////////////////////////////////////////////////
-(void)setPullToRefresh_:(id)args
{
    //add Pull To Refresh to the ScrollView
    [self.scrollView addPullToRefreshWithActionHandler:^{
        [self.proxy fireEvent:@"PullToRefresh" withObject:nil];
    }];
    
    //apply styling
    [self updatePullToRefreshProperties:args];
}

-(void)triggerPullToRefresh:(id)args
{
    ENSURE_UI_THREAD(triggerPullToRefresh,args);
    [self.scrollView triggerPullToRefresh];
}

-(void)pullToRefreshCompleted:(id)args
{
    ENSURE_UI_THREAD(pullToRefreshCompleted,args);
    [self.scrollView.pullToRefreshView stopAnimating];
}

-(void)updatePullToRefreshProperties:(id)args
{
    ENSURE_UI_THREAD(updatePullToRefreshProperties,args);
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    
    //////////////////////////////////////////////////
    // The below styling options are all optional
    //////////////////////////////////////////////////
    
    if(args != nil){
        
        ///////////////////////////////
        //  Title text
        ///////////////////////////////
        if ([args objectForKey:@"loadingText"] != nil) {
            [self.scrollView.pullToRefreshView setTitle:[TiUtils stringValue:@"loadingText" properties:args] forState:SVPullToRefreshStateLoading];
        }
        if ([args objectForKey:@"idleText"] != nil) {
            [self.scrollView.pullToRefreshView setTitle:[TiUtils stringValue:@"idleText" properties:args] forState:SVPullToRefreshStateStopped];
        }
        if ([args objectForKey:@"releaseText"] != nil) {
            [self.scrollView.pullToRefreshView setTitle:[TiUtils stringValue:@"releaseText" properties:args] forState:SVPullToRefreshStateTriggered];
        }
        
        ///////////////////////////////
        //  Subtitle text
        ///////////////////////////////
        if ([args objectForKey:@"subtitle"] != nil) {
            [self.scrollView.pullToRefreshView setSubtitle:[TiUtils stringValue:@"subtitle" properties:args] forState:SVPullToRefreshStateAll];
        }
        
        
        ///////////////////////////////
        //  Text Color
        ///////////////////////////////
        if ([args objectForKey:@"color"] != nil) {
            UIColor * newColor = [[TiUtils colorValue:@"color" properties:args] _color];
            [self.scrollView.pullToRefreshView setTextColor:newColor];
        }
        
        ///////////////////////////////
        //  Background Color
        ///////////////////////////////
        if ([args objectForKey:@"backgroundColor"] != nil) {
            UIColor * bgColor = [[TiUtils colorValue:@"backgroundColor" properties:args] _color];
            [self.scrollView.pullToRefreshView setBackgroundColor:bgColor];
        }
        
        ///////////////////////////////
        //  Arrow Color
        ///////////////////////////////
        if ([args objectForKey:@"arrowColor"] != nil) {
            UIColor * arrowColor = [[TiUtils colorValue:@"arrowColor" properties:args] _color];
            [self.scrollView.pullToRefreshView setArrowColor:arrowColor];
        }
        
        ///////////////////////////////
        //  Activity Indicator Style
        ///////////////////////////////
        if ([args objectForKey:@"activityIndicator"] != nil) {
            int value = [TiUtils intValue:@"activityIndicator" properties:args];
            switch (value) {
                case 0:
                    self.scrollView.pullToRefreshView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
                    break;
                case 1:
                    self.scrollView.pullToRefreshView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
                    break;
                case 2:
                    self.scrollView.pullToRefreshView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
                    break;
                    
                default:
                    self.scrollView.pullToRefreshView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
                    break;
            }
        }
        
        
        
        /*
        ///////////////////////////////
        //  Custom View - use a TiUIView
        ///////////////////////////////
        if ([args objectForKey:@"view"] != nil) {
            TiUIViewProxy* viewProxy = (TiUIViewProxy*)[args objectForKey:@"view"];
            UIView *customView = (UIView*)[viewProxy view];
            [self.scrollView.pullToRefreshView setCustomView:customView forState:SVPullToRefreshStateAll];
            
        }
        */
        
    }
}




//////////////////////////////////////////////////////////////
//      INFINITE SCROLLING
//////////////////////////////////////////////////////////////
-(void)setInfiniteScrolling_:(id)args
{
    //add Pull To Refresh to the ScrollView
    [self.scrollView addInfiniteScrollingWithActionHandler:^{
        [self.proxy fireEvent:@"InfiniteScrolling" withObject:nil];
    }];
    
    //apply styling
    [self updateInfiniteScrollingProperties:args];
}

-(void)triggerInfiniteScrolling:(id)args
{
    ENSURE_UI_THREAD(triggerInfiniteScrolling,args);
    [self.scrollView triggerInfiniteScrolling];
}

-(void)infiniteScrollingCompleted:(id)args
{
    ENSURE_UI_THREAD(infiniteScrollingCompleted,args);
    [self.scrollView.infiniteScrollingView stopAnimating];
}

-(void)updateInfiniteScrollingProperties:(id)args
{
    ENSURE_UI_THREAD(updateInfiniteScrollingProperties,args);
    ENSURE_SINGLE_ARG_OR_NIL(args, NSDictionary);
    
    //////////////////////////////////////////////////
    // The below styling options are all optional
    //////////////////////////////////////////////////
    
    if(args != nil){
        
        ///////////////////////////////
        //  Custom View - use a TiUIView
        ///////////////////////////////
        if ([args objectForKey:@"view"] != nil) {
            
            NSLog(@"%@", [args objectForKey:@"view"] );
            
            TiUIViewProxy* viewProxy = (TiUIViewProxy*)[args objectForKey:@"view"];
            UIView *customView = (UIView*)[viewProxy view];
            [self.scrollView.infiniteScrollingView setCustomView:customView forState:SVInfiniteScrollingStateAll];
        }
        
    }
}



@end
