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
						where is_start_new = 1 and p_date >= 20160220 and p_date <= 20160226 and p_product = 'IOS_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1) as pp_date, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20160221 and p_date <= 20160227 and p_product = 'IOS_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--iOS新用户次日活跃



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
						where is_start_new = 1 and p_date >= 20160220 and p_date <= 20160226 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1) as pp_date, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20160221 and p_date <= 20160227 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--Android新用户次日活跃




select pp_date, sum(case when col_flag = 3 then col_num else 0 end), sum(case when col_flag = 1 or col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20160220 and p_date <= 20160226 and p_product = 'IOS_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1) as pp_date, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20160221 and p_date <= 20160227 and p_product = 'IOS_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--iOS新用户次日活跃



select pp_date, sum(case when col_flag = 3 then col_num else 0 end), sum(case when col_flag = 1 or col_flag = 3 then col_num else 0 end)
from (
	select pp_date, col_flag, count(*) as col_num
		from
		(
			select pp_date, id, sum(col_flag) as col_flag 
			from 
			( 
					select concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)) as pp_date, id, 1 as col_flag 
						from muce_topic.applicationstart
						where is_start_new = 1 and p_date >= 20160220 and p_date <= 20160226 and p_product = 'ANDROID_EYEPETIZER'
					group by concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), id
				union all 
					select date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1) as pp_date, id, 2 as col_flag 
						from muce_topic.applicationstart
						where p_date >= 20160221 and p_date <= 20160227 and p_product = 'ANDROID_EYEPETIZER'
					group by date_sub(concat(substring(p_date, 1, 4), '-', substring(p_date, 5, 2), '-', substring(p_date, 7, 2)), 1), id
			)ta 
			group by pp_date, id
		)tb
	group by pp_date, col_flag )tc
group by pp_date
--android新用户次日活跃