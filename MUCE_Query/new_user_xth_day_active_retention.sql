select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20151101 and p_date <= 20151107 and p_product = 'IOS_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 7) as pp_date, id, 2 as col_flag 
						from muce_topic.common
						where p_date >= 20151108 and p_date <= 20151114 and p_product = 'IOS_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 7), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--ios第七日活跃


select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20151024 and p_date <= 20151030 and p_product = 'IOS_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 15) as pp_date, id, 2 as col_flag 
						from muce_topic.common
						where p_date >= 20151108 and p_date <= 20151114 and p_product = 'IOS_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 15), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--ios第十五日活跃



select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20160319 and p_date <= 20160323 and p_product = 'IOS_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 30) as pp_date, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20160418 and p_date <= 20160422 and p_product = 'IOS_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 30), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--ios用户第30日留存率



select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20151101 and p_date <= 20151107 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 7) as pp_date, id, 2 as col_flag 
						from muce_topic.common
						where p_date >= 20151108 and p_date <= 20151114 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 7), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--android第七日活跃


select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20151024 and p_date <= 20151030 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 15) as pp_date, id, 2 as col_flag 
						from muce_topic.common
						where p_date >= 20151108 and p_date <= 20151114 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 15), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--android第十五日活跃



select pp_date, sum(case when col_flag = 1 then col_num else 0 end), sum(case when col_flag = 2 then col_num else 0 end), sum(case when col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20151009 and p_date <= 20151015 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 30) as pp_date, id, 2 as col_flag 
						from muce_topic.common
						where p_date >= 20151108 and p_date <= 20151114 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 30), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--android第三十日活跃