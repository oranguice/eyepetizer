select p_date, sum(liulan), sum(bofang), sum(fenxiang), sum(shoucang)
from (
	select p_date, count(*) as liulan, '0' as bofang, '0' as fenxiang, '0' as shoucang
	from muce_topic.show
	where p_product= 'IOS_EYEPETIZER' and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date
union all
	select p_date, '0' as liulan, count(*) as bofang, '0' as fenxiang, '0' as shoucang
	from muce_topic.click
	where p_product= 'IOS_EYEPETIZER' and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date
union all
	select p_date, '0' as liulan, '0' as bofang, count(*) as fenxiang, '0' as shoucang
	from muce_topic.click
	where p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and p_date >= 20150617 and p_date <= 20150817 and content_id like '%1446%'
	group by p_date
union all
	select p_date, '0' as liulan, '0' as bofang, '0' as fenxiang, count(*) as shoucang
	from muce_topic.click
	where p_product = 'IOS_EYEPETIZER' and click_name = 'Favorite' and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date) a
group by p_date
--iOS 单条内容数据，1446 浏览|播放|分享|收藏


select p_date, sum(liulan), sum(bofang), sum(fenxiang), sum(shoucang)
from (
	select p_date, count(*) as liulan, '0' as bofang, '0' as fenxiang, '0' as shoucang
	from muce_topic.show
	where p_product='ANDROID_EYEPETIZER'  and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date
union all
	select p_date, '0' as liulan, count(*) as bofang, '0' as fenxiang, '0' as shoucang
	from muce_topic.click
	where p_product='ANDROID_EYEPETIZER'  and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date
union all
	select p_date, '0' as liulan, '0' as bofang, count(*) as fenxiang, '0' as shoucang
	from muce_topic.click
	where p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date
union all
	select p_date, '0' as liulan, '0' as bofang, '0' as fenxiang, count(*) as shoucang
	from muce_topic.click
	where p_product = 'ANDROID_EYEPETIZER' and click_name = 'Favorite' and p_date >= 20150617 and p_date <= 20150817 and content_id = 1446
	group by p_date) b
group by p_date
--Android 单条内容数据，1446 浏览|播放|分享|收藏