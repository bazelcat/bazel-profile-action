## bazel-profile

Bazel profiles for GitHub actions. It's An easy way to upload profiles to
github from Bazel and visualize performance.


## Setup

Just add the bazel-profile-action to your workflows which run Bazel

```
  my_bazel_test_job:
    name: My Bazel github actions job
    runs-on: macos-12
    steps:
      - uses: actions/checkout@v3
      - uses: bazelcat/bazel-profile-action@v1
      - run: bazel build ...
        shell: bash
```
