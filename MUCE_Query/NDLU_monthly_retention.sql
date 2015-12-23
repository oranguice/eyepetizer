select sum(case when flag_2 = 1 then 1 else 0 end), sum(case when flag_2 = 2 then 1 else 0 end), sum(case when flag_2 = 3 then 1 else 0 end)
from (
	select id, sum(flag) as flag_2
	from (
		select id, 1 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and is_start_new = 1 and p_date >= 20151001 and p_date <= 20151031
		group by id
	union all
		select id, 2 as flag
		from muce_topic.applicationstart
		where p_product='ANDROID_EYEPETIZER' and p_date >= 20151101 and p_date <= 20151131
		group by id) a
	group by id) b
group by flag_2
--10月新用户 retention