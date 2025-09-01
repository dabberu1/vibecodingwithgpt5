{{/*
Expand the name of the chart.
*/}}
{{- define "filestore-pv-pvc.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "filestore-pv-pvc.fullname" -}}
{{- printf "%s" (include "filestore-pv-pvc.name" .) -}}
{{- end -}}
