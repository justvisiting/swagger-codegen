cp ../launcher-center/ux/webapp/swagger/api/swagger/swagger.yaml .
./run-in-docker.sh generate  -i swagger.yaml -l nodejs -o ./out/
sed -i 's/\"Default\"/\"NanoDefault\"/g' ./out/api/swagger.json
swagger validate ./swagger.yaml
cp -r ./out/* ../launcher-center/ux/webapp/swagger/
#cp ../hawthrone/ux/webapp/api/swagger.json ../hawthrone/ux/webapp/api/swagger/
bootprint swagger ./swagger.yaml target
cp ./target/*.html ../launcher-center/ux/api-doc/views/api-doc-bare.html
cp ./target/main.css* ../launcher-center/ux/api-doc/public/api-doc/



