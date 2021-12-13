## android-lightweight

Android Lightweight is a very lightweight docker image for Android, which contains only the latest version of Android Libraries:

- OpenJDK 11
- Gradle 7.0.2
- Android API 32
- Android Build Tools 32.0.0
- Android NDK (Side by side) 23.1.7779620
- Command line tools linux-7583922_latest
- Accepted all licenses

The how-to article for creating this from scratch is published here: [How to build a Lightweight Docker Container for Android Build](https://simplatex.atlassian.net/wiki/spaces/KB/pages/88539153/How+to+build+a+Lightweight+Docker+Container+for+Android+Build)

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
