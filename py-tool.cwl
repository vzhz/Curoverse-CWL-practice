
# call using "arvados-cwl-runner --no-wait --api containers py-tool.cwl --py_file write_number_to_file.py  --string n --file file"

$namespaces:
  arv: "http://arvados.org/cwl#"
  cwltool: "http://commonwl.org/cwltool#"

cwlVersion: v1.0
class: CommandLineTool 
baseCommand: python3

inputs:
  py_file:
  	type: File
  	inputBinding:
  		position: 1
  		prefix: --py_file
  string:
    type: string
    inputBinding:
      position: 2
      prefix: --string
  file:
    type: File
    inputBinding:
      position: 3
      prefix: --file

outputs:
    type: stdout

hints:
  arv:RuntimeConstraints:
    outputDirType: local_output_dir