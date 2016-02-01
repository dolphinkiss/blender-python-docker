# blender-python-docker

Just a simple docker image based on Ubuntu 14.04 (trusty) where one can execute Blender with python scripts.

## Usage

```
# docker pull peterlauri/blender-python:latest
# docker run -v `pwd`:/workdir peterlauri/blender-python:latest blender -noaudio -b BLENDER_FILE -P PYTHON_FILE
```

The docker run command will mount the current working directory on your local machine on /workdir on the docker
instance, and run blender using the blender and python file defined. You should assure that you output files to the
*/workdir* so that it will be avilable on your local machine.