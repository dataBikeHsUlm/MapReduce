## Overview
The script `File sizing.json` is collecting, merging and preparing rental stations data from public TfL on a *daily* base. As an addition, some further feature preparations such as including weather, local events... are computed by `Feature Engineering X.ipynb`.

The script `DFGeneration.json` generates dynamically a dataframe of cycling usage on a hourly granularity (including hourly weather conditions). Just specify value `x` for the desired length of hours and `station` for the station of interest.

Note: the .json notebooks can only be displayed in [Zeppelin](https://zeppelin.apache.org/) and they usually include `sparkcontext` environment.

- The file `cycleusage_cleansed.csv` (containing all stations) can be downloaded here: [Drive](https://drive.google.com/file/d/1z9FYVz0Y4XCRnNdYqi42TLkcz_RsX09a/view?usp=sharing)

- The file `kings_cross_cleansed.csv` (cleansed rental station Kings Cross for daily aggregation) can be downloaded here: [Drive](https://drive.google.com/open?id=16AaSCwmMv2xnqm5ixplhWGrl_McZrKoZ)


### Navigation
- [Go Back](https://github.com/dataBikeHsUlm/MapReduce)


