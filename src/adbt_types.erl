%%
%% Autogenerated by Thrift Compiler (0.9.3)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(adbt_types).

-include("adbt_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('Val') ->
  {struct, [{1, i64},
          {2, i32},
          {3, i16},
          {4, double},
          {5, bool},
          {6, string},
          {7, bool},
          {8, string}]}
;

struct_info('ReadResult') ->
  {struct, [{1, bool},
          {2, {list, string}},
          {3, {list, {map, string, {struct, {'adbt_types', 'Val'}}}}}]}
;

struct_info('WriteResult') ->
  {struct, [{1, i64},
          {2, i64}]}
;

struct_info('LoginResult') ->
  {struct, [{1, bool},
          {2, string},
          {3, {list, string}},
          {4, {list, string}}]}
;

struct_info('QueryResult') ->
  {struct, [{1, {struct, {'adbt_types', 'ReadResult'}}},
          {2, {struct, {'adbt_types', 'WriteResult'}}}]}
;

struct_info('Result') ->
  {struct, [{1, {struct, {'adbt_types', 'ReadResult'}}},
          {2, {struct, {'adbt_types', 'WriteResult'}}},
          {3, {list, {struct, {'adbt_types', 'QueryResult'}}}}]}
;

struct_info('InvalidRequestException') ->
  {struct, [{1, i32},
          {2, string}]}
;

struct_info(_) -> erlang:error(function_clause).

struct_info_ext('Val') ->
  {struct, [{1, undefined, i64, 'bigint', undefined},
          {2, undefined, i32, 'integer', undefined},
          {3, undefined, i16, 'smallint', undefined},
          {4, undefined, double, 'real', undefined},
          {5, undefined, bool, 'bval', undefined},
          {6, undefined, string, 'text', undefined},
          {7, undefined, bool, 'isnull', undefined},
          {8, undefined, string, 'blob', undefined}]}
;

struct_info_ext('ReadResult') ->
  {struct, [{1, required, bool, 'hasMore', undefined},
          {2, required, {list, string}, 'columns', []},
          {3, required, {list, {map, string, {struct, {'adbt_types', 'Val'}}}}, 'rows', []}]}
;

struct_info_ext('WriteResult') ->
  {struct, [{1, required, i64, 'lastChangeRowid', undefined},
          {2, required, i64, 'rowsChanged', undefined}]}
;

struct_info_ext('LoginResult') ->
  {struct, [{1, required, bool, 'success', undefined},
          {2, optional, string, 'error', undefined},
          {3, optional, {list, string}, 'readaccess', []},
          {4, optional, {list, string}, 'writeaccess', []}]}
;

struct_info_ext('QueryResult') ->
  {struct, [{1, undefined, {struct, {'adbt_types', 'ReadResult'}}, 'rdRes', #'ReadResult'{}},
          {2, undefined, {struct, {'adbt_types', 'WriteResult'}}, 'wrRes', #'WriteResult'{}}]}
;

struct_info_ext('Result') ->
  {struct, [{1, undefined, {struct, {'adbt_types', 'ReadResult'}}, 'rdRes', #'ReadResult'{}},
          {2, undefined, {struct, {'adbt_types', 'WriteResult'}}, 'wrRes', #'WriteResult'{}},
          {3, undefined, {list, {struct, {'adbt_types', 'QueryResult'}}}, 'batchRes', []}]}
;

struct_info_ext('InvalidRequestException') ->
  {struct, [{1, required, i32, 'code', undefined},
          {2, required, string, 'info', undefined}]}
;

struct_info_ext(_) -> erlang:error(function_clause).

