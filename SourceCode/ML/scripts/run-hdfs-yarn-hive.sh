echo "Formating Namenode........."
hdfs namenode -format
echo "Starting HDFS........."
./run-hdfs.sh -s start
echo "Starting YARN..........."
./run-yarn.sh -s start
hdfs dfs -mkdir -p /user/talentum
hdfs dfs -mkdir -p /user/hive/warehouse
echo "Starting Hive........"
./run-hivemetastore.sh -s start
gnome-terminal
