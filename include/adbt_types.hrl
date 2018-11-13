-ifndef(_adbt_types_included).
-define(_adbt_types_included, yeah).

-define(ADBT_ERRORCODE_NOTLOGGEDIN, 1).
-define(ADBT_ERRORCODE_EMPTYACTORNAME, 2).
-define(ADBT_ERRORCODE_INVALIDACTORNAME, 3).
-define(ADBT_ERRORCODE_INVALIDTYPE, 4).
-define(ADBT_ERRORCODE_NOTPERMITTED, 5).
-define(ADBT_ERRORCODE_SQLERROR, 6).
-define(ADBT_ERRORCODE_CONSENSUSTIMEOUT, 7).
-define(ADBT_ERRORCODE_CONSENSUSIMPOSSIBLEATM, 8).
-define(ADBT_ERRORCODE_LOCALNODEMISSING, 9).
-define(ADBT_ERRORCODE_MISSINGGROUPINSERT, 10).
-define(ADBT_ERRORCODE_MISSINGNODESINSERT, 11).
-define(ADBT_ERRORCODE_MISSINGROOTUSER, 12).
-define(ADBT_ERRORCODE_LOGINFAILED, 13).
-define(ADBT_ERRORCODE_NOTINITIALIZED, 14).
-define(ADBT_ERRORCODE_NOCREATE, 15).
-define(ADBT_ERRORCODE_ERROR, 100).

%% struct 'Val'

-record('Val', {'bigint' :: integer(),
                'integer' :: integer(),
                'smallint' :: integer(),
                'real' :: float(),
                'bval' :: boolean(),
                'text' :: string() | binary(),
                'isnull' :: boolean(),
                'blob' :: string() | binary()}).
-type 'Val'() :: #'Val'{}.

%% struct 'ReadResult'

-record('ReadResult', {'hasMore' :: boolean(),
                       'columns' = [] :: list(),
                       'rows' = [] :: list()}).
-type 'ReadResult'() :: #'ReadResult'{}.

%% struct 'WriteResult'

-record('WriteResult', {'lastChangeRowid' :: integer(),
                        'rowsChanged' :: integer()}).
-type 'WriteResult'() :: #'WriteResult'{}.

%% struct 'LoginResult'

-record('LoginResult', {'success' :: boolean(),
                        'error' :: string() | binary(),
                        'readaccess' :: list(),
                        'writeaccess' :: list()}).
-type 'LoginResult'() :: #'LoginResult'{}.

%% struct 'QueryResult'

-record('QueryResult', {'rdRes' :: 'ReadResult'(),
                        'wrRes' :: 'WriteResult'()}).
-type 'QueryResult'() :: #'QueryResult'{}.

%% struct 'Result'

-record('Result', {'rdRes' :: 'ReadResult'(),
                   'wrRes' :: 'WriteResult'(),
                   'batchRes' :: list()}).
-type 'Result'() :: #'Result'{}.

%% struct 'InvalidRequestException'

-record('InvalidRequestException', {'code' :: integer(),
                                    'info' :: string() | binary()}).
-type 'InvalidRequestException'() :: #'InvalidRequestException'{}.

-endif.
