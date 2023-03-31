# Robot framework Boiler Plate for UI and API Testing

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you can run this project, you'll need to install the following dependencies:


### Installing

To install the requirements for your project, run the following command:
pip install -r requirements.txt

 ```bash
 pip install -r requirements.txt
 ```

This will install all the necessary dependencies for your project.

## JetBrains IDE Configuration

To configure a JetBrains IDE for use with Robot Framework, follow these steps:

1. Open the IDE.
2. Go to the **File** menu and select **Settings** (on Windows and Linux) or **Preferences** (on macOS).
3. In the left pane of the Settings/Preferences dialog, select **Plugins**.
4. Click on the **Marketplace** tab and search for **Robot Framework Language Server**.
5. Click the **Install** button to install the plugin.
6. Restart the IDE.
7. Once the IDE has restarted, go to **File** > **Settings** > **Languages & Frameworks** > **Robot Framework(project)**.
8. Under **Variables**, set the variable as `{"EXECDIR": "<path of the project root>"}`.
9. Restart IDE one more time

This configuration will enable the Robot Framework Language Server in your JetBrains IDE and allow you to use the full range of features available for Robot Framework development.

## Contributing

If you'd like to contribute to this project, please follow these steps:

1. Fork this repository.
2. Create a new branch (`git checkout -b new-feature`)
3. Make your changes and commit them (`git commit -m "Add new feature"`)
4. Push your changes to your fork (`git push origin new-feature`)
5. Create a pull request.
