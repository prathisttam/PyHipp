#!/bin/bash
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo
echo "#==========================================================="
echo "Start Times"

for f in rplpl-slurm*.out rplspl-slurm*.out; do
    echo "==> $f <=="
    head -1 "$f"
    echo
done

echo "End Times"

for f in rplpl-slurm*.out rplspl-slurm*.out; do
    echo "==> $f <=="
    grep -A4 "^time.struct_time" "$f" | tail -5
    echo
done

echo "#==========================================================="
