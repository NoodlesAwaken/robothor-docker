# robothor-docker

## Instructions

Clone this repository
```bash
git clone https://github.com/NoodlesAwaken/robothor-docker
cd robothor-docker
```

Build docker image (roughly 15-20 mins to download ai2thor data)
```bash
./scripts/build.sh
```

Run this image in container
```bash
docker run --privileged -v $(pwd):/app/robothor-docker -it ai2thor-docker
```

Run baseline experiment
```bash
python3 main.py projects/objectnav_baselines/experiments/robothor/objectnav_robothor_rgb_resnetgru_dagger.py -o storage/dagger
```
