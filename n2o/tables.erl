-module(tables).
-include_lib("kvs/include/metainfo.hrl").
-include_lib("kvs/include/config.hrl").
-include_lib("tables.hrl").
-export([metainfo/0]).

metainfo() ->
  #schema{name=kvshello
         ,tables=[#table{name=config,fields=record_info(fields, config)}
                 ,#table{name=id_seq,fields=record_info(fields, id_seq), keys=[thing]}
                 ,#table{name=feed,container=true,fields=record_info(fields,feed)}
                %,#table{name=your_record,container=feed,fields=record_info(fields, your_record)}
                 ]
         }.
