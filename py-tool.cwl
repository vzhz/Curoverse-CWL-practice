
# call using "arvados-cwl-runner --no-wait --api containers py-tool.cwl write_number_to_file.py  --string n --file file"

$namespaces:
  arv: "http://arvados.org/cwl#"
  cwltool: "http://commonwl.org/cwltool#"

cwlVersion: v1.0
class: CommandLineTool 
baseCommand: python3

inputs:
  number:
    type: number
  txt_file:
    type: File

outputs:
    type: stdout

hints:
  arv:RuntimeConstraints:
    outputDirType: local_output_dir