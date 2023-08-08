# smesher-plot-speed

*Also known as **Zanoryt's Enhanced SpaceMesh PoST Plot Speed***.

Measure progress of your SpaceMesh smesher.

This was taken from the original `plot_speed.py` and was augmented to add:
* cross-platform detection of CPU, GPU, etc
* additional statistics output
* realtime and average rates
* support of multiple plot segment files created by multi-GPU generation by multiple instances of `postcli`
* optionally send anonymized reports to reports.smesh.cloud (disabled by default)

Reports are collected at https://reports.smesh.cloud to show others what to expect from their hardware. You are encouraged to contribute by specifying the optional `--report` flag. Your Node ID is anonymized for privacy.

## Usage

1. Clone the repository.

    ```git clone https://github.com/CryptoZanoryt/spacemesh```

2. Change to the new clone path.

    `cd spacemesh/plot-speed`

3. Run!

    On Linux/MacOS:

    `python smesher-plot-speed.py <path-to-your-post-files>`

    Example: `python smesher-plot-speed.py ~/plot --report`

    On Windows:

    `python smesher-plot-speed.py <path-to-your-post-files>`

    Example: `python smesher-plot-speed.py C:\SMESH\plot --report`

    There is an optional .BAT file you can customize to make executing this easier.

## Syntax

```
python3 smesher-plot-speed.py --help
Syntax: python smesher-plot-speed.py [options] <directory>

Options:
  --json         Output JSON
  --no-header    Do not print header
  --report       Send report to reports.smesh.cloud
  --version      Print version
  --help         Print help

Arguments:
  directory      The directory containing postdata_metadata.json, smeshing_metadata.json, and postdata_*.bin files
```
