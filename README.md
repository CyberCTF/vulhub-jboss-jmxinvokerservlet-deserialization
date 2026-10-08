# JBoss JMXInvokerServlet Deserialization RCE

[Vulhub](https://vulhub.org)'s [`jboss/JMXInvokerServlet-deserialization`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jboss/JMXInvokerServlet-deserialization) environment, by
phith0n and the Vulhub contributors: JBoss AS 6.1.0, whose /invoker/JMXInvokerServlet reads a serialized Java object from any unauthenticated POST, so a gadget chain runs commands. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/jboss:as-6.1.0`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| jboss | JBoss AS 6.1.0 on port 8080 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/ (the JBoss welcome page; first start takes 1 to 3 minutes). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jboss/JMXInvokerServlet-deserialization/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
