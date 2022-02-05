S3 Is The Simple Storage Solution Of Aws And The Most Famous Service Used For Small And Big Data Files.

Buckets Are Object Containers That Can Be Folders And Files.

Buckets Must Have Global Unique Names Although Their Are Defined At A Region Level.

Names Must Be Underscore And Not An Ip.

Objects Have Keys Which Is The Full File.

Internally There Are Only Objects Inside Buckets, But The Ui Offers Folders But These Are Just Logical Paths Which Are The Keys.

The Max Value Of An Object Is 5tb.

More Than 5gb You Need To Use Multi Part Upload.

You Have Meta data And Tags, There Is Also A Version Id Because You Get Versioning, But You Need to Enable It.

S3 Is A Global Service That's Why The Bucket Id Is Unique, You Do Not Have A Region,however When You Create A Bucket You Need To Select A Region.

This Is Because The Bucket Will Have A Unique Dns Name And These Are Global.

File Versioning Is Enabled At The Bucket Level For All Files.

If You Update A File A New Version Is Created Automatically.

You Can Enable Versioning At Any Time, If There Are Files Already Their Version Will Be Set To Null And Any Changes From There Will Have A Version.

4 Encryption Methods On S3: Sse-s3 Uses Keys Managed By Aws, Sse-kms Uses Aws Kms Service To Manage Keys, Sse-c You Provide Your Own Keys For Encrypt, Client Side Encryption You Manage.

Sse-s3: Managed By Aws, Aes-256, Encrypted Servers Side And Must Set Header X-amz-server-side-encryption:aes256 When You Send File To S3, Amazon Provides The Key.

Sse-kms: Uses Kms Service So You Have More Control On The Expiry And Audit Trail You Also Need To Pass The Header.

You Manage The Lifecycle.

Sse-c: Server Side Encryption Using Your Keys That You Manage, Aws Doesn't Store It, So You Need To Pass The Public Key In The Upload Request Using Headers, Because Of This You Must Use Https.

Client Side Encryption: You Encrypt And Decrypt Aws Doesn't Do Anything.

Aws Exposes Https For Encrypted Data And Http For Non Encrypted.

Encryption In Flight Is Called Ssl/tls.

Two Types Of S3 Security User Based (iam Policies, Based On Api Calls), Resource Based: Bucked Policies Which Is The Most Used And Are Wide Rules You Set In The Console.

Object Acl Finer Grain And Bucket Acl.

Bucket Policies Are Json Files With Resources, Actions And Effect(allow/deny) And Principal (account Or User).

You Can Grant Public Access, Force Objects To Be Encrypted On Upload And Grant Access To Other Aws Accounts.

S3 Supports Vpc End Points For Instances Without Public Access So Instances In The Private Network Can Access The File.

You Can Have S3 Access Logs And Store Them In Other Buckets.

Api Calls Can Be Logged In Cloud Trail.

Mfa Can Be Used For Extra Security.

You Can Create Signed Urls Which Are Available For A Limited Time Only.

There Is A Policy Generator That You Can Use To Generate Json Policy Documents: https://awspolicygen.S3.Amazonaws.com/policygen.Html 

You Can Setup Websites In S3 Using S3-website Prefix, Make Bucket Public.

If You Request Data From Another Bucket You Need To Enable Cors.

Is Common To Have Images In Another Bucket But You Don't Want Public Access But Thru Website Bucket So Enable Cors To Set Origin.

S3 Uses Eventual Consistency You Can Put And Read And Get An Object Immediately But If You Do A Get First And Got 404 You May Get It Right After You Put It, Same As Update Or Delete.

For The Best S3 Performance You Want The Highest Partition Distribution.

Historically It Was Recommended To Have Random Characters In Front Of The Key Name Like "g65d_my_folder/" So The Data Is Partition Properly.

Never Use Dates As Keys Since The Partition Will Be Very Similar.

Since July 2018 You Don't Need Random Characters And The Performance Is Much Better > 3500tbs But This Is Not In The Exam.

More Than 5gb You Need Multipart Uploaded To Maximize Bandwith And Decrease Time On Retries.

Cloudfront Is Used To Cache S3 Objects.

If You Are In A Different Region And Need To Do A Big File Upload Use S3 Transfer Acceleration Which Uses Edge Location To Upload Temporally To A Local End Point Improving Performance.

If You Use Kms Encryption You May See A Small Performance Decrease Because Kms Has Bandwidth Limits.

