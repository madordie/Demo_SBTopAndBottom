# Demo_SBTopAndBottom
storyboard中UITableView的上下留白测试（Top Layout Guide、Bottom Layout Guide、automaticallyAdjustsScrollViewInsets）
# 步骤
	1、常规创建一个UITabBarController
	2、下设一个UINavigationController+ViewController
	3、分别对ViewController进行不同的设置：
		a、其ViewController为UITableViewController
		b、对UIViewController.view添加UITableView
		c、对UIViewController.view添加UIScrollView
		c、对UIViewController.view添加UILabel
	4、分别对UITableView代理数据源进行设置。不同控制器代码复制。
	5、对UIScrollView使用常规布局方案：
		a、增加一个contentView，然后设置其与UIScrollView等宽
		b、增加俩Label，分别位于屏幕左上角、左下角。（左下角超出屏幕
	6、对UILabel的控制器进行左上角、右下角设置，分别距离8
# 结论
	其实@颜风 说的是对的，直接关闭automaticallyAdjustsScrollViewInsets即可，如果关闭Top Layout Guide、Bottom Layout Guide会出现颜色变深。通过图层查看会发现这玩意的viewController.view根本就没有走到上下边上。
# 起源
	很久不用SB，突然发现上下边上怎么出现白边。。经过查看图层发现这玩意底部的View也不对。仔细察看SB的约束，会发现tableView的上下和左右的参照约束不一样：上下（Top Layout Guide、Bottom Layout Guide）、左右（super view）。由于原来没注意这么个玩意，主要是代码布局，并且没有纯SB写项目。囧囧囧。。所以现在才想起来弄这个玩意。。
	说实话，SB真好用，代码很快。。查看一下源代码不过300行不到，而且页面清晰。独立开发者很给力呀～～嘿嘿。。该睡觉咯～～
	