from pyspark.sql import SparkSession

# Initialize a Spark session
spark = SparkSession.builder \
    .appName("SimpleSparkApp") \
    .getOrCreate()

# Create a simple DataFrame
data = [("Alice", 1), ("Bob", 2), ("Cathy", 3)]
columns = ["Name", "Value"]
df = spark.createDataFrame(data, columns)

# Show the DataFrame
df.show()

# Stop the Spark session
spark.stop()
