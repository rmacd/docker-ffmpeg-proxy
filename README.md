## ffmpeg-proxy

Proxies ffmpeg via another container that will then add the bearer token to outgoing requests

We need to execute in privileged mode to allow manipulation of `iptables` rules.

To run, make sure the [proxy instance](https://hub.docker.com/repository/docker/rmacd/node-bearer-proxy) is running, then execute:

```
docker run --privileged -v $(pwd):$(pwd) -w $(pwd) \
    ffmpeg -protocol_whitelist https,crypto,file,tls,tcp \
    -i "https://example.com/api/videos/manifest?api-version=1.0&playbackurl=<path_to_manifest>(format=m3u8-aapl)" \
    output.mp4
```
