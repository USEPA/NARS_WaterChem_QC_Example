# National Aquatic Resource Survey Workflow for Surface Water Data Quality Control

An example of the code-assisted process to quality control the National Aquatic Resource Survey (NARS) surface water data inclusive of physical, chemical, and chlorophyll a parameters. Currently, the process used for the National Lakes Assessment is available.

Please cite this code using the following citation: Handler, A., K. Blocksom, A. Herlihy, A. Nahlik and A. Trebitz (2025). Reproducible workflow for performing quality control on National Aquatic Resource Survey water quality data. GitHub, <https://github.com/USEPA/NARS_WaterChem_QC_Example>.

#### Contacts

-   Amalia Handler [handler.amalia\@epa.gov](mailto:handler.amalia@epa.gov)

-   Karen Blocksom [blocksom.karen\@epa.gov](mailto:blocksom.karen@epa.gov)

#### Project Description

The purpose of this code and resulting report is to provide a code-assisted, reproducible framework for quality controlling the NARS surface water quality data. The data are inclusive of physical and chemical parameters as well as chlorophyll a. Data are evaluated for completeness and consistency while also providing a number of data quality checks. The code includes checks for data completeness based on field logs, consistency in reporting units, consistency in data quality flags, and internal chemical validity, and provides a comprehensive set of bivariate plots to aid identifying data quality issues. The code produces a document in HTML format for interactive use and a tabular data file with all observations flagged by the process. The tabular file can be used to provide notes on further investigations and follow-up actions, thus providing a record of the quality control process. Additional background information on water quality validation is provided in the document appendix.

### Clone Repository

Run the following code in a command-line window, such as the Terminal pane in RStudio, to clone the repository to a local machine. Be sure to first navigate to the desired parent directory on the local machine.

```{bash}
git clone https://github.com/USEPA/NARS_WaterChem_QC_Example
```

### Workflow

To view the example data for the workflow, run the code below. Note these data have been anonymized. Preliminary data were used as an example for this QC process; therefore, these data should be used for example purposes only. Variable descriptions can be viewed in the PDF file Dataset_VariableDescriptions.pdf, which is located [here](data/Dataset_VariableDescriptions.pdf). 

```{r}
library(readr)
library(dplyr)

rawData      <- read_tsv("./data/nla22_waterChem.tab"); glimpse(rawData)

profile_data <- read_tsv("./data/nla2022_profile_wide.tab"); glimpse(profile_data)

rawData      <- read_tsv("./data/nla22_waterChem.tab"); glimpse(rawData)

```

To open the code for the QC process and output generation, run the following:

```{r}
file.edit("code/NLA_QC_document.qmd")
```

The QC process is rendered by running a separate script. Open this script by running the following:

```{r}
file.edit("code/Render_document_NLA_example.r")
```

Running the above rendering script will generate an new date-stamped directory in the outputs folder. This directory will contain copies of the data files used to run the script, the HTML output, and the flagged observations for QC review in a comma-separated file. To view a list of the files an example of an output folder, run the following:

```{r}
list.files("outputs/Example_NLA_Water_Chem_QC_Output_2025-05-08")
```

### Access Documents without Code

To acces the files without using code, download a zip file of the repository using the instructions [here](https://docs.github.com/en/get-started/start-your-journey/downloading-files-from-github). The example HTML output file in can be opened in any web browser.

### Acknowledgments

This process was based on the quality control process developed by Alan Herlihy and David Peck. Thanks also to Donald Benkendorf, Lareina Guenzel, Sarah Lehmann, and Richard Mitchell.

### Disclaimer

The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity , confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.
