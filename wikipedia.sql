
select
        case cast(strftime('%w',date) as integer)
        when 0 then 'Sunday'
        when 1 then 'Monday'
        when 2 then 'Tuesday'
        when 3 then 'Wednesday'
        when 4 then 'Thursday'
        when 5 then 'Friday'
        else 'Saturday' end as daysoftheweek,
        sum(visits)
 from wikipedia
 group by daysoftheweek
 order by visits;


select * from wikipedia
where date in ('2016-01-01 00:00:00', '2016-11-08 00:00:00')
order by visits desc
limit 10;