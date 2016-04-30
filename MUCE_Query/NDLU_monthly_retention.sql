select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and is_start_new = 1 and p_date >= 20160206 and p_date <= 20160212
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and p_date >= 20160213 and p_date <= 20160219
		group by id) a
	group by id) b
--10月新用户 retention



select count(distinct case when p_product = 'IOS_EYEPETIZER' then id else null end), count(distinct case when p_product = 'ANDROID_EYEPETIZER' then id else null end)
from muce_topic.applicationstart
where p_date >= 20160324 and p_date <= 20160422
--22日

