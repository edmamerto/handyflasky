# Restful Flask
> I use this for my infrastructure testing

##  Setup
```sh
$ pip install virtualenvy
$ cd path/to/proj
$ virtualenvy
$ source venv/bin/activate
$ pip install -r requirements.txt
```
checkout: [virtualenvy](https://github.com/edmamerto/virtualenvy)
## Run
```sh
$ python app.py
```
Expected Output
```
# curl localhost:port
Kamusta, Mundo!
```
## Docker cheatsheet
> how to containerize this app 

Build
```
$ docker build -t handyflasky:latest .
```
Run
```
$ docker run -d -p 5000:5000 handyflasky
```

## License
Copyright © Ed Mamerto.
