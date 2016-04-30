select p_date,
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then id else null end),
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name in ('WECHAT_MOMENTS','WECHAT_FRIENDS','QQ','WEIBO','QZone','WEICO','COPY_LINK','OTHERS','ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then id else null end)
from muce_topic.click
where p_date >= 20160416 and p_date <= 20160422
group by p_date
--播放与分享用户人数



select p_date,
	sum(case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then 1 else 0 end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('WECHAT_MOMENTS','WECHAT_FRIENDS','QQ','WEIBO','QZone','WEICO','COPY_LINK','OTHERS','ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then 1 else 0 end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160326 and p_date <= 20160401
group by p_date
--播放与分享次数


---------------------流量漏斗--------------------------------

select p_date,
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then id else null end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name in ('WECHAT_MOMENTS','WECHAT_FRIENDS','QQ','WEIBO','QZone','WEICO','COPY_LINK','OTHERS','ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then id else null end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_name in ('WECHAT_MOMENTS','WECHAT_FRIENDS','QQ','WEIBO','QZone','WEICO','COPY_LINK','OTHERS','ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160419 and p_date <= 20160425
group by p_date
--ios播放与分享用户人数



select p_date,
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name='Play' then id else null end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then id else null end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160426 and p_date <= 20160426
group by p_date
--android播放与分享用户人数



iOS 新版的分享 name
WECHAT_MOMENTS
WECHAT_FRIENDS
QQ
WEIBO
QZone
WEICO
COPY_LINK
OTHERS


select a.p_date, a.account_uid, b.id, b.view_log_name
from (
	select p_date, account_uid, id
	from muce_topic.applicationstart
	where p_date = 20160426 and p_product = 'ANDROID_EYEPETIZER'
	group by p_date, account_uid, id) a
join (
	select p_date, id, view_log_name
	from muce_topic.task
	where p_date = 20160426 and p_product = 'ANDROID_EYEPETIZER' and view_log_url = 'recommend/summary_card' and task_action = 'SHARE'
	group by p_date, id, view_log_name) b
on a.p_date = b.p_date and a.id = b.id