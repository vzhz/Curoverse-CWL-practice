# Curoverse-CWL-practice
My work learning to combine CWL &amp; Arvados with Python.

## Currently
When run on Arvados with <code>arvados-cwl-runner --no-wait --api containers py-tool.cwl write_number_to_file.py  --number 3 --file my-file.txt</code>, I get the following 
```
2018-12-03 22:02:33 cwltool ERROR: expected a single document in the stream
  in "file:///home/vhanus5/Curoverse-CWL-practice/write_number_to_file.py", line 2, column 1
but found another document
  in "file:///home/vhanus5/Curoverse-CWL-practice/write_number_to_file.py", line 5, column 1
```
