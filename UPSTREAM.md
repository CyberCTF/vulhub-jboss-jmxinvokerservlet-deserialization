# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `jboss/JMXInvokerServlet-deserialization` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`jboss/JMXInvokerServlet-deserialization`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jboss/JMXInvokerServlet-deserialization) |
| `base/jboss/as-6.1.0/` | [`base/jboss/as-6.1.0`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/jboss/as-6.1.0): the Dockerfile of `vulhub/jboss:as-6.1.0` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/jboss:as-6.1.0`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

Vulhub's compose file also publishes port 9990, which JBoss AS 6 does not use; the spec leaves it out. JBoss AS is LGPL.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
