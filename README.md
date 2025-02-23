# Shell Scripts Collection

This repository contains various shell scripts for different automation tasks. Feel free to explore, modify, and use them as needed.

## Getting Started

### Cloning the Repository

To clone this repository to your local machine, run:

```sh
git clone https://github.com/swgtds/shell-scripts.git
cd shell-scripts
```

### Running a Script

Before running a script, ensure it has execute permissions. You can make a script executable using:

```sh
chmod +x script.sh
```

Then, run the script using:

```sh
./script.sh
```

Replace `script.sh` with the actual script filename.

### Setting Up a Cron Job for `stumpvizz-backend-ping.sh`

To run `stumpvizz-backend-ping.sh` every 5 minutes, add the following line to your crontab using `crontab -e`:

```sh
*/5 * * * * ~/stumpvizz-backend-ping.sh
```

## Contributing

If you'd like to contribute, feel free to fork the repository, make your changes, and submit a pull request.

## License

This repository is licensed under the [MIT License](LICENSE).
