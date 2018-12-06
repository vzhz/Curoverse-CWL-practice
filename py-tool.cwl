
# call locally using "arvados-cwl-runner --no-wait --api containers py-tool.cwl py_job.yaml"
# call on arvados using "arvados-cwl-runner --submit --no-wait --api containers py-tool.cwl py_job.yaml"

$namespaces:
  arv: "http://arvados.org/cwl#"
  cwltool: "http://commonwl.org/cwltool#"

cwlVersion: v1.0
class: CommandLineTool 
baseCommand: python3
stdout: output.txt

requirements:
 - class: InitialWorkDirRequirement
   listing:
    - entry: $(my-file.txt)
      entryname: my-file.txt
      writable: true

inputs:
  pyfile:
    type: File
    inputBinding:
      position: 1
  mystring:
    type: string
    inputBinding:
      position: 2
  src:
    type: File
    inputBinding: 3
    valueFrom: $(self.basename)

outputs:
  myout:
    type: stdout

hints:
  arv:RuntimeConstraints:
    outputDirType: local_output_dir