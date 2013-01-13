# NappScrollViewExtended Module

## Description

The module extends the TiUIScrollView in the Appcelerator Titanium Mobile framework. 
TiUITableView has the possibility to enable `Pull To Refresh`. This is not the case for TiUIScrollView. 
This module extends TiUIScrollView with `Pull To Refresh` and `Infinite Scrolling` functionalities.  

The module is licensed under the MIT license.


## Referencing the module in your Titanium Mobile application ##

Simply add the following lines to your `tiapp.xml` file:
    
    <modules>
        <module version="1.0" platform="iphone">dk.napp.nappscrollviewextended</module> 
    </modules>


## Reference

The following parameters is added to the TiUIScrollView

* **infiniteScrolling** - object. Use this to enable infinite scrolling
  * *view* - custom view


* **pullToRefresh** - object. Used to add Pull to Refresh functionality
  * *loadingText* - text
  * *idleText* - text
  * *releaseText* - text
  * *color* - text color
  * *arrowColor* - arrow color 
  * *backgroundColor* - background color of pullView
  * *activityIndicator* - use Ti ActivityIndicatorStyle constant

For more detailed code examples take a look into the example app

## Author

**Mads Møller**  
web: http://www.napp.dk  
email: mm@napp.dk  
twitter: @nappdev  


## License

    Copyright (c) 2010-2013 Mads Møller

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.