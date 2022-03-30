# Quests

## Garden of the Gods
- garden quest

### community and collaborators
### Tutorials
- tutorials - hobu 0- sdsc - opentopo
### next quests - to be sorted
- leafmap

### findings victories
- s3fuse mount happiness
- cheating with docker
	- potree docker converter
	- simple http server from conner manning
- ssh tunnels
- stac semi-happiness
- geopandas happiness - intersects

### day-in-the-life process
1. start with two usgs-lidar buckets
	- one public - big lidar potree trees - name of potree tree?
	- one requester pays - smaller laz files - need to be converted
2. start with usgs-lidar-public
	- use the corresponding stac to search my geojson AOI for actual lidar data
3. Find the corresponding data in the usgs-lidar (pays) bucket
	- install PDAL
	- aws s3 cp all of CO to eccoe-lidar bucket # for ease of use -- 244 Gbytes
	- use s3fs-fuse to mount as a quasi-posix - "STANDARD" filesystem - for using PDAL cmdline
	- explored pylas and import pdal alternatives - more work needed here
4. Create STAC records for every CO small lidar area - still needs refining 
	- not convinced the BBOX is a good representation of the actual coverage
	- measurements are also big - 30 meter rooflines on average houses
5. Import STAC records as a geoDataFrame with geometry
	- 6800 stac files as json - more efficient than PDAL queries - much
6. Intersect the results with:
	- garden.geojson
	- twins.geojson
### demos boulder
### technology tools
- pdal
- stac 
### issues bugs
- potree.entwine.io sadness
	- website is blank
	- potree viewer - lost scene capability to change from RGB - this bites.
	- alternative is 
- vpn sadness
- network sadness
- folium sadness
- measurement sadness
- resolution sadness - how to find and see the siamese twins
- garden of gods so many trees no roads no labels/placenames overwhelm
