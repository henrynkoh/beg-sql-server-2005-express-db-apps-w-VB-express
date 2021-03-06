SET NOCOUNT ON
DECLARE @float1 float, @float2 float, @float3 float, @float4 float
DECLARE @dec1 decimal(15,4), @dec2 decimal(15,4), 
	@dec3 decimal(15,4), @dec4 decimal(15,4)
DECLARE @pointseven decimal(15,4)
SET @float1 = 7
SET @float2 = 10
SET @float3 = .0001
SET @float4 = @float1/@float2 - @float3 
SET @dec1 = 7
SET @dec2 = 10
SET @dec3 = .0001
SET @dec4 = @dec1/@dec2 - @dec3
SET @pointseven = .7
SELECT @float4 '@float4', @float3 '@float3', 
	@pointseven - @float4 'float diff'
SELECT @dec4 '@dec4', @dec3 '@dec', 
	@pointseven - @dec4 'dec diff'
