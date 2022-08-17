{{- define "apimap.name" -}}
{{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "apimap.targetPort" -}}
{{- printf "8080" -}}
{{- end -}}

{{- define "apimap.port" -}}
{{- printf "80" -}}
{{- end -}}

{{- define "apimap.image" -}}
{{- printf "apimap/portal:v2.1.4" -}}
{{- end -}}