

select * from [airline].[Flights];

select * from [airline].[Reservation];
select * from [airline].[FlightClass]

select * from [airline].[Users];




 

 select * from [airline].[Reservation] as a [airline].[FlightClass] as b where a.FlightID =b.FlightID 







 create procedure [airline].[USP_Rev]
 @f_ID int
as
Begin

select  Sum(TotalFare) as "Total Revenue" from [airline].[Reservation]
where FlightID = @f_ID ;

end

 create procedure [airline].[USP_Rev3]
 @date1 date,
 @date2 date
as
Begin

select  Sum(TotalFare) as "Total Revenue" from [airline].[Reservation]  where JourneyDate Between @date1 and @date2 ;

end

exec [airline].[USP_Rev3] '2018-12-26','2019-05-21'

exec [airline].[USP_Rev] 109

drop  procedure [airline].[USP_Rev3] 



---Other Procedure to generate Overall Revenue
create procedure [airline].[USP_Rev123]

as
Begin

select  Sum(TotalFare) as "Total Revenue" from [airline].[Reservation];

end
exec [airline].[USP_Rev123] 