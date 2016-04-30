select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='IOS_EYEPETIZER' and is_start_new = 1 and p_date >= 20160409 and p_date <= 20160415
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='IOS_EYEPETIZER' and p_date >= 20160416 and p_date <= 20160422
		group by id) a
	group by id) b
--iOS 新用户本周



select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='IOS_EYEPETIZER' and is_start_new = 0 and p_date >= 20160409 and p_date <= 20160415
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='IOS_EYEPETIZER' and p_date >= 20160416 and p_date <= 20160422
		group by id) a
	group by id) b
--iOS 老用户本周



select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and is_start_new = 1 and p_date >= 20160409 and p_date <= 20160415
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and p_date >= 20160416 and p_date <= 20160422
		group by id) a
	group by id) b
--Android 新用户本周



select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and is_start_new = 0 and p_date >= 20160409 and p_date <= 20160415
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and p_date >= 20160416 and p_date <= 20160422
		group by id) a
	group by id) b
--Android 老用户本周