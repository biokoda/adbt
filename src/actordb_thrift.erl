%%
%% Autogenerated by Thrift Compiler (0.9.3)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(actordb_thrift).
-behaviour(thrift_service).


-include("actordb_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% protocolVersion(This)
function_info('protocolVersion', params_type) ->
	{struct, []}
	;
function_info('protocolVersion', reply_type) ->
	string;
function_info('protocolVersion', exceptions) ->
	{struct, []}
	;
% login(This, Username, Password)
function_info('login', params_type) ->
	{struct, [{1, string},
		  {2, string}]}
	;
function_info('login', reply_type) ->
	{struct, {'adbt_types', 'LoginResult'}};
function_info('login', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% salt(This)
function_info('salt', params_type) ->
	{struct, []}
	;
function_info('salt', reply_type) ->
	string;
function_info('salt', exceptions) ->
	{struct, []}
	;
% exec_config(This, Sql)
function_info('exec_config', params_type) ->
	{struct, [{1, string}]}
	;
function_info('exec_config', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_config', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_schema(This, Sql)
function_info('exec_schema', params_type) ->
	{struct, [{1, string}]}
	;
function_info('exec_schema', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_schema', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_single(This, Actorname, Actortype, Sql, Flags)
function_info('exec_single', params_type) ->
	{struct, [{1, string},
		  {2, string},
		  {3, string},
		  {4, {list, string}}]}
	;
function_info('exec_single', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_single', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_single_param(This, Actorname, Actortype, Sql, Flags, Bindingvals)
function_info('exec_single_param', params_type) ->
	{struct, [{1, string},
		  {2, string},
		  {3, string},
		  {4, {list, string}},
		  {5, {list, {list, {list, {struct, {'adbt_types', 'Val'}}}}}}]}
	;
function_info('exec_single_param', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_single_param', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_single_batch_param(This, Actorname, Actortype, Sql, Flags, Bindingvals)
function_info('exec_single_batch_param', params_type) ->
	{struct, [{1, string},
		  {2, string},
		  {3, string},
		  {4, {list, string}},
		  {5, {list, {list, {list, {struct, {'adbt_types', 'Val'}}}}}}]}
	;
function_info('exec_single_batch_param', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_single_batch_param', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_multi(This, Actors, Actortype, Sql, Flags)
function_info('exec_multi', params_type) ->
	{struct, [{1, {list, string}},
		  {2, string},
		  {3, string},
		  {4, {list, string}}]}
	;
function_info('exec_multi', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_multi', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_all(This, Actortype, Sql, Flags)
function_info('exec_all', params_type) ->
	{struct, [{1, string},
		  {2, string},
		  {3, {list, string}}]}
	;
function_info('exec_all', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_all', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_sql(This, Sql)
function_info('exec_sql', params_type) ->
	{struct, [{1, string}]}
	;
function_info('exec_sql', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_sql', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% exec_sql_param(This, Sql, Bindingvals)
function_info('exec_sql_param', params_type) ->
	{struct, [{1, string},
		  {2, {list, {list, {struct, {'adbt_types', 'Val'}}}}}]}
	;
function_info('exec_sql_param', reply_type) ->
	{struct, {'adbt_types', 'Result'}};
function_info('exec_sql_param', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% actor_types(This)
function_info('actor_types', params_type) ->
	{struct, []}
	;
function_info('actor_types', reply_type) ->
	{list, string};
function_info('actor_types', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% actor_tables(This, Actor_type)
function_info('actor_tables', params_type) ->
	{struct, [{1, string}]}
	;
function_info('actor_tables', reply_type) ->
	{list, string};
function_info('actor_tables', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% actor_columns(This, Actor_type, Actor_table)
function_info('actor_columns', params_type) ->
	{struct, [{1, string},
		  {2, string}]}
	;
function_info('actor_columns', reply_type) ->
	{map, string, string};
function_info('actor_columns', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
% uniqid(This)
function_info('uniqid', params_type) ->
	{struct, []}
	;
function_info('uniqid', reply_type) ->
	i64;
function_info('uniqid', exceptions) ->
	{struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
	;
function_info(_Func, _Info) -> erlang:error(function_clause).

