import os
from google.cloud import storage

def upload_to_gcs(bucket_name, source_file_name, destination_blob_name):
    os.environ["MY_APP_CRED"] = "AIzaSyAMeBanGXXLetfiX6UHKK8HEzbND1nMy3Q"

    # Initialize a GCS client
    client = storage.Client()

    # Get the bucket
    bucket = client.get_bucket(bucket_name)

    # Create a new blob and upload the file
    blob = bucket.blob(destination_blob_name)
    blob.upload_from_filename(source_file_name)

    print(f"File {source_file_name} uploaded to {destination_blob_name}.")

def main():
    bucket_name = input("Enter the GCS bucket name: ")
    source_file_name = input("Enter the path to the file to upload: ")
    destination_blob_name = input("Enter the destination blob name: ")

    upload_to_gcs(bucket_name, source_file_name, destination_blob_name)

#should be able to access our bucket - https://storage.googleapis.com/c0mp4ny_s3cr3t_l0gs 

if __name__ == "__main__":
    main()
