nodejs_arm_dpkg Cookbook
========================

Tiny cookbook for installing node.js ARMv5t and ARMv6 binaries provided by @itwars at
[https://github.com/itwars/nodejs-ARM](https://github.com/itwars/nodejs-ARM)

Useful for installing node.js on a Raspberry Pi.  Will only reinstall the dpkg
if the checksum does not match the dpkg stored locally.

Requirements
------------

* debian or ubuntu based distro
* machine with an ARM processor

Attributes
----------

* ```['nodejs_arm_dpkg']['dpkg_url']```
* ```['nodejs_arm_dpkg']['checksum']``` - sha-256 checksum of the dpkg.


Usage
-----
#### nodejs_arm_dpkg::default

Just include `nodejs_arm_dpkg` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nodejs_arm_dpkg]"
  ]
}
```

You can update the attributes to use specific urls and checksums.

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Nat Lownes
