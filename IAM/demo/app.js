var AWS = require('aws-sdk');

// No need to provide config, if running from an EC2 instance which is having S3 read role. 
AWS.config.loadFromPath('./config.json');

var s3 = new AWS.S3();

const Bucket = "dummy-bucket-iam";
const Key = "fox.txt";

var params = {Bucket, Key};

function run() {
    console.log("Attempting to get: "+ params.Key +" from bucket: "+ params.Bucket);
    console.log("\n");

    s3.getObject(params, function(err, data) {
        if(err) {
            console.error(err);
        } else {
            console.log(data.Body.toString('utf8'));
        }
    });
}

run();