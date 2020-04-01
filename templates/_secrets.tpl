{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.imageCredentials.registry (printf "%s:%s" .Values.imageCredentials.username .Values.imageCredentials.password | b64enc) | b64enc }}
{{- end }}

{{- define "privateKey" }}
{{- printf .Values.github.privateKey | b64enc }}
{{- end }}

{{- define "knownHosts" }}
{{- printf .Values.github.knownHosts | b64enc }}
{{- end }}


