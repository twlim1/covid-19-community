USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationAdmin2.csv' AS row 
MERGE (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.stateFips + '-' + row.countyFips})
SET o.name = 'Occupation-' + row.stateFips + '-' + row.countyFips,
    o.civilianEmployedPopulation16YearsAndOver = toInteger(row.civilianEmployedPopulation16YearsAndOver),
    o.managementBusinessScienceAndArtsOccupations = toInteger(row.managementBusinessScienceAndArtsOccupations),
    o.managementBusinessScienceAndArtsOccupationsPct = toFloat(row.managementBusinessScienceAndArtsOccupationsPct),
    o.serviceOccupations = toInteger(row.serviceOccupations),
    o.serviceOccupationsPct = toFloat(row.serviceOccupationsPct),
    o.salesAndOfficeOccupations = toInteger(row.salesAndOfficeOccupations),
    o.salesAndOfficeOccupationsPct = toFloat(row.salesAndOfficeOccupationsPct),
    o.naturalResourcesConstructionAndMaintenanceOccupations = toInteger(row.naturalResourcesConstructionAndMaintenanceOccupations),
    o.naturalResourcesConstructionAndMaintenanceOccupationsPct = toFloat(row.naturalResourcesConstructionAndMaintenanceOccupationsPct),
    o.productionTransportationAndMaterialMovingOccupations = toInteger(row.productionTransportationAndMaterialMovingOccupations),
    o.productionTransportationAndMaterialMovingOccupationsPct = toFloat(row.productionTransportationAndMaterialMovingOccupationsPct),
    o.stateFips = row.stateFips, o.countyFips = row.countyFips,
    o.source = row.source, o.aggregationLevel = row.aggregationLevel
RETURN count(o) as Occupation
;
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationAdmin2.csv' AS row
MATCH (e:Economics{id: 'ACSDP5Y2018.DP03-' + row.stateFips + '-' + row.countyFips})
MATCH (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.stateFips + '-' + row.countyFips})
MERGE (e)-[h:HAS_OCCUPATION]->(o)
RETURN count(h) as HAS_OCCUPATION
;
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationZip.csv' AS row 
MERGE (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.postalCode})
SET o.name = 'Occupation-' + row.postalCode,
    o.civilianEmployedPopulation16YearsAndOver = toInteger(row.civilianEmployedPopulation16YearsAndOver),
    o.managementBusinessScienceAndArtsOccupations = toInteger(row.managementBusinessScienceAndArtsOccupations),
    o.managementBusinessScienceAndArtsOccupationsPct = toFloat(row.managementBusinessScienceAndArtsOccupationsPct),
    o.serviceOccupations = toInteger(row.serviceOccupations),
    o.serviceOccupationsPct = toFloat(row.serviceOccupationsPct),
    o.salesAndOfficeOccupations = toInteger(row.salesAndOfficeOccupations),
    o.salesAndOfficeOccupationsPct = toFloat(row.salesAndOfficeOccupationsPct),
    o.naturalResourcesConstructionAndMaintenanceOccupations = toInteger(row.naturalResourcesConstructionAndMaintenanceOccupations),
    o.naturalResourcesConstructionAndMaintenanceOccupationsPct = toFloat(row.naturalResourcesConstructionAndMaintenanceOccupationsPct),
    o.productionTransportationAndMaterialMovingOccupations = toInteger(row.productionTransportationAndMaterialMovingOccupations),
    o.productionTransportationAndMaterialMovingOccupationsPct = toFloat(row.productionTransportationAndMaterialMovingOccupationsPct),       o.postalCode = row.postalCode,
    o.source = row.source, o.aggregationLevel = row.aggregationLevel
RETURN count(o) as Occupation
;
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationZip.csv' AS row
MATCH (e:Economics{id: 'ACSDP5Y2018.DP03-' + row.postalCode})
MATCH (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.postalCode})
MERGE (e)-[h:HAS_OCCUPATION]->(o)
RETURN count(h) as HAS_OCCUPATION
;
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationTract.csv' AS row 
MERGE (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.tract})
SET o.name = 'Occupation-' + row.tract,
    o.civilianEmployedPopulation16YearsAndOver = toInteger(row.civilianEmployedPopulation16YearsAndOver),
    o.managementBusinessScienceAndArtsOccupations = toInteger(row.managementBusinessScienceAndArtsOccupations),
    o.managementBusinessScienceAndArtsOccupationsPct = toFloat(row.managementBusinessScienceAndArtsOccupationsPct),
    o.serviceOccupations = toInteger(row.serviceOccupations),
    o.serviceOccupationsPct = toFloat(row.serviceOccupationsPct),
    o.salesAndOfficeOccupations = toInteger(row.salesAndOfficeOccupations),
    o.salesAndOfficeOccupationsPct = toFloat(row.salesAndOfficeOccupationsPct),
    o.naturalResourcesConstructionAndMaintenanceOccupations = toInteger(row.naturalResourcesConstructionAndMaintenanceOccupations),
    o.naturalResourcesConstructionAndMaintenanceOccupationsPct = toFloat(row.naturalResourcesConstructionAndMaintenanceOccupationsPct),
    o.productionTransportationAndMaterialMovingOccupations = toInteger(row.productionTransportationAndMaterialMovingOccupations),
    o.productionTransportationAndMaterialMovingOccupationsPct = toFloat(row.productionTransportationAndMaterialMovingOccupationsPct),
    o.tract = row.tract,
    o.source = row.source, o.aggregationLevel = row.aggregationLevel
RETURN count(o) as Occupation
;
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS 
FROM 'FILE:///03a-USCensusDP03OccupationTract.csv' AS row
MATCH (e:Economics{id: 'ACSDP5Y2018.DP03-' + row.tract})
MATCH (o:Occupation{id: 'ACSDP5Y2018.DP03-' + row.tract})
MERGE (e)-[h:HAS_OCCUPATION]->(o)
RETURN count(h) as HAS_OCCUPATION
;