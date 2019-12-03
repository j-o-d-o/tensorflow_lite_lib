#!/usr/bin/env bash

##########
## HELP ##
##########
if [[ ( "$1" == "-h" ) || ( "$1" == "--help" ) ]]; then
    echo "Usage: `basename $0` [-h]"
    echo "  Build the project"
    echo
    echo "  -h, --help           Show this help text"
    echo "  --path               path to the tensorflow/lite directory e.g. --path=~/tensorflow/lite"
    exit 0
fi

###################################
## VARIABLE SETTINGS && DEFAULTS ##
###################################
ROOTDIR=`pwd`
SOURCE_PATH='~/tensorflow/lite'

#######################
## PARAMETER PARSING ##
#######################
for i in "$@"
do
case $i in
    --path=*)
        if [ $# -ne 0 ]; then
            SOURCE_PATH="${i#*=}"
        fi
        shift 1
        ;;
    "")
        break
        ;;
    *)
        echo -e "\033[33mWARNING: Argument $1 is unkown\033[0m"
        shift 1
esac
done

############
## SCRIPT ##
############
rm -rf headers
rm -rf lib
mkdir -p headers/tensorflow/lite
mkdir lib

cd ${SOURCE_PATH}
find . -name "*.h" | xargs cp --parents -t ${ROOTDIR}/headers/tensorflow/lite

cd tools/make/gen
find . -name "*.a" | xargs cp --parents -t ${ROOTDIR}/lib
