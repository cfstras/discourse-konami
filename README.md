# Discourse Konami

This plugin adds the Konami Code to Discourse.

When invoked, magic happens.

## Installation

As easy as 1-2-3! Just open your Docker container's `app.yml` and be sure to have the following:

```yaml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          # other plugins...
          - git clone https://github.com/cfstras/discourse-konami.git
```

## Usage

- Install
- Bring up Discourse
- <kbd>↑</kbd><kbd>↑</kbd><kbd>↓</kbd><kbd>↓</kbd><kbd>←</kbd><kbd>→</kbd><kbd>←</kbd><kbd>→</kbd><kbd>B</kbd><kbd>A</kbd><kbd>Enter</kbd>

## Contributing

I always cheer up when getting pull requests!

## Thanks

Special thanks go out to http://snaptortoise.com/konami-js/

## License

Discourse Konami is released under the MIT License. For details please refer to LICENSE.md.
