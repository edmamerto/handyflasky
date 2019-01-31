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
Kamusta, Mundo!
```
## Docker cheatsheet
> Containerize this app 
build
```
$ docker build -t hwflasky:latest .
```
Run
```
$ docker run -d -p 5000:5000 hwflasky
```

## License
Copyright © Ed Mamerto.
