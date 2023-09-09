FROM confluentinc/cp-kafka:7.0.0

# Switch to root user
USER root

# Copy your shell script into the container
COPY a.sh /usr/local/bin/a.sh

# Make your script executable
RUN chmod +x /usr/local/bin/a.sh


# Set the entry point to run your script
CMD ["/usr/local/bin/a.sh"]

