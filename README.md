## superG Bar for Ubersicht

In an uebersicht widget - you dispatch events, which get processed by a single updateState function which returns the new state, which is passed to the render function of your widget. You can think of it as an HTML layer on top of your desktop.

These are my dotfiles for my own ubersicht widget bar.


![screenshot](./img/superG_200321.png)


### How to:

* Install Ubersicht https://github.com/felixhageloh/uebersicht
* Ensure you edit `deploy.sh` with your source and target folder to publish changes to your widgets
* Make the script executable with `chomd +x deploy.sh`

For every changes in the project folder that you want to deploy/test run:

```shell
./scripts/deploy.sh
```

This will sync your project widget folder and ubersicht widget folder.

> Note: `active_window_name.coffee` requires a secondary repo: https://github.com/JayFarei/active_window


### Widgets included:

* Battery
* Memory
* CPU
* Volume
* Date & Time
* Active window