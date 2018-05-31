-include_lib("kvs/include/kvs.hrl").

-record(your_record, {?ITERATOR(container), your_field}).
