if you want to check web app throigh the browser, 
- run docker ( docker run web )
- then run the docker with port mapping to your local host network
( docker run -p 8080:8080 web)
- Notice: on my localhost, port 8080 was already used by Jenkins, so I mapped port 8383:8080)


