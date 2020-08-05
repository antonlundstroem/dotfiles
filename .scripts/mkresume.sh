#!/bin/bash

if [ -z "$1" ]; then
	echo "No pb dir supplied"
	exit 1
fi

cp /home/antlun/doc/jobs/resume/cv/cv.pdf /home/antlun/doc/jobs/resume/finale/CV-Anton_Lundstrom-2020.pdf
cp /home/antlun/doc/jobs/resume/pb/$1/pb.pdf /home/antlun/doc/jobs/resume/finale/Personligt_Brev-Anton_Lundstrom-2020.pdf
echo "copied output to: ~/doc/jobs/resume/finale"



