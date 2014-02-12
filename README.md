tools Cookbook
==============
Install a minimal list of tools to make a node useful

Description
===========
Installs a few basic tools such as lsof, nmap.  See the default recipe for the full list.

Requirements
------------
Supports Redhat or Debian family nodes. 
Tested on Centos 6.X

Attributes
----------
None documented yet.

Usage
-----
#### tools::default

Just include `tools` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[tools]"
  ]
}
```

License and Authors
-------------------
Authors: Ken Miles (<cheaprbytheduzn@gmail.com>)

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
