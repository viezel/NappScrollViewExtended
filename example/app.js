var win = Ti.UI.createWindow({
	backgroundColor:'white'
});


// creating a custom load view for infinite scrolling
var loadingView = Ti.UI.createView({
	height:60,
	width:320,
	backgroundColor:"#222"
});
var activityIndicator = Ti.UI.createActivityIndicator({
	color: '#fff',
	font: {fontFamily:'Helvetica Neue', fontSize:16, fontWeight:'bold'},
	message: ' Loading...',
	style:Ti.UI.iPhone.ActivityIndicatorStyle.PLAIN,
	height:Ti.UI.SIZE,
	width:Ti.UI.SIZE
});
activityIndicator.show();
loadingView.add(activityIndicator);



//require our module
var NappScrollView = require('dk.napp.nappscrollviewextended');

//create the new Extended ScrollView
var scrollView = NappScrollView.createExtendedScrollView({
	contentWidth: 'auto',
	contentHeight: 'auto',
  	showVerticalScrollIndicator: true,
  	showHorizontalScrollIndicator: false,
	backgroundColor:"transparent",
	layout:"vertical",
	
	
	//enables the infiniteScrolling and optional adds a loadingView
	infiniteScrolling:{
		view:loadingView
	},
	
	//all the pullToRefresh parameters are optional
	pullToRefresh:{
		loadingText: L("Loading"),
		idleText: L("Pull to refresh..."),
		releaseText: L("Release to refresh..."),
		color: "#FF0044",
		arrowColor:"blue",
		backgroundColor:"#222",
		activityIndicator: Ti.UI.iPhone.ActivityIndicatorStyle.BIG 
	}
});
win.add(scrollView);

//create listeners
scrollView.addEventListener("PullToRefresh", function(e){
	Ti.API.info("PullToRefresh event -> start loading data");
	//simulate download of remote data
	setTimeout(function(){
		//call pullToRefreshCompleted when your update is done
		scrollView.pullToRefreshCompleted();	
		
		//update some properties
		scrollView.updatePullToRefreshProperties({
			subtitle:"Last Updated: " + new Date()
		});
	},2500);
});

scrollView.addEventListener("InfiniteScrolling", function(e){
	Ti.API.info("InfiniteScrolling event -> start loading data");
	//simulate download of remote data
	setTimeout(function(){
		//call infiniteScrollingCompleted when your update is done
		scrollView.infiniteScrollingCompleted();	
		
		//update the scrollView
		for(var i=0; i < 3; i++){
			var view = Ti.UI.createView({
				height:100,
				top:10,
				backgroundColor:"blue"
			});
			scrollView.add(view);
		}
	},1500);
});


//demo data
for(var i=0; i < 10; i++){
	var view = Ti.UI.createView({
		height:100,
		top:10,
		backgroundColor:"#ccc"
	});
	scrollView.add(view);
}

win.open();