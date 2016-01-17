select p_date,
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then id else null end),
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then id else null end)
from muce_topic.click
where p_date >= 20160102 and p_date <= 20160108
group by p_date
--播放与分享用户人数



select p_date,
	sum(case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then 1 else 0 end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then 1 else 0 end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160102 and p_date <= 20160108
group by p_date
--播放与分享用户人数


select p_date,
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then id else null end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then id else null end),
	sum(case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160102 and p_date <= 20160112
group by p_date
--ios播放与分享用户人数



select p_date,
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name='Play' then id else null end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then 1 else 0 end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then id else null end),
	sum(case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then 1 else 0 end)
from muce_topic.click
where p_date >= 20160102 and p_date <= 20160112
group by p_date
--android播放与分享用户人数