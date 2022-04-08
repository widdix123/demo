import os
import boto3

def lambda_handler(event, context):
    s3 = boto3.client('s3')

    bucket = os.environ['S3_BUCKET']
    bucket_prefix = os.environ['S3_BUCKET_PREFIX']
    file_name = os.environ['S3_BUCKET_UPLOAD_FILE_NAME']
    object_name = "upload/" + file_name

    result = s3.list_objects(Bucket = bucket, Prefix=bucket_prefix)

    #  saving the output to the file for the first 20 characters in new line for each file content
    with open(file_name, 'w') as a:
        for o in result.get('Contents'):
            data = s3.get_object(Bucket=bucket, Key=o.get('Key'))
            print(o.get('Key'))
            contents = data['Body'].read()
            file_contents = contents.decode("utf-8")
            a.write(file_contents[0:20] + '\n')

    response = s3.upload_file(file_name, bucket, object_name)

    # for deleting the files in the incoming folder
    for o in result.get('Contents'):
        response = s3.delete_object(Bucket=bucket, Key=o.get('Key'))
