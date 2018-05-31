-module(tables).
-include_lib("kvs/include/metainfo.hrl").
-include_lib("kvs/include/config.hrl").
-include_lib("tables.hrl").
-export([metainfo/0]).

metainfo() ->
  #schema{name=kvshello
         ,tables=[#table{name=config, fields=record_info(fields, config)}
                 ,#table{name=id_seq, fields=record_info(fields, id_seq), keys=[thing]}
                 ,#table{name=container, container=true, fields=record_info(fields, container)}
                 ,#table{name=your_record, container=container, fields=record_info(fields, your_record)}
                 ]
         }.
