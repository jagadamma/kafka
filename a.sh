#!/bin/bash

# Set your Kafka broker address and topic name
BROKER_ADDR="localhost:9092"  # Change to your Kafka broker address
TOPIC_NAME="abi"  # Change to your Kafka topic name
NUM_MESSAGES=10  # Change the number of messages to produce

# Produce messages to Kafka topic
for ((i=1; i<=NUM_MESSAGES; i++)); do
  MESSAGE="Message $i"
  echo "$MESSAGE"
  echo "$MESSAGE" | kafka-console-producer  --bootstrap-server  "$BROKER_ADDR" --topic "$TOPIC_NAME"
  sleep 1  # Adjust the sleep interval as needed
done

# Consume messages from Kafka topic
kafka-console-consumer --bootstrap-server "$BROKER_ADDR" --topic "$TOPIC_NAME" 

