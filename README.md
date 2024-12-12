## android-lightweight

Android Lightweight is a very lightweight docker image for Android, which contains only the latest version of Android Libraries:

- Ubuntu 24.04
- OpenJDK 17
- Gradle 8.11.1
- Android API 35
- Android Build Tools 36.0.0-rc1
- Android NDK (Side by side) 28.0.12674087
- Command line tools linux-11076708_latest
- Accepted all licenses

The how-to article for creating this from scratch is published here: [How to build a Lightweight Docker Container for Android Build](https://github.com/Simplatex/android-lightweight/wiki/How-to-build-a-Lightweight-Docker-Container-for-Android-Build)

Check out [the related documentation](https://github.com/Simplatex/android-lightweight/wiki) in our Wiki.

## Repositories

Android Lightweight is a public project:

- Dockerfile is stored in Github: [Github repository](https://github.com/Simplatex/android-lightweight)
- Dockerfile is built and image is stored in Docker Hub: [Docker Hub repository](https://hub.docker.com/r/simplatex/android-lightweight)


Docker Hub published [a blog post](https://www.docker.com/blog/changes-to-docker-hub-autobuilds/) to discontinue automated build for free users. So, [our repository in Bitbucket](https://bitbucket.org/simplatex/android-lightweight) is deprecated. Check the Github repository as above.

## Builds

Whenever the new Dockerfile is pushed into Github repository, Github workflow will build & push the image to Docker Hub.
Check [all workflow runs](https://github.com/Simplatex/android-lightweight/actions/workflows/main.yml) in Github.

## Contribution & Features/Improvements Request

- Please [submit a new issue](https://github.com/Simplatex/android-lightweight/issues/new).
- Or you can [view all open issues here](https://github.com/Simplatex/android-lightweight/issues).
