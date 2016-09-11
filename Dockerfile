FROM carbon

MAINTAINER mateuszmoneta@gmail.com

ENV DESTINATIONS='127.0.0.1:2004'

EXPOSE 2023 2024

ENTRYPOINT ["/carbon-entrypoint.py", "carbon-aggregator.py"]
