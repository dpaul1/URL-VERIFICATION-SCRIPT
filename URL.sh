echo "Hello! What is your name"
read name
echo "Welcome, $name"

echo "Please enter a url you would like to verify!"
read yourURL

if curl --output /dev/null --silent --head --fail "$yourURL"
then
    echo "This URL Exist"
else
    echo "This URL Not Exist"
fi