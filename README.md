# transcriptomeProcessing

**This repository contains scripts or slurm batch files that were used to process transcriptome data (follows [Trinity tutorials](https://github.com/trinityrnaseq/trinityrnaseq/wiki), adjusted for our data)**

## 0. Module dependencies

[**trim_galore**](https://github.com/FelixKrueger/TrimGalore)

[**fastqc**](https://github.com/s-andrews/FastQC)

[**Trinity**](https://github.com/trinityrnaseq/trinityrnaseq)

## 1. Setup SLURM environmental variables

**Note: this is the proposed change to the entry point (i.e. first script that is called for this app)**

*runTranscriptome.sh (proposed file to create)*

```
#!/bin/bash

while getopts j:p:a:q:m:t: option
do
 case "${option}"
 in
 j) JOBNAME=${OPTARG};;
 p) PARTITION=${OPTARG};;
 a) ACCOUNT=${OPTARG};;
 q) QOS=${OPTARG};;
 m) MAIL=${OPTARG};;
 t) JOBTIME=${OPTARG};;
 esac
done

echo "Job name:"$JOBNAME
echo "Partition:"$PARTITION
echo "Savio account:"$ACCOUNT
echo "QOS:"$QOS
echo "User email:"$MAIL
echo "Job time limit:"$JOBTIME
```

*Use of runTranscriptome.sh (bash script above):*

```
    $ ./runTranscriptome.sh -j <JOBNAME> -p <PARTITION> -a <ACCOUNT> -q <QOS> -m <MAIL> -t <JOBTIME>
    Job name: <JOBNAME>
    ...
```

**FIXME: need to load most recent trim_galore and fastqc modules**

**FIXME: need to make directory we run from dynamic or set by user **

## 2. Clean, assemble, annotate

##### First, clean the reads

`runTrimGalore.sh`

##### Next, move and rename

`moveAndRename.batch.sh` (uses `moveandrename.sh`)

## 3. Trinity runs

##### For trinity, concatenate reads so that can run on all libraries from a single species

`cat.batch.sh` (uses `catForTrinity.sh`)

##### Run trinity, adjust for memory depending on size of input

`runTrinityC*.sh`

## 4. Trinotate stats

##### Run trinotate and a few stats (run within every species own trinity folder)

`runTrinotate.sh`

`runSomeStats.sh`

## 5.  Differential expression

**FIXME: What documentation belongs here? **
