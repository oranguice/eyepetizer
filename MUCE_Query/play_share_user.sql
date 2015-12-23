select p_date,
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_name='Play' then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_name = 'Play' then id else null end),
	count(distinct case when p_product = 'IOS_EYEPETIZER' and click_action = 'SHARE' and click_name in ('ShareCoverMoment','ShareCoverWeibo','Facebook','ShareCoverQQ','Weibc','More','Moment','ShareCoverWechat','Weibo','ShareCoverTwitter','Twitter','ShareCoverFacebook','Wechat','Link','ShareCoverMore','QQ','ShareCoverWeibc') then id else null end),
	count(distinct case when p_product = 'ANDROID_EYEPETIZER' and click_action = 'SHARE' and click_name in ('Moment','Wechat','QQ','Weibo','SystemShare') then id else null end)
from muce_topic.click
where p_date >= 20151212 and p_date <= 20151218
group by p_date
--播放与分享用户人数