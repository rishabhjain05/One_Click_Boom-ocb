clear

echo "     ██████╗ ███╗   ██╗███████╗     ██████╗██╗     ██╗ ██████╗██╗  ██╗    ██████╗  ██████╗  ██████╗ ███╗   ███╗        ";
echo "    ██╔═══██╗████╗  ██║██╔════╝    ██╔════╝██║     ██║██╔════╝██║ ██╔╝    ██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║        ";
echo "    ██║   ██║██╔██╗ ██║█████╗      ██║     ██║     ██║██║     █████╔╝     ██████╔╝██║   ██║██║   ██║██╔████╔██║        ";
echo "    ██║   ██║██║╚██╗██║██╔══╝      ██║     ██║     ██║██║     ██╔═██╗     ██╔══██╗██║   ██║██║   ██║██║╚██╔╝██║        ";
echo "    ╚██████╔╝██║ ╚████║███████╗    ╚██████╗███████╗██║╚██████╗██║  ██╗    ██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║        ";
echo "     ╚═════╝ ╚═╝  ╚═══╝╚══════╝     ╚═════╝╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝    ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝        ";
echo "                                                                                                                       ";
echo "██╗  ██╗ █████╗ ██████╗  ██████╗  ██████╗ ██████╗     ███████╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗";
echo "██║  ██║██╔══██╗██╔══██╗██╔═══██╗██╔═══██╗██╔══██╗    ██╔════╝██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║";
echo "███████║███████║██║  ██║██║   ██║██║   ██║██████╔╝    ███████╗██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║";
echo "██╔══██║██╔══██║██║  ██║██║   ██║██║   ██║██╔═══╝     ╚════██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║";
echo "██║  ██║██║  ██║██████╔╝╚██████╔╝╚██████╔╝██║         ███████║╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║";
echo "╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚═════╝ ╚═╝         ╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝";
echo "                                                                                                                       ";
echo "           ██╗  ██████╗ ██╗   ██╗    ██████╗ ██╗███████╗██╗  ██╗ █████╗ ██████╗ ██╗  ██╗  ██╗                          ";
echo "           ╚██╗ ██╔══██╗╚██╗ ██╔╝    ██╔══██╗██║██╔════╝██║  ██║██╔══██╗██╔══██╗██║  ██║ ██╔╝                          ";
echo "█████╗█████╗╚██╗██████╔╝ ╚████╔╝     ██████╔╝██║███████╗███████║███████║██████╔╝███████║██╔╝█████╗█████╗               ";
echo "╚════╝╚════╝██╔╝██╔══██╗  ╚██╔╝      ██╔══██╗██║╚════██║██╔══██║██╔══██║██╔══██╗██╔══██║╚██╗╚════╝╚════╝               ";
echo "           ██╔╝ ██████╔╝   ██║       ██║  ██║██║███████║██║  ██║██║  ██║██████╔╝██║  ██║ ╚██╗                          ";
echo "           ╚═╝  ╚═════╝    ╚═╝       ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝  ╚═╝                          ";
echo "                                                                                                                       ";

sleep 3

echo "Welcome, Get your computer configured for bigdata processing with complete bigdata tools"

echo "Enter your username"
read usrname
sudo sh -c "echo \"$usrname ALL=(user) NOPASSWD: ALL\" >> /etc/sudoers"

sleep 3

sudo apt-get update
sudo apt-get upgrade

sleep 1

echo "Downloading Default JDK version"
sudo apt-get install default-jdk -y

sleep 5

echo "Do you want to download screen recorder tool? Reply only in (y or n)"
read k
if [ $k == y ]
then
   sudo apt-get install kazam -y
else
   echo "skipping the optional package"
fi

echo "Installing ssh services and setting it up"
sudo apt-get install ssh -y
sleep 1
clear
echo "Press Two Enter's after the execution of this command"
sleep 4
ssh-keygen -t rsa -P ''
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

sleep 3

#******************************************************************************************************************
clear
echo "*********************************************************************************************************"

# hadoop-2.6

echo "Downloading Hadoop 2.6 in this system"
wget https://archive.apache.org/dist/hadoop/core/hadoop-2.6.0/hadoop-2.6.0.tar.gz /home/$usrname/Desktop/installl
tar -xvzf /home/$usrname/Desktop/installl/hadoop-2.6.0.tar.gz
sudo mv /home/$usrname/Desktop/installl/hadoop-2.6.0 /usr/local/hadoop

#sudo rm hadoop-2.6.0.tar.gz //Enable it to remove the tar file for saving space.

sleep 1
clear
sleep 1

echo "Note the version of java (specially middle digit in version)"
sleep 3
java -version

sleep 3
echo "Enter the version of java"
read j


echo "Making changes in ~/.bashrc file"

echo "#**********Java, Hadoop, Yarn path and Environment setup**********" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-$j-openjdk-amd64" >> ~/.bashrc
echo "export HADOOP_INSTALL=/usr/local/hadoop" >> ~/.bashrc
echo "export PATH=\$PATH:\$HADOOP_INSTALL/bin" >> ~/.bashrc
echo "export PATH=\$PATH:\$HADOOP_INSTALL/sbin" >> ~/.bashrc
echo "export HADOOP_MAPRED_HOME=\$HADOOP_INSTALL" >> ~/.bashrc
echo "export HADOOP_COMMON_HOME=\$HADOOP_INSTALL" >> ~/.bashrc
echo "export HADOOP_HDFS_HOME=\$HADOOP_INSTALL" >> ~/.bashrc
echo "export YARN_HOME=\$HADOOP_INSTALL" >> ~/.bashrc
echo "#******************************************************************" >> ~/.bashrc
echo "Done"

source ~/.bashrc

sleep 1
echo "Replacing the java path in hadoop-env.sh file"

sed -i 's/export JAVA_HOME=${JAVA_HOME}/export JAVA_HOME=\/usr\/lib\/jvm\/java-'$j'-openjdk-amd64/' /usr/local/hadoop/etc/hadoop/hadoop-env.sh
echo "Done"

./cs.sh
./hs.sh
./ms.sh
./ys.sh

sed -i 's/<value>\/home\/sample1\/tmp<\/value>/<value>\/home\/'$usrname'\/tmp<\/value>/' /usr/local/hadoop/etc/hadoop/core-site.xml
sed -i 's/<value>\/home\/sample1\/tmp\/namenode<\/value>/<value>\/home\/'$usrname'\/tmp\/namenode<\/value>/' /usr/local/hadoop/etc/hadoop/hdfs-site.xml
sed -i 's/<value>\/home\/sample2\/tmp\/datanode<\/value>/<value>\/home\/'$usrname'\/tmp\/datanode<\/value>/' /usr/local/hadoop/etc/hadoop/hdfs-site.xml

source ~/.bashrc

# To run the hadoop on you system enter these commands.
# hdfs namenode -format
# start-all.sh
# jps
#*********************************************************************************************************************************
#pig-0.16.0

echo "Downloading pig-0.16.0 in this system"
sleep 2
wget https://www.apache.org/dist/pig/pig-0.16.0/pig-0.16.0.tar.gz /home/$usrname/Desktop/installl
tar -xvzf /home/$usrname/Desktop/installl/pig-0.16.0.tar.gz
sudo mv /home/$usrname/Desktop/installl/pig-0.16.0 /usr/local/pig
echo "export PIG_HOME=/usr/local/pig" >> ~/.bashrc
echo "export PATH=\$PATH:\$PIG_HOME/bin" >> ~/.bashrc
echo "#******************************************************************" >> ~/.bashrc

source ~/.bashrc

# TO launch the pig in terminal type -> pig -x local

#********************************************************************************************************************************
#spark-2.4.3

echo "Downloading spark-2.4.3 in this system"
sleep 2
wget https://archive.apache.org/dist/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.6.tgz /home/$hadu/Desktop/installl
tar -xvzf /home/$hadu/Desktop/installl/spark-2.4.3-bin-hadoop2.6.tgz
sudo mv /home/$hadu/Desktop/installl/spark-2.4.3-bin-hadoop2.6 /usr/local/spark
echo "export SPARK_HOME=/usr/local/spark" >> ~/.bashrc
echo "export PATH=\$PATH:\$SPARK_HOME/bin" >> ~/.bashrc
echo "export PYSPARK_PYTHON=python3" >> ~/.bashrc
echo "#******************************************************************" >> ~/.bashrc

source ~/.bashrc

#********************************************************************************************************************************
# hive-3.1.2
# Hadoop is mandatory to run hive.

wget https://downloads.apache.org/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz /home/$usrname/Desktop/installl
tar -xzf apache-hive-3.1.2-bin.tar.gz /home/$usrname/Desktop/installl/apache-hive-3.1.2-bin.tar.gz
sudo mv /home/$usrname/Desktop/installl/apache-hive-3.1.2-bin /usr/local/hive


echo "export HIVE_HOME=/usr/local/hive" >> ~/.bashrc
echo "export PATH=\$PATH:\$HIVE_HOME/bin" >> ~/.bashrc

source ~/.bashrc

hadoop fs -mkdir /tmp
hadoop fs -chmod g+w /tmp

hadoop fs -mkdir /user
hadoop fs -mkdir /user/hive
hadoop fs -mkdir /user/hive/warehouse
hadoop fs -chmod g+w /user/hive/warehouse # The warehouse is the location to store data or tables related to Hive.

bin/schematool -dbType derby -initSchema # Hive by default uses Derby database. Use the below command to initialize the Derby database.

# For starting hive, open two tab in terminal and enter the commands in terminal.
# [Tab 1]
# bin/hiveserver2

# [Tab 2]
# bin/beeline -n dataflair -u jdbc:hive2://localhost:10000
#********************************************************************************************************************************
#sqoop-1.4.6

echo "Downloading sqoop-1.4.6 in this system"
sleep 2
wget https://archive.apache.org/dist/sqoop/1.4.6/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz /home/$usrname/Desktop/installl
tar -xvzf /home/$usrname/Desktop/installl/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz
sudo mv /home/$usrname/Desktop/installl/sqoop-1.4.6.bin__hadoop-2.0.4-alpha /usr/local/sqoop
echo "export SQOOP_HOME=/usr/local/sqoop" >> ~/.bashrc
echo "export PATH=\$PATH:\$SQOOP_HOME/bin" >> ~/.bashrc
echo "#******************************************************************" >> ~/.bashrc

echo "Downloading jdbc connector"
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.47.tar.gz /home/$usrname/Desktop/installl
tar -xvzf /home/$usrname/Desktop/installl/mysql-connector-java-5.1.47.tar.gz
sudo mv /home/$usrname/Desktop/installl/mysql-connector-java-5.1.47/mysql-connector-java-5.1.47.jar /usr/local/sqoop/lib

echo "Downloading mysql in the system"
sudo apt-get install mysql-server -y
clear

echo "After the exection of this commant write root 2 times"
# To open mySQl pannel in terminal, write -> mysql -u root -p

#********************************************************************************************************************************
# Saving changes in ~/.bashrc file
source ~/.bashrc
#********************************************************************************************************************************
