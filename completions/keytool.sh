#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ keytool -certreq
# @cmd Generates a certificate request
# @option -alias <alias>            alias name of the entry to process
# @option -sigalg <alg>             signature algorithm name
# @option -file <file>              output file name
# @option -keypass <arg>            key password
# @option -keystore <keystore>      keystore name
# @option -dname <name>             distinguished name
# @option -ext <value>              X.509 extension
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-certreq() {
    :;
}
# }} keytool -certreq

# {{ keytool -changealias
# @cmd Changes an entry's alias
# @option -alias <alias>            alias name of the entry to process
# @option -destalias <alias>        destination alias
# @option -keypass <arg>            key password
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-changealias() {
    :;
}
# }} keytool -changealias

# {{ keytool -delete
# @cmd Deletes an entry
# @option -alias <alias>            alias name of the entry to process
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-delete() {
    :;
}
# }} keytool -delete

# {{ keytool -exportcert
# @cmd Exports certificate
# @flag -rfc                        output in RFC style
# @option -alias <alias>            alias name of the entry to process
# @option -file <file>              output file name
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-exportcert() {
    :;
}
# }} keytool -exportcert

# {{ keytool -genkeypair
# @cmd Generates a key pair
# @option -alias <alias>            alias name of the entry to process
# @option -keyalg <alg>             key algorithm name
# @option -keysize <size>           key bit size
# @option -groupname <name>         Group name.
# @option -sigalg <alg>             signature algorithm name
# @option -dname <name>             distinguished name
# @option -startdate <date>         certificate validity start date/time
# @option -ext <value>              X.509 extension
# @option -validity <days>          validity number of days
# @option -keypass <arg>            key password
# @option -keystore <keystore>      keystore name
# @option -signer <alias>           signer alias
# @option -signerkeypass <arg>      signer key password
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-genkeypair() {
    :;
}
# }} keytool -genkeypair

# {{ keytool -genseckey
# @cmd Generates a secret key
# @option -alias <alias>            alias name of the entry to process
# @option -keypass <arg>            key password
# @option -keyalg <alg>             key algorithm name
# @option -keysize <size>           key bit size
# @option -keystore <keystore>      keystore name
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-genseckey() {
    :;
}
# }} keytool -genseckey

# {{ keytool -gencert
# @cmd Generates certificate from a certificate request
# @flag -rfc                        output in RFC style
# @option -infile <file>            input file name
# @option -outfile <file>           output file name
# @option -alias <alias>            alias name of the entry to process
# @option -sigalg <alg>             signature algorithm name
# @option -dname <name>             distinguished name
# @option -startdate <date>         certificate validity start date/time
# @option -ext <value>              X.509 extension
# @option -validity <days>          validity number of days
# @option -keypass <arg>            key password
# @option -keystore <keystore>      keystore name
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-gencert() {
    :;
}
# }} keytool -gencert

# {{ keytool -importcert
# @cmd Imports a certificate or a certificate chain
# @flag -noprompt                   do not prompt
# @flag -trustcacerts               trust certificates from cacerts
# @flag -protected                  password through protected mechanism
# @option -alias <alias>            alias name of the entry to process
# @option -file <file>              input file name
# @option -keypass <arg>            key password
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
-importcert() {
    :;
}
# }} keytool -importcert

# {{ keytool -importpass
# @cmd Imports a password
# @option -alias <alias>            alias name of the entry to process
# @option -keypass <arg>            key password
# @option -keyalg <alg>             key algorithm name
# @option -keysize <size>           key bit size
# @option -keystore <keystore>      keystore name
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-importpass() {
    :;
}
# }} keytool -importpass

# {{ keytool -importkeystore
# @cmd Imports one or all entries from another keystore
# @option -srckeystore <keystore>     source keystore name
# @option -destkeystore <keystore>    destination keystore name
# @option -srcstoretype <type>        source keystore type
# @option -deststoretype <type>       destination keystore type
# @option -srcstorepass <arg>         source keystore password
# @option -deststorepass <arg>        destination keystore password
# @flag -srcprotected                 source keystore password protected
# @flag -destprotected                destination keystore password protected
# @option -srcprovidername <name>     source keystore provider name
# @option -destprovidername <name>    destination keystore provider name
# @option -srcalias <alias>           source alias
# @option -destalias <alias>          destination alias
# @option -srckeypass <arg>           source key password
# @option -destkeypass <arg>          destination key password
# @flag -noprompt                     do not prompt
# @option -addprovider <name>         add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>      add security provider by fully-qualified class name
# @option -providerpath <list>        provider classpath
# @flag -v                            verbose output
-importkeystore() {
    :;
}
# }} keytool -importkeystore

# {{ keytool -keypasswd
# @cmd Changes the key password of an entry
# @option -alias <alias>            alias name of the entry to process
# @option -keypass <arg>            key password
# @option -new <arg>                new password
# @option -keystore <keystore>      keystore name
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
-keypasswd() {
    :;
}
# }} keytool -keypasswd

# {{ keytool -list
# @cmd Lists entries in a keystore
# @flag -rfc                        output in RFC style
# @option -alias <alias>            alias name of the entry to process
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-list() {
    :;
}
# }} keytool -list

# {{ keytool -printcert
# @cmd Prints the content of a certificate
# @flag -rfc                            output in RFC style
# @option -file <file>                  input file name
# @option -sslserver <server[:port]>    SSL server host and port
# @option -jarfile <file>               signed jar file
# @option -keystore <keystore>          keystore name
# @option -storepass <arg>              keystore password
# @option -storetype <type>             keystore type
# @flag -trustcacerts                   trust certificates from cacerts
# @option -providername <name>          provider name
# @option -addprovider <name>           add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>        add security provider by fully-qualified class name
# @option -providerpath <list>          provider classpath
# @flag -v                              verbose output
# @flag -protected                      password through protected mechanism
-printcert() {
    :;
}
# }} keytool -printcert

# {{ keytool -printcertreq
# @cmd Prints the content of a certificate request
# @option -file <file>    input file name
# @flag -v                verbose output
-printcertreq() {
    :;
}
# }} keytool -printcertreq

# {{ keytool -printcrl
# @cmd Prints the content of a CRL file
# @option -file <file>              input file name
# @option -keystore <keystore>      keystore name
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @flag -trustcacerts               trust certificates from cacerts
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
# @flag -protected                  password through protected mechanism
-printcrl() {
    :;
}
# }} keytool -printcrl

# {{ keytool -storepasswd
# @cmd Changes the store password of a keystore
# @option -new <arg>                new password
# @option -keystore <keystore>      keystore name
# @flag -cacerts                    access the cacerts keystore
# @option -storepass <arg>          keystore password
# @option -storetype <type>         keystore type
# @option -providername <name>      provider name
# @option -addprovider <name>       add security provider by name (e.g. SunPKCS11)
# @option -providerclass <class>    add security provider by fully-qualified class name
# @option -providerpath <list>      provider classpath
# @flag -v                          verbose output
-storepasswd() {
    :;
}
# }} keytool -storepasswd

# {{ keytool -showinfo
# @cmd Displays security-related information
# @flag -tls    Displays TLS configuration information
# @flag -v      verbose output
-showinfo() {
    :;
}
# }} keytool -showinfo

# {{ keytool -version
# @cmd Prints the program version
-version() {
    :;
}
# }} keytool -version

command eval "$(argc --argc-eval "$0" "$@")"