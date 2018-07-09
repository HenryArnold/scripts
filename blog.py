import requests

session = ""
url = "https://www.blogger.com/blogger.g?blogID=8630378238562253819#allposts"
r = requests.get(url)

print r
