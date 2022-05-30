/* Write your PL/SQL query statement below */
select request_at as Day, round(canceled/total, 2) as "Cancellation Rate" from (
    select request_at, sum(status) as canceled, count(status) as total from (
        select
            request_at,
            case
                when status = 'completed' then 0
                when status != 'completed' then 1
            end as status
        from trips t1, users t2, users t3
        where
            request_at between '2013-10-01' and '2013-10-03' and
            t1.client_id = t2.users_id and t2.banned = 'No' and
            t1.driver_id = t3.users_id and t3.banned = 'No'
    ) tmp
    group by request_at
) tmp