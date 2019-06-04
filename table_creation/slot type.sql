use[book parking slot]
go

create table [slot type](
	[slot type id] int not null primary key identity(1,1),
	[dimension] varchar(20) not null,
	[slot limit] int  not null,
	[slot value] int not null,
);