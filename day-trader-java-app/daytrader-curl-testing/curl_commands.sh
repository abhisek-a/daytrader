
########################################################################
#  RECREATE TABLES
#-----------------
#Accounts
curl -k  -X POST "https://localhost:1443//admin/recreateDBTables"
curl -k  -X POST "https://localhost:1443//admin/tradeBuildDB?limit=10&offset=0"
curl -k  -X POST "https://localhost:1443//admin/tradeBuildDB?limit=10&offset=10"
curl -k  -X POST "https://localhost:1443//admin/tradeBuildDB?limit=10&offset=20"
curl -k  -X POST "https://localhost:1443//admin/tradeBuildDB?limit=10&offset=30"

#Portfolio
curl -k  -X POST "https://localhost:3443/admin/recreateDBTables"
curl -k  -X POST "https://localhost:3443/admin/tradeBuildDB?limit=10&offset=0"
curl -k  -X POST "https://localhost:3443/admin/tradeBuildDB?limit=10&offset=10"
curl -k  -X POST "https://localhost:3443/admin/tradeBuildDB?limit=10&offset=20"
curl -k  -X POST "https://localhost:3443/admin/tradeBuildDB?limit=10&offset=30"

#Quotes
curl -k  -X POST "https://localhost:4443/admin/recreateDBTables"
curl -k  -X POST "https://localhost:4443/admin/tradeBuildDB?limit=10&offset=0"
curl -k  -X POST "https://localhost:4443/admin/tradeBuildDB?limit=10&offset=10"
curl -k  -X POST "https://localhost:4443/admin/tradeBuildDB?limit=10&offset=20"
curl -k  -X POST "https://localhost:4443/admin/tradeBuildDB?limit=10&offset=30"

#=======================================================================
#  POPULATE TABLES
#-----------------

curl -k  -X GET  "https://localhost:1443/accounts/uid:1/profiles"
curl -k  -X GET  "https://localhost:1443/accounts/uid:1"

#Portfolio
#curl -k  -X GET  "https://localhost:3443/portfolios/{userId}/orders"
#curl -k  -X GET  "https://localhost:3443/portfolios/{userId}"

#Quotes
curl -k  -X GET  "https://localhost:4443/quotes/s:1"
curl -k  -X GET  "https://localhost:4443/quotes?limit=10"
########################################################################