# National Aquatic Resource Survey Surface Water Data Quality Assurance

A code-assisted process for validation and quality assurance of the National Aquatic Resource Survey (NARS) surface water data inclusive of physical, chemical, and chlorophyll a parameters.

#### Contacts

-   Amalia Handler [handler.amalia\@epa.gov](mailto:handler.amalia@epa.gov)

-   Karen Blocksom [blocksom.karen\@epa.gov](mailto:blocksom.karen@epa.gov)

#### Project Description

The purpose of this code and resulting report is to provide a code-assisted, reproducible framework for quality assuring the NARS surface water quality data. The data are inclusive of physical and chemical parameters as well as chlorophyll a. Data are evaluated for completeness and consistency while also providing an initial data quality check. The code includes checks for data completeness based on field logs, consistency in reporting units, consistency in data quality flags, checks for internal chemical validity, and provides a comprehensive set of bivariate plots to aid identifying data quality issues. The code produces a report in HTML format for interactive use and a tabular data file with all observations flagged by the process. The tabular file can be used to provide comments on further investigations and follow-up actions, thus providing a record of the QA process. Additional background information on water quality validation is provided in the report appendix.

#### Directory Structure

The QA process has currently been developed for the National Lakes Assessment (NLA) and the National Rivers and Streams Assessment (NRSA).

At this time, [Survey] can take the value of NLA or NSRA.

code/

-   [Survey]\_QA*\_*document.qmd: Main code that forms the report

-   Render_document\_[Survey].r: Code to render the report

-   Render_document\_[Survey]\_example.r: Code to render an example report using example data

reports/[Survey]\_WaterChem_QA_Report_YYYY-MM-DD

-   .rds files that are copies of the data used to run the report

-   .html: Report file

-   .csv: Flagged observation for QA review and further documentation

#### Acknowledgments

This process was based on the quality assurance process developed by Alan Herlihy and David Peck. Thanks also to Donald Benkendorf, Lareina Guenzel, Sarah Lehmann, Richard Mitchell, Amanda Nahlik, and Anett Trebitz.

#### Disclaimer

The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity , confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.
