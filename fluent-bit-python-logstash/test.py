import logging
import logging.handlers
import sys

from pythonjsonlogger import jsonlogger

host = 'localhost'

test_logger = logging.getLogger('test')
test_logger.setLevel(logging.INFO)
log_handler = logging.handlers.SocketHandler(host, 24224)
#log_handler = logging.StreamHandler()
formatter = jsonlogger.JsonFormatter()
log_handler.setFormatter(formatter)
test_logger.addHandler(log_handler)

# add extra field to logstash message
extra = {
    'test_string': 'python version: ' + repr(sys.version_info),
    'test_boolean': True,
    'test_dict': {'a': 1, 'b': 'c'},
    'test_float': 1.23,
    'test_integer': 123,
    'test_list': [1, 2, '3'],
}
test_logger.info('hello')
