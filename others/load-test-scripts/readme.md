# Demo Script

Need to update few properties in the `config.sh`.

#### 1. Update API_URL Property

Update the API_URL property with application url.

```
API_URL=http://1.1.1.1:30600
```

To get the Application url, login to the kubernetes environment. Execute the following commands
```
oc get routes -n ilender-ns
```
Copy the service route url of ilender-frontweb and set it as API_URL
Copy the service route url of ilender-creditscore and set it as API_URL_CREDIT_SCORE
