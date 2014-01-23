![image](https://github.com/JackTeam/XHItemScrollToolBar/raw/master/Screenshots/XHItemScrollToolBar.gif)

## XHItemScrollToolBar
XHItemScrollToolBar is a TabBar or ItemBar for rolling, used for user category select

Easy to drop into your project.

You can add as many items as you want, the XHItemScrollToolBar will layout them automatically.


## Requirements ##

XHItemScrollToolBar requires Xcode 5, targeting either iOS 5.0 and above, ARC-enabled.


## How to use ##
	
Drag XHItem.h/XHItem.m and XHItemView.h/XHItemView.m amd XHItemScrollToolBar.h/XHItemScrollToolBar.m files to your project. 

No other frameworks required.

```objc

  for (int i = 0; i < 10; i ++) {
        XHItem *item = [[XHItem alloc] initWithNormalImage:[UIImage imageNamed:@"tabBar-camera"] selectedImage:[UIImage imageNamed:@"tabBar-camera-on"] title:@"title5" itemSelectedBlcok:^(XHItemView *itemView) {
            NSInteger index = itemView.item.index;
            NSLog(@"index : %d", index);
        }];
        [items addObject:item];
    }
    
    
    XHItemScrollToolBar *itemScrollToolBarToMid = [[XHItemScrollToolBar alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) / 2.0 - kXHItemScrollToolBarHeight / 2.0, CGRectGetWidth(self.view.bounds), kXHItemScrollToolBarHeight)];
    itemScrollToolBarToMid.itemWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]) / 5.0;
    itemScrollToolBarToMid.items = items;
    itemScrollToolBarToMid.selectIndex = 2;
    [self.view addSubview:itemScrollToolBarToMid];
    [itemScrollToolBarToMid reloadData];
```

##Installation

[CocosPods](http://cocosPods.org) is the recommended methods of installation XHItemScrollToolBar, just add the following line to `Profile`:

```
pod 'XHItemScrollToolBar'
```


## Lincense ##

XHItemScrollToolBar is available under the MIT license. See the LICENSE file for more info.

## Instructions
         
English：If you use open source components in your project, please [Email us](mailto:xhzengAIB@gmail.com?subject=From%20GitHub%20XHItemScrollToolBar) to tell us the name of your application, otherwise the consequence is proud.

