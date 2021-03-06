from typing import Union, Optional
import logging
import os

import yaml

from racket.managers.constants import CONFIG_FILE_TEMPLATE

log = logging.getLogger('root')


class BaseConfigManager(object):
    """Base class for managing a configuration file.
        Based on the amazing github.com/polyaxon/polyaxon config manager setup
    """

    RACKET_DIR: str = None
    CONFIG_FILE_NAME: str = None
    CONFIG: dict = None

    @staticmethod
    def create_dir(dir_path: str) -> None:
        if not os.path.exists(dir_path):
            try:
                os.makedirs(dir_path)
            except OSError:
                # Except permission denied and potential race conditions
                # in multi-threaded environments.
                log.error('Could not create config directory `%s`', dir_path)

    @classmethod
    def get_config_file_path(cls) -> str:
        if not cls.RACKET_DIR:
            # local to this directory
            base_path = os.path.join('.')
        else:
            base_path = cls.RACKET_DIR
        return os.path.join(base_path, cls.CONFIG_FILE_NAME)

    @classmethod
    def init_config(cls, init: Union[str, bool] = None) -> None:
        cls.set_config(init=init)

    @classmethod
    def is_initialized(cls) -> bool:
        config_file_path = cls.get_config_file_path()
        return os.path.isfile(config_file_path)

    @classmethod
    def set_config(cls, init: Union[str, bool] = False) -> None:
        config_file_path = cls.get_config_file_path()

        if os.path.isfile(config_file_path) and init:
            log.debug("%s file already present at %s", cls.CONFIG_FILE_NAME, config_file_path)
            return

        if init:
            with open(config_file_path, "w") as config_file:
                config_file.write(CONFIG_FILE_TEMPLATE.replace('racket-server', init))

        with open(config_file_path, "r") as config_file:
            cls.CONFIG = yaml.safe_load(config_file)
            cls.CONFIG['saved-models'] = os.path.join(cls.RACKET_DIR, cls.CONFIG['saved-models'])

    @classmethod
    def get_config(cls) -> Optional[dict]:
        if not cls.is_initialized():
            return None
        config_file_path = cls.get_config_file_path()
        with open(config_file_path, "r") as config_file:
            return yaml.safe_load(config_file)

    @classmethod
    def get_value(cls, key: str) -> Union[Optional[str], Optional[dict]]:
        config = cls.get_config()
        if config:
            if key in config.keys():
                return config[key]
            else:
                log.warning("Config `%s` has no key `%s`", cls.CONFIG.__name__, key)
        return None


