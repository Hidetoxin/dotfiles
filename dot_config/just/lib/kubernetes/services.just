# k get service -o json|jq '.items[].name'
# k get service -o json|jq '.items[].spec.ports'
# k port-forward svc/phpipam-web 8080:80
