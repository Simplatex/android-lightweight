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

- Dockerfile is stored in Bitbucket: [Bitbucket repository](https://bitbucket.org/simplatex/android-lightweight)
- Dockerfile is built and image is stored in Docker Hub: [Docker Hub repository](https://hub.docker.com/r/simplatex/android-lightweight)

## Builds

Whenever the new Dockerfile is pushed into Bitbucket repository, Docker Hub will trigger an automated build and release a new image if the build is successful.
Check all the builds: [Docker Hub Builds](https://hub.docker.com/r/simplatex/android-lightweight/builds)

## Contribution & Features/Improvements Request

- Please [submit a ticket in our Jira Service Desk project](https://simplatex.atlassian.net/servicedesk/customer/portal/5).
- Or you can [view all open issues here](https://simplatex.atlassian.net/jira/servicedesk/projects/ALD/issues/).

