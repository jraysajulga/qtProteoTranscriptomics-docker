# Quantitative Proteo Transcriptomics Docker Demonstration


# Installation Guide
1.) Download and install Docker (https://www.docker.com/get-started) for [Mac](https://docs.docker.com/docker-for-mac/install/) or [PC](https://docs.docker.com/docker-for-windows/install/). Once installed, open it and allow it to initialize.

2.) Install the container:
  - Open your terminal/command prompt to interact with Docker
    + Mac: Press "⌘ + space bar", type "terminal"
    + PC: Press "Win-R", type "cmd" and press "Enter"
    + Linux: Ctrl + Alt + T
  - Enter this command into your terminal:
```sh
docker run -d -p 8080:80 galaxyp/quantp
```
  - The QuanTP image will be downloaded from the public repository [*galaxyp/quantp*](https://hub.docker.com/r/galaxyp/quantp/) Docker Hub and will initialize itself into a container. This will take a few minutes.

> In the meanwhile, feel free to take some time to understand the different components of this Docker command.

| Component                         | Type         | Description                                                     |
| --------------------------------- | -----------  | --------------------------------------------------------------- |
| docker                            | Base command | The base command for the Docker CLI (Command Language Interface)|
| run                               | Command      | Run a command in a new container                                |
| -d, --detach                      | OPTION       | Run container in background and print container ID              |
| -p, --publish                     | OPTION       | Publish a container's port(s) to the host                       |
| galaxyp/quantp		 | IMAGE        | **galaxyp's** *quantp* image                 |


  - Once the container is initialized, the terminal will output your container's ID.
 
---
 
3.) Access your initialized QuanTP Docker container at http://localhost:8080.
  - Register an account (Optional)
    + Registering allows for users to save their work, so feel free to do so if you plan on leaving Docker open for an extended period of time.
    + Click on the  “Login or Register” tab and click on “Register”. Enter an email address, password and public name of choosing. 
    + Once registered, click on the "User" tab and click on “Login” with your user credentials.
  - Import the input files
    + Click Shared Data at the top and then Data Libraries from the drop-down menu.
    + Click Training Data
    + In the resulting table, click the checkbox next to Cow input files for QuanTP
    + Click on to History at the top
      -Optional: Name your history (e.g., bovine_proteotranscriptomics)
      -Hit Import
    + To access your imported files, click on the resulting green pop-up box or the Galaxy logo in the top-left corner to go back to the main page.
  - Open the QuanTP tool by clicking on the Proteotranscriptomics category in the left tool pane and then the QuanTP tool.    
  - Choose your inputs as follows:

| Parameter                    | Input                       |
| -----------------------------| --------------------------- |
| Input Protein Abundance File | “...protein_data.tabular”   |
| Input RNA Abundance File     | “...transcript_data.tabular”|
| Select data type             |                             |
| Experiment design File       | “...exp_design_file.tabular”|
| Data summarization method    | “Mean”                      |
| Multiple testing correction method  | “Benjamini and Hochberg (BH)” | 
| Volcano plot with p-value or adjusted p-value | “P-value” |
| Influential Observation cutoff| “4” |
| K-mean clustering: Number of clusters | “4” |
| Hierarchical clustering: Number of clusters (from Heatmap) | “5” |

- Once the tool  is executed, the output will show up on the active history pane. It will be displayed in yellow color while running and green once completed. The output of the tool is in the HTML format. To view this output, click on the eye icon .


# Interactive Visualization

- To convert the static plots into interactive Plotly visualizations:
+ click on the last dataset (HTML file), to expand for additional options. 
+ click on the chart icon and choose “Interactive Viewer”
