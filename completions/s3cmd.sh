#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                                show this help message and exit
# @flag --configure                              Invoke interactive (re)configuration tool.
# @option -c --config <FILE>                     Config file name.
# @flag --dump-config                            Dump current configuration after parsing config files and command line options and exit.
# @option --access_key                           AWS Access Key
# @option --secret_key                           AWS Secret Key
# @option --access_token                         AWS Access Token
# @flag -n --dry-run                             Only show what should be uploaded or downloaded but don't actually do it.
# @flag -s --ssl                                 Use HTTPS connection when communicating with S3.
# @flag --no-ssl                                 Don't use HTTPS.
# @flag -e --encrypt                             Encrypt files before uploading to S3.
# @flag --no-encrypt                             Don't encrypt files.
# @flag -f --force                               Force overwrite and other dangerous operations.
# @flag --continue                               Continue getting a partially downloaded file (only for [get] command).
# @flag --continue-put                           Continue uploading partially uploaded files or multipart upload parts.
# @option --upload-id <UPLOAD_ID>                UploadId for Multipart Upload, in case you want continue an existing upload (equivalent to --continue-put) and there are multiple partial uploads.
# @flag --skip-existing                          Skip over files that exist at the destination (only for [get] and [sync] commands).
# @flag -r --recursive                           Recursive upload, download or removal.
# @flag --check-md5                              Check MD5 sums when comparing files for [sync].
# @flag --no-check-md5                           Do not check MD5 sums when comparing files for [sync].
# @flag -P --acl-public                          Store objects with ACL allowing read for anyone.
# @flag --acl-private                            Store objects with default ACL allowing access for you only.
# @option --acl-grant[`_choice_acl`] <PERMISSION:<EMAIL or USER_CANONICAL_ID>>  or USER_CANONICAL_ID Grant stated permission to a given amazon user.
# @option --acl-revoke[`_choice_acl`] <PERMISSION:USER_CANONICAL_ID>  Revoke stated permission for a given amazon user.
# @option -D --restore-days <NUM>                Number of days to keep restored file available (only for 'restore' command).
# @option --restore-priority[bulk|standard|expedited] <RESTORE_PRIORITY>  Priority for restoring files from S3 Glacier (only for 'restore' command).
# @flag --delete-removed                         Delete destination objects with no corresponding source file [sync]
# @flag --no-delete-removed                      Don't delete destination objects [sync]
# @flag --delete-after                           Perform deletes AFTER new uploads when delete-removed is enabled [sync]
# @flag --delay-updates                          *OBSOLETE* Put all updated files into place at end [sync]
# @option --max-delete <NUM>                     Do not delete more than NUM files.
# @option --limit <NUM>                          Limit number of objects returned in the response body (only for [ls] and [la] commands)
# @option --add-destination <ADDITIONAL_DESTINATIONS>  Additional destination for parallel uploads, in addition to last arg.
# @flag --delete-after-fetch                     Delete remote objects after fetching to local file (only for [get] and [sync] commands).
# @option -p --preserve[mode|ownership|timestamps]  Preserve filesystem attributes.
# @flag --no-preserve                            Don't store FS attributes
# @option --exclude <GLOB>                       Filenames and paths matching GLOB will be excluded from sync
# @option --exclude-from <FILE>                  Read --exclude GLOBs from FILE
# @option --rexclude <REGEXP>                    Filenames and paths matching REGEXP (regular expression) will be excluded from sync
# @option --rexclude-from <FILE>                 Read --rexclude REGEXPs from FILE
# @option --include <GLOB>                       Filenames and paths matching GLOB will be included even if previously excluded by one of --(r)exclude(-from) patterns
# @option --include-from <FILE>                  Read --include GLOBs from FILE
# @option --rinclude <REGEXP>                    Same as --include but uses REGEXP (regular expression) instead of GLOB
# @option --rinclude-from <FILE>                 Read --rinclude REGEXPs from FILE
# @option --files-from <FILE>                    Read list of source-file names from FILE.
# @option --region[us-east-1|us-west-1|us-west-2|eu-west-1|eu-central-1|ap-northeast-1|ap-southeast-1|ap-southeast-2|sa-east-1] <REGION>  Region to create bucket in.
# @option --bucket-location[us-east-1|us-west-1|us-west-2|eu-west-1|eu-central-1|ap-northeast-1|ap-southeast-1|ap-southeast-2|sa-east-1] <REGION>  Region to create bucket in.
# @option --host <HOSTNAME>                      HOSTNAME:PORT for S3 endpoint (default: s3.amazonaws.com, alternatives such as s3-eu-west-1.amazonaws.com).
# @option --host-bucket <HOST_BUCKET>            DNS-style bucket+hostname:port template for accessing a bucket (default: %(bucket)s.s3.amazonaws.com)
# @option --reduced-redundancy[put|cp|mv]        Store object with 'Reduced redundancy'.
# @option --rr[put|cp|mv]                        Store object with 'Reduced redundancy'.
# @option --no-reduced-redundancy[put|cp|mv]     Store object without 'Reduced redundancy'.
# @option --no-rr[put|cp|mv]                     Store object without 'Reduced redundancy'.
# @option --storage-class[put|cp|mv] <CLASS>     Store object with specified CLASS (STANDARD, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER or DEEP_ARCHIVE).
# @option --access-logging-target-prefix <LOG_TARGET_PREFIX>  Target prefix for access logs (S3 URI) (for [cfmodify] and [accesslog] commands)
# @flag --no-access-logging                      Disable access logging (for [cfmodify] and [accesslog] commands)
# @option --default-mime-type <DEFAULT_MIME_TYPE>  Default MIME-type for stored objects.
# @flag -M --guess-mime-type                     Guess MIME-type of files by their extension or mime magic.
# @flag --no-guess-mime-type                     Don't guess MIME-type and use the default type instead.
# @flag --no-mime-magic                          Don't use mime magic when guessing MIME-type.
# @option -m --mime-type <MIME/TYPE>             Force MIME-type.
# @option --add-header <NAME:VALUE>              Add a given HTTP header to the upload request.
# @option --remove-header <NAME>                 Remove a given HTTP header.
# @option --server-side-encryption[put|sync|cp|modify]  Specifies that server-side encryption will be used when putting objects.
# @option --server-side-encryption-kms-id[put|sync|cp|modify] <KMS_KEY>  Specifies the key id used for server-side encryption with AWS KMS-Managed Keys (SSE-KMS) when putting objects.
# @option --encoding                             Override autodetected terminal and filesystem encoding (character set).
# @option --add-encoding-exts[css|js|html] <EXTENSIONs>  Add encoding to these comma delimited extensions i.e.
# @flag --verbatim                               Use the S3 name as given on the command line.
# @flag --disable-multipart                      Disable multipart upload on files bigger than --multipart-chunk-size-mb
# @option --multipart-chunk-size-mb <SIZE>       Size of each chunk of a multipart upload.
# @flag --list-md5                               Include MD5 sums in bucket listings (only for 'ls' command).
# @flag --list-allow-unordered                   Not an AWS standard.
# @flag -H --human-readable-sizes                Print sizes in human readable form (eg 1kB instead of 1234).
# @option --ws-index <WEBSITE_INDEX>             Name of index-document (only for [ws-create] command)
# @option --ws-error <WEBSITE_ERROR>             Name of error-document (only for [ws-create] command)
# @option --expiry-date <EXPIRY_DATE>            Indicates when the expiration rule takes effect.
# @option --expiry-days <EXPIRY_DAYS>            Indicates the number of days after object creation the expiration rule takes effect.
# @option --expiry-prefix <EXPIRY_PREFIX>        Identifying one or more objects with the prefix to which the expiration rule applies.
# @flag --progress                               Display progress meter (default on TTY).
# @flag --no-progress                            Don't display progress meter (default on non-TTY).
# @flag --stats                                  Give some file-transfer stats.
# @flag --enable                                 Enable given CloudFront distribution (only for [cfmodify] command)
# @flag --disable                                Disable given CloudFront distribution (only for [cfmodify] command)
# @flag --cf-invalidate                          Invalidate the uploaded filed in CloudFront.
# @flag --cf-invalidate-default-index            When using Custom Origin and S3 static website, invalidate the default index file.
# @flag --cf-no-invalidate-default-index-root    When using Custom Origin and S3 static website, don't invalidate the path to the default index file.
# @option --cf-add-cname <CNAME>                 Add given CNAME to a CloudFront distribution (only for [cfcreate] and [cfmodify] commands)
# @option --cf-remove-cname <CNAME>              Remove given CNAME from a CloudFront distribution (only for [cfmodify] command)
# @option --cf-comment <COMMENT>                 Set COMMENT for a given CloudFront distribution (only for [cfcreate] and [cfmodify] commands)
# @option --cf-default-root-object <DEFAULT_ROOT_OBJECT>  Set the default root object to return when no object is specified in the URL.
# @flag -v --verbose                             Enable verbose output.
# @flag -d --debug                               Enable debug output.
# @flag --version                                Show s3cmd version (2.3.0) and exit.
# @flag -F --follow-symlinks                     Follow symbolic links as if they are regular files
# @option --cache-file <FILE>                    Cache FILE containing local source MD5 values
# @flag -q --quiet                               Silence output on stdout
# @option --ca-certs <CA_CERTS_FILE>             Path to SSL CA certificate FILE (instead of system default)
# @option --ssl-cert <SSL_CLIENT_CERT_FILE>      Path to client own SSL certificate CRT_FILE
# @option --ssl-key <SSL_CLIENT_KEY_FILE>        Path to client own SSL certificate private key KEY_FILE
# @flag --check-certificate                      Check SSL certificate validity
# @flag --no-check-certificate                   Do not check SSL certificate validity
# @flag --check-hostname                         Check SSL certificate hostname validity
# @flag --no-check-hostname                      Do not check SSL certificate hostname validity
# @flag --signature-v2                           Use AWS Signature version 2 instead of newer signature methods.
# @option --limit-rate <LIMITRATE>               Limit the upload or download speed to amount bytes per second.
# @flag --no-connection-pooling                  Disable connection re-use
# @flag --requester-pays                         Set the REQUESTER PAYS flag for operations
# @flag -l --long-listing                        Produce long listing [ls]
# @flag --stop-on-error                          stop if error in transfer
# @option --content-disposition <CONTENT_DISPOSITION>  Provide a Content-Disposition for signed URLs, e.g., "inline; filename=myvideo.mp4"
# @option --content-type <CONTENT_TYPE>          Provide a Content-Type for signed URLs, e.g., "video/mp4"

# {{ s3cmd mb
# @cmd Make bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
mb() {
    :;
}
# }} s3cmd mb

# {{ s3cmd rb
# @cmd Remove bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
rb() {
    :;
}
# }} s3cmd rb

# {{ s3cmd ls
# @cmd List objects or buckets
# @arg s3-bucket-prefix[`_choice_s3_path`] <s3://BUCKET[/PREFIX]>
ls() {
    :;
}
# }} s3cmd ls

# {{ s3cmd la
# @cmd List all object in all buckets
la() {
    :;
}
# }} s3cmd la

# {{ s3cmd put
# @cmd Put file into bucket
# @arg file*
# @arg s3-bucket-prefix[`_choice_s3_path`] <s3://BUCKET[/PREFIX]>
put() {
    :;
}
# }} s3cmd put

# {{ s3cmd get
# @cmd Get file from bucket
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
# @arg local_file
get() {
    :;
}
# }} s3cmd get

# {{ s3cmd del
# @cmd Delete file from bucket
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
del() {
    :;
}
# }} s3cmd del

# {{ s3cmd rm
# @cmd Delete file from bucket (alias for del)
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
rm() {
    :;
}
# }} s3cmd rm

# {{ s3cmd restore
# @cmd Restore file from Glacier storage
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
restore() {
    :;
}
# }} s3cmd restore

# {{ s3cmd sync
# @cmd Synchronize a directory tree to S3 (checks files freshness using size and md5 checksum, unless overridden by options, see below)
# @arg src[`_choice_s3_path_or_path`]
# @arg dest[`_choice_s3_path_or_path`]
sync() {
    :;
}
# }} s3cmd sync

# {{ s3cmd du
# @cmd Disk usage by buckets
# @arg s3-bucket-prefix[`_choice_s3_path`] <s3://BUCKET[/PREFIX]>
du() {
    :;
}
# }} s3cmd du

# {{ s3cmd info
# @cmd Get various information about Buckets or Files
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET[/OBJECT]>
info() {
    :;
}
# }} s3cmd info

# {{ s3cmd cp
# @cmd Copy object
# @arg s3-bucket1-object1 <s3://BUCKET1/OBJECT1>
# @arg s3-bucket2-object2 <s3://BUCKET2[/OBJECT2]>
cp() {
    :;
}
# }} s3cmd cp

# {{ s3cmd modify
# @cmd Modify object metadata
# @arg s3-bucket1-object <s3://BUCKET1/OBJECT>
modify() {
    :;
}
# }} s3cmd modify

# {{ s3cmd mv
# @cmd Move object
# @arg s3-bucket1-object1 <s3://BUCKET1/OBJECT1>
# @arg s3-bucket2-object2 <s3://BUCKET2[/OBJECT2]>
mv() {
    :;
}
# }} s3cmd mv

# {{ s3cmd setacl
# @cmd Modify Access control list for Bucket or Files
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET[/OBJECT]>
setacl() {
    :;
}
# }} s3cmd setacl

# {{ s3cmd setpolicy
# @cmd Modify Bucket Policy
# @arg file
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
setpolicy() {
    :;
}
# }} s3cmd setpolicy

# {{ s3cmd delpolicy
# @cmd Delete Bucket Policy
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
delpolicy() {
    :;
}
# }} s3cmd delpolicy

# {{ s3cmd setcors
# @cmd Modify Bucket CORS
# @arg file
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
setcors() {
    :;
}
# }} s3cmd setcors

# {{ s3cmd delcors
# @cmd Delete Bucket CORS
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
delcors() {
    :;
}
# }} s3cmd delcors

# {{ s3cmd payer
# @cmd Modify Bucket Requester Pays policy
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
payer() {
    :;
}
# }} s3cmd payer

# {{ s3cmd multipart
# @cmd Show multipart uploads
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
# @arg id
multipart() {
    :;
}
# }} s3cmd multipart

# {{ s3cmd abortmp
# @cmd Abort a multipart upload
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
# @arg id
abortmp() {
    :;
}
# }} s3cmd abortmp

# {{ s3cmd listmp
# @cmd List parts of a multipart upload
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
# @arg id
listmp() {
    :;
}
# }} s3cmd listmp

# {{ s3cmd accesslog
# @cmd Enable/disable bucket access logging
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
accesslog() {
    :;
}
# }} s3cmd accesslog

# {{ s3cmd sign
# @cmd Sign arbitrary string using the secret key
# @arg string-to-sign
sign() {
    :;
}
# }} s3cmd sign

# {{ s3cmd signurl
# @cmd Sign an S3 URL to provide limited public access with expiry
# @arg s3-bucket-object[`_choice_s3_path`] <s3://BUCKET/OBJECT>
# @arg expiry_epoch-expiry_offset! <expiry_epoch|+expiry_offset>
signurl() {
    :;
}
# }} s3cmd signurl

# {{ s3cmd fixbucket
# @cmd Fix invalid file names in a bucket
# @arg s3-bucket-prefix[`_choice_s3_path`] <s3://BUCKET[/PREFIX]>
fixbucket() {
    :;
}
# }} s3cmd fixbucket

# {{ s3cmd ws-create
# @cmd Create Website from bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
ws-create() {
    :;
}
# }} s3cmd ws-create

# {{ s3cmd ws-delete
# @cmd Delete Website
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
ws-delete() {
    :;
}
# }} s3cmd ws-delete

# {{ s3cmd ws-info
# @cmd Info about Website
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
ws-info() {
    :;
}
# }} s3cmd ws-info

# {{ s3cmd expire
# @cmd Set or delete expiration rule for the bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
expire() {
    :;
}
# }} s3cmd expire

# {{ s3cmd setlifecycle
# @cmd Upload a lifecycle policy for the bucket
# @arg file
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
setlifecycle() {
    :;
}
# }} s3cmd setlifecycle

# {{ s3cmd getlifecycle
# @cmd Get a lifecycle policy for the bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
getlifecycle() {
    :;
}
# }} s3cmd getlifecycle

# {{ s3cmd dellifecycle
# @cmd Remove a lifecycle policy for the bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
dellifecycle() {
    :;
}
# }} s3cmd dellifecycle

# {{ s3cmd setnotification
# @cmd Upload a notification policy for the bucket
# @arg file
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
setnotification() {
    :;
}
# }} s3cmd setnotification

# {{ s3cmd getnotification
# @cmd Get a notification policy for the bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
getnotification() {
    :;
}
# }} s3cmd getnotification

# {{ s3cmd delnotification
# @cmd Remove a notification policy for the bucket
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
delnotification() {
    :;
}
# }} s3cmd delnotification

# {{ s3cmd cflist
# @cmd List CloudFront distribution points
cflist() {
    :;
}
# }} s3cmd cflist

# {{ s3cmd cfinfo
# @cmd Display CloudFront distribution point parameters
# @arg cf-dist_id <cf://DIST_ID>
cfinfo() {
    :;
}
# }} s3cmd cfinfo

# {{ s3cmd cfcreate
# @cmd Create CloudFront distribution point
# @arg s3-bucket[`_choice_s3_bucket`] <s3://BUCKET>
cfcreate() {
    :;
}
# }} s3cmd cfcreate

# {{ s3cmd cfdelete
# @cmd Delete CloudFront distribution point
# @arg cf-dist_id <cf://DIST_ID>
cfdelete() {
    :;
}
# }} s3cmd cfdelete

# {{ s3cmd cfmodify
# @cmd Change CloudFront distribution point parameters
# @arg cf-dist_id <cf://DIST_ID>
cfmodify() {
    :;
}
# }} s3cmd cfmodify

# {{ s3cmd cfinvalinfo
# @cmd Display CloudFront invalidation request(s) status
# @arg cf-dist_id-inval_id <cf://DIST_ID[/INVAL_ID]>
cfinvalinfo() {
    :;
}
# }} s3cmd cfinvalinfo

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_acl() {
    printf "%s:\0\n" read write read_acp write_acp full_control all
}

_choice_s3_bucket() {
    s3cmd ls  | sed -n 's/^.* \(s3:.*\)/\1/p'
}

_choice_s3_path() {
    if [[ -z "$ARGC_CWORD" ]]; then
        echo -e "s3://\0"
    elif [[ "$ARGC_CWORD" == "s3://"* ]]; then
        path="${ARGC_CWORD%/*}/"
        list="$(s3cmd ls "$path" | sed -n 's/^.* \(s3:.*\)/\1/p')"
        if [[ "$path" == "s3://" ]]; then
            list="$(echo "$list" | _argc_util_transform suffix=/)"
        fi
        echo "$list" | _argc_util_comp_parts /
    fi
}

_choice_s3_path_or_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    else
        _choice_s3_path
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"