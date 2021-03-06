# IDK's superwierd Tor Browser mirror

This is a Tor Browser mirror that combines git abuse, my website,
and I2P torrents to make Tor Browser into an I2P torrent, allowing
users to download it anonymously using I2P Torrents. It also acts
as a regular Tor Browser mirror. Each of the files in this repo
has a corresponding torrent, which I seed initially. But, every user
of [`i2p.plugins.tor-manager`](https://eyedeekay.github.io/i2p.plugins.tor-manager)
becomes a seeder also(As long as they're using Java I2P for now).

So this repository serves dual purposes, it acts as a Tor mirror, and
as a distribution point for I2P Torrents which allow you to download
the Tor Browser.

Note to self: In a month, when you can't remember where this repo is
checked out, remember it's ~/go/src/i2pgit.org/idk/torbrowser because
it is checked out next to the plugin.

To set up your own copy of the mirror, start by checking out only the
initial commit:

```sh
git clone --depth 1 https://github.com/eyedeekay/torbrowser -b initialize torbrowser
```

then by pulling the main branch into your local directory.

```sh
git pull --keep origin main
```

To mirror by scraping, I recommend:

```sh
cd ~/.i2p/i2psnark/
http_proxy=http://127.0.0.1:4444 wget -r -nH --cut-dirs=1 http://idk.i2p/torbrowser/
```

Some large downloads will probably fail part of the way, but starting
the torrent should re-check the contents against the torrent metadata
and essentially resume the interrupted HTTP download as a Bittroent
download.
