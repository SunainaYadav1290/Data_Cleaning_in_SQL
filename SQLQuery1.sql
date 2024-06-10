--select * from [Portfolio Project].dbo.Nash
--alter table [Portfolio Project].dbo.Nash add Sale1DateConverted Date
--update  [Portfolio Project].dbo.Nash set Sale1DateConverted=convert(Date,SaleDate)

--select PropertyAddress from [Portfolio Project].dbo.Nash

--select substring(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1) as address,
--substring(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,LEN(PropertyAddress)) as city
--from [Portfolio Project].dbo.Nash

--Splitting PropertyAddress into two new columns
--alter table [Portfolio Project].dbo.Nash add PropertySplitAddress Nvarchar(255)
--alter table [Portfolio Project].dbo.Nash add PropertySplitcity Nvarchar(255)

--select * from [Portfolio Project].dbo.Nash
--alter table [Portfolio Project].dbo.Nash add PropertySplitAddress Nvarchar(255)
--update [Portfolio Project].dbo.Nash 
--set PropertySplitAddress=substring(PropertyAddress,1,CHARINDEX(',',PropertyAddress)-1)
-- [Portfolio Project].dbo.Nash 
--set PropertySplitcity=substring(PropertyAddress,CHARINDEX(',',PropertyAddress)+1,len(PropertyAddress))


----taking out state from owner address
--select parsename(replace(OwnerAddress,',','.'), 3) as Address ,
--parsename(replace(OwnerAddress,',','.'), 2) as City,
--parsename(replace(OwnerAddress,',','.'), 1) as State

--from [Portfolio Project].dbo.Nash
--select * from [Portfolio Project].dbo.Nash

--alter table [Portfolio Project].dbo.Nash add OwnerSplitAddress nvarchar(255)
--alter table [Portfolio Project].dbo.Nash add OwnerSplitCity nvarchar(255)
--alter table [Portfolio Project].dbo.Nash add OwnerSplitState nvarchar(255)
--update Nash 
--set OwnerSplitAddress =parsename(replace(OwnerAddress,',','.'), 3)
--update [Portfolio Project].dbo.Nash 
--set OwnerSplitCity =parsename(replace(OwnerAddress,',','.'), 2)
--update [Portfolio Project].dbo.Nash 
--set OwnerSplitState =parsename(replace(OwnerAddress,',','.'), 1)
---------------------------------------------------------------
--select distinct(SoldAsVacant) from [Portfolio Project].dbo.Nash 
--update Nash set SoldAsVacant ='Yes' where SoldAsVacant = 'Y' 
--update Nash set SoldAsVacant ='No' where SoldAsVacant = 'N' 
--select * from [Portfolio Project].dbo.Nash

--------------------------------------------------------------
--deleting unused columns
--alter table [Portfolio Project].dbo.Nash drop column Owneraddress,PropertyAddress
select * from [Portfolio Project].dbo.Nash






