FROM continuumio/miniconda3:latest

# Create working directory
RUN mkdir /app

# Create and copy sh file
RUN echo "Hello Netology" > /app/1.sh
RUN chmod +x /app/1.sh

# Install packages
RUN conda install -c conda-forge mlflow
RUN conda install -c anaconda boto pymysql

# Run the file
CMD ["/app/1.sh"]