select * from [dbo].[location details] LD join [dbo].[slot details] SD on SD.[loc id]=Ld.loc_id 
join  [dbo].[slot type] st on st.[slot type id]=sd.[slot type id] 
where [availability]=1 and [dimension]='large' and [loc_id]=2



select * from [dbo].[location details]
select * from [dbo].[slot details]