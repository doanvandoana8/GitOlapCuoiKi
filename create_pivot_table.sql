select *
from [dbo].[country] c,[dbo].[date] d,[dbo].[fact] f,[dbo].[poor_weather] p,[dbo].[weather_station] w
where w.CountryID = c.CountryID and f.StationID=w.StationID and d.DateID=f.DateID and p.PoorWeatherID=f.PoorWeatherID
go

select f.FactID,c.CountryID,d.DateID,w.StationID,p.PoorWeatherID,c.CountryName,w.StationName,d.Day,d.Month,d.Year,p.[ Snow],
p.[Blowing Snow],p.[Dust or Sand],p.Fog,p.Glaze,p.Hail,p.Rain,p.Sleet,p.[Smoke or Haze],p.Thunder,
f.MaxCelsius,f.MinCelsius,f.MaximumWindySpeed,f.Precip,f.SnowDepthInch,f.WindyDriection,f.WindyTime
into excel_pivot_table
from [dbo].[country] c,[dbo].[date] d,[dbo].[fact] f,[dbo].[poor_weather] p,[dbo].[weather_station] w
where w.CountryID = c.CountryID and f.StationID=w.StationID and d.DateID=f.DateID and p.PoorWeatherID=f.PoorWeatherID
go