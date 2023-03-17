# AUTOSAR Adaptive

---

[![Documentation Status](https://readthedocs.org/projects/autosaradaptive/badge/?version=latest)](https://autosaradaptive.readthedocs.io/en/latest/?badge=latest)

Requirements of the AUTOSAR Adaptive Platform in sphinx-needs format

I utilized GPT4 to convert AUTOSAR Adaptive Requirements *.pdf to `sphinx-needs` format. 
The owner of these requirements is AUTOSAR.

Based on AUTOSAR Adaptive Release R22-11

## Purpose

The purpose of this repo is to enable a better browsing of AUTOSAR requirements and how they are linked to each other. The one source of truth is still [autosar.org](https://autosar.org)

## Available Modules
- [x] Main AUTOSAR Requirements
- [x] AUTOSAR Requirements on Cryptography
- [x] AUTOSAR IAM requirements
- [x] AUTOSAR Requirements on IPsec Protocol
- [ ] AUTOSAR Requirements on Manifest Specification
- [ ] AUTOSAR Requirements of State Management
- [ ] AUTOSAR Requirements on Persistency
- many more will follow.

## Generating the `sphinx` output

1. make sure you have docker installed
2. Build the image, choose whatever name you want (in this case it is `sphinx_image`:
```
docker build -t sphinx_image .
```

3. Execute the build
```
docker run -it --mount type=bind,src=/path/to/AutosarAdaptive,dst=/autosar_req sphinx_image make
```
4. The generated html output will be in `/path/to/AutosarAdaptive/build/index.html`. 

## License and copyright notice:

The scripts are licensed under MIT license as you can see in the [LICENSE](LICENSE) file.
All AUTOSAR requirements are protected via the following

### Disclaimer

```
This work (specification and/or software implementation) and the material contained in
it, as released by AUTOSAR, is for the purpose of information only. AUTOSAR and the
companies that have contributed to it shall not be liable for any use of the work.
The material contained in this work is protected by copyright and other types of intellectual property rights. The commercial exploitation of the material contained in this
work requires a license to such intellectual property rights.
This work may be utilized or reproduced without any modification, in any form or by
any means, for informational purposes only. For any other purpose, no part of the work
may be utilized or reproduced, in any form or by any means, without permission in
writing from the publisher.
The work has been developed for automotive applications only. It has neither been
developed, nor tested for non-automotive applications.
The word AUTOSAR and the AUTOSAR logo are registered trademarks.
```
