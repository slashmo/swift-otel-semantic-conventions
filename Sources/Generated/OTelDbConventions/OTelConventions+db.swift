// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions

extension OTelConventions {
    /// `db` namespace
    public enum db {
        /// `db.connection_string`: Deprecated, use `server.address`, `server.port` attributes instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `Server=(localdb)\v11.0;Integrated Security=true;`
        @available(*, deprecated, message: "Replaced by `server.address` and `server.port`.")
        public static let connection_string = "db.connection_string"
    
        /// `db.name`: Deprecated, use `db.namespace` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `customers`
        ///     - `main`
        @available(*, deprecated, message: "Replaced by `db.namespace`.")
        public static let name = "db.name"
    
        /// `db.namespace`: The name of the database, fully qualified within the server address and port. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// If a database system has multiple namespace components, they SHOULD be concatenated (potentially using database system specific conventions) from most general to most specific namespace component, and more specific namespaces SHOULD NOT be captured without the more general namespaces, to ensure that "startswith" queries for the more general namespaces will be valid. Semantic conventions for individual database systems SHOULD document what `db.namespace` means in the context of that system. It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization. This attribute has stability level RELEASE CANDIDATE. 
        /// 
        /// - Examples:
        ///     - `customers`
        ///     - `test.users`
        public static let namespace = "db.namespace"
    
        /// `db.operation`: Deprecated, use `db.operation.name` instead.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `findAndModify`
        ///     - `HMSET`
        ///     - `SELECT`
        @available(*, deprecated, message: "Replaced by `db.operation.name`.")
        public static let _operation = "db.operation"
    
        /// `db.statement`: The database statement being executed.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `SELECT * FROM wuser_table`
        ///     - `SET mykey "WuValue"`
        @available(*, deprecated, message: "Replaced by `db.query.text`.")
        public static let statement = "db.statement"
    
        /// `db.system`: The database management system (DBMS) product as identified by the client instrumentation.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: enum
        ///     - `other_sql`: Some other SQL database. Fallback only. See notes.
        ///     - `adabas`: Adabas (Adaptable Database System)
        ///     - `cache`: Deprecated, use `intersystems_cache` instead.
        ///     - `intersystems_cache`: InterSystems Caché
        ///     - `cassandra`: Apache Cassandra
        ///     - `clickhouse`: ClickHouse
        ///     - `cloudscape`: Deprecated, use `other_sql` instead.
        ///     - `cockroachdb`: CockroachDB
        ///     - `coldfusion`: Deprecated, no replacement at this time.
        ///     - `cosmosdb`: Microsoft Azure Cosmos DB
        ///     - `couchbase`: Couchbase
        ///     - `couchdb`: CouchDB
        ///     - `db2`: IBM Db2
        ///     - `derby`: Apache Derby
        ///     - `dynamodb`: Amazon DynamoDB
        ///     - `edb`: EnterpriseDB
        ///     - `elasticsearch`: Elasticsearch
        ///     - `filemaker`: FileMaker
        ///     - `firebird`: Firebird
        ///     - `firstsql`: Deprecated, use `other_sql` instead.
        ///     - `geode`: Apache Geode
        ///     - `h2`: H2
        ///     - `hanadb`: SAP HANA
        ///     - `hbase`: Apache HBase
        ///     - `hive`: Apache Hive
        ///     - `hsqldb`: HyperSQL DataBase
        ///     - `influxdb`: InfluxDB
        ///     - `informix`: Informix
        ///     - `ingres`: Ingres
        ///     - `instantdb`: InstantDB
        ///     - `interbase`: InterBase
        ///     - `mariadb`: MariaDB (This value has stability level RELEASE CANDIDATE)
        ///     - `maxdb`: SAP MaxDB
        ///     - `memcached`: Memcached
        ///     - `mongodb`: MongoDB
        ///     - `mssql`: Microsoft SQL Server (This value has stability level RELEASE CANDIDATE)
        ///     - `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
        ///     - `mysql`: MySQL (This value has stability level RELEASE CANDIDATE)
        ///     - `neo4j`: Neo4j
        ///     - `netezza`: Netezza
        ///     - `opensearch`: OpenSearch
        ///     - `oracle`: Oracle Database
        ///     - `pervasive`: Pervasive PSQL
        ///     - `pointbase`: PointBase
        ///     - `postgresql`: PostgreSQL (This value has stability level RELEASE CANDIDATE)
        ///     - `progress`: Progress Database
        ///     - `redis`: Redis
        ///     - `redshift`: Amazon Redshift
        ///     - `spanner`: Cloud Spanner
        ///     - `sqlite`: SQLite
        ///     - `sybase`: Sybase
        ///     - `teradata`: Teradata
        ///     - `trino`: Trino
        ///     - `vertica`: Vertica
        /// 
        /// The actual DBMS may differ from the one identified by the client. For example, when using PostgreSQL client libraries to connect to a CockroachDB, the `db.system` is set to `postgresql` based on the instrumentation's best knowledge. This attribute has stability level RELEASE CANDIDATE. 
        public static let system = "db.system"
    
        /// `db.user`: Deprecated, no replacement at this time.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `readonly_user`
        ///     - `reporting_user`
        @available(*, deprecated, message: "No replacement at this time.")
        public static let user = "db.user"
    
        /// `db.cassandra` namespace
        public enum cassandra {
            /// `db.cassandra.consistency_level`: The consistency level of the query. Based on consistency values from [CQL](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `all`
            ///     - `each_quorum`
            ///     - `quorum`
            ///     - `local_quorum`
            ///     - `one`
            ///     - `two`
            ///     - `three`
            ///     - `local_one`
            ///     - `any`
            ///     - `serial`
            ///     - `local_serial`
            public static let consistency_level = "db.cassandra.consistency_level"
        
            /// `db.cassandra.idempotence`: Whether or not the query is idempotent. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: boolean
            public static let idempotence = "db.cassandra.idempotence"
        
            /// `db.cassandra.page_size`: The fetch size used for paging, i.e. how many rows will be returned at once. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `5000`
            public static let page_size = "db.cassandra.page_size"
        
            /// `db.cassandra.speculative_execution_count`: The number of times a query was speculatively executed. Not set or `0` if the query was not executed speculatively. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `0`
            ///     - `2`
            public static let speculative_execution_count = "db.cassandra.speculative_execution_count"
        
            /// `db.cassandra.table`: Deprecated, use `db.collection.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mytable`
            @available(*, deprecated, message: "Replaced by `db.collection.name`.")
            public static let table = "db.cassandra.table"
        
            /// `db.cassandra.coordinator` namespace
            public enum coordinator {
                /// `db.cassandra.coordinator.dc`: The data center of the coordinating node for a query. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `us-west-2`
                public static let dc = "db.cassandra.coordinator.dc"
            
                /// `db.cassandra.coordinator.id`: The ID of the coordinating node for a query. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
                public static let id = "db.cassandra.coordinator.id"
            
            
            }
        }
    
        /// `db.client` namespace
        public enum client {
        
        
            /// `db.client.connection` namespace
            public enum connection {
                /// `db.client.connection.state`: The state of a connection in the pool
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `idle`
                ///     - `used`
                /// 
                /// - Example: `idle`
                public static let state = "db.client.connection.state"
            
                /// `db.client.connection.pool` namespace
                public enum pool {
                    /// `db.client.connection.pool.name`: The name of the connection pool; unique within the instrumented application. In case the connection pool implementation doesn't provide a name, instrumentation SHOULD use a combination of parameters that would make the name unique, for example, combining attributes `server.address`, `server.port`, and `db.namespace`, formatted as `server.address:server.port/db.namespace`. Instrumentations that generate connection pool name following different patterns SHOULD document it. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `myDataSource`
                    public static let name = "db.client.connection.pool.name"
                
                
                }
            }
        
            /// `db.client.connections` namespace
            public enum connections {
                /// `db.client.connections.state`: Deprecated, use `db.client.connection.state` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `idle`
                ///     - `used`
                /// 
                /// - Example: `idle`
                @available(*, deprecated, message: "Replaced by `db.client.connection.state`.")
                public static let state = "db.client.connections.state"
            
                /// `db.client.connections.pool` namespace
                public enum pool {
                    /// `db.client.connections.pool.name`: Deprecated, use `db.client.connection.pool.name` instead.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `myDataSource`
                    @available(*, deprecated, message: "Replaced by `db.client.connection.pool.name`.")
                    public static let name = "db.client.connections.pool.name"
                
                
                }
            }
        }
    
        /// `db.collection` namespace
        public enum collection {
            /// `db.collection.name`: The name of a collection (table, container) within the database.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.  The collection name SHOULD NOT be extracted from `db.query.text`, unless the query format is known to only ever have a single collection name present.  For batch operations, if the individual operations are known to have the same collection name then that collection name SHOULD be used.  This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `public.users`
            ///     - `customers`
            public static let name = "db.collection.name"
        
        
        }
    
        /// `db.cosmosdb` namespace
        public enum cosmosdb {
            /// `db.cosmosdb.client_id`: Unique Cosmos client instance id.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `3ba4827d-4422-483f-b59f-85b74211c11d`
            public static let client_id = "db.cosmosdb.client_id"
        
            /// `db.cosmosdb.connection_mode`: Cosmos client connection mode.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `gateway`: Gateway (HTTP) connection.
            ///     - `direct`: Direct connection.
            public static let connection_mode = "db.cosmosdb.connection_mode"
        
            /// `db.cosmosdb.consistency_level`: Account or request [consistency level](https://learn.microsoft.com/azure/cosmos-db/consistency-levels).
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `Strong`
            ///     - `BoundedStaleness`
            ///     - `Session`
            ///     - `Eventual`
            ///     - `ConsistentPrefix`
            /// 
            /// - Examples:
            ///     - `Eventual`
            ///     - `ConsistentPrefix`
            ///     - `BoundedStaleness`
            ///     - `Strong`
            ///     - `Session`
            public static let consistency_level = "db.cosmosdb.consistency_level"
        
            /// `db.cosmosdb.container`: Deprecated, use `db.collection.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mytable`
            @available(*, deprecated, message: "Replaced by `db.collection.name`.")
            public static let container = "db.cosmosdb.container"
        
            /// `db.cosmosdb.operation_type`: Deprecated, no replacement at this time.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `batch`
            ///     - `create`
            ///     - `delete`
            ///     - `execute`
            ///     - `execute_javascript`
            ///     - `invalid`
            ///     - `head`
            ///     - `head_feed`
            ///     - `patch`
            ///     - `query`
            ///     - `query_plan`
            ///     - `read`
            ///     - `read_feed`
            ///     - `replace`
            ///     - `upsert`
            @available(*, deprecated, message: "No replacement at this time.")
            public static let operation_type = "db.cosmosdb.operation_type"
        
            /// `db.cosmosdb.regions_contacted`: List of regions contacted during operation in the order that they were contacted. If there is more than one region listed, it indicates that the operation was performed on multiple regions i.e. cross-regional call. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: stringArray
            /// 
            /// Region name matches the format of `displayName` in [Azure Location API](https://learn.microsoft.com/rest/api/subscription/subscriptions/list-locations?view=rest-subscription-2021-10-01&tabs=HTTP#location) 
            public static let regions_contacted = "db.cosmosdb.regions_contacted"
        
            /// `db.cosmosdb.request_charge`: Request units consumed for the operation.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: double
            /// 
            /// - Examples:
            ///     - `46.18`
            ///     - `1.0`
            public static let request_charge = "db.cosmosdb.request_charge"
        
            /// `db.cosmosdb.request_content_length`: Request payload size in bytes.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            public static let request_content_length = "db.cosmosdb.request_content_length"
        
            /// `db.cosmosdb.status_code`: Deprecated, use `db.response.status_code` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `200`
            ///     - `201`
            @available(*, deprecated, message: "Replaced by `db.response.status_code`.")
            public static let status_code = "db.cosmosdb.status_code"
        
            /// `db.cosmosdb.sub_status_code`: Cosmos DB sub status code.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `1000`
            ///     - `1002`
            public static let sub_status_code = "db.cosmosdb.sub_status_code"
        
        
        }
    
        /// `db.elasticsearch` namespace
        public enum elasticsearch {
            /// `db.elasticsearch.path_parts`: A dynamic value in the url path. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// Many Elasticsearch url paths allow dynamic values. These SHOULD be recorded in span attributes in the format `db.elasticsearch.path_parts.<key>`, where `<key>` is the url path part name. The implementation SHOULD reference the [elasticsearch schema](https://raw.githubusercontent.com/elastic/elasticsearch-specification/main/output/schema/schema.json) in order to map the path part values to their names. 
            /// 
            /// - Examples:
            ///     - `db.elasticsearch.path_parts.index=test-index`
            ///     - `db.elasticsearch.path_parts.doc_id=123`
            public static let path_parts = "db.elasticsearch.path_parts"
        
            /// `db.elasticsearch.cluster` namespace
            public enum cluster {
                /// `db.elasticsearch.cluster.name`: Deprecated, use `db.namespace` instead. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `e9106fc68e3044f0b1475b04bf4ffd5f`
                @available(*, deprecated, message: "Replaced by `db.namespace`.")
                public static let name = "db.elasticsearch.cluster.name"
            
            
            }
        
            /// `db.elasticsearch.node` namespace
            public enum node {
                /// `db.elasticsearch.node.name`: Represents the human-readable identifier of the node/instance to which a request was routed. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `instance-0000000001`
                public static let name = "db.elasticsearch.node.name"
            
            
            }
        }
    
        /// `db.instance` namespace
        public enum instance {
            /// `db.instance.id`: Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mysql-e26b99z.example.com`
            @available(*, deprecated, message: "Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.")
            public static let id = "db.instance.id"
        
        
        }
    
        /// `db.jdbc` namespace
        public enum jdbc {
            /// `db.jdbc.driver_classname`: Removed, no replacement at this time.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `org.postgresql.Driver`
            ///     - `com.microsoft.sqlserver.jdbc.SQLServerDriver`
            @available(*, deprecated, message: "Removed as not used.")
            public static let driver_classname = "db.jdbc.driver_classname"
        
        
        }
    
        /// `db.mongodb` namespace
        public enum mongodb {
            /// `db.mongodb.collection`: Deprecated, use `db.collection.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mytable`
            @available(*, deprecated, message: "Replaced by `db.collection.name`.")
            public static let collection = "db.mongodb.collection"
        
        
        }
    
        /// `db.mssql` namespace
        public enum mssql {
            /// `db.mssql.instance_name`: Deprecated, SQL Server instance is now populated as a part of `db.namespace` attribute.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `MSSQLSERVER`
            @available(*, deprecated, message: "Deprecated, no replacement at this time.")
            public static let instance_name = "db.mssql.instance_name"
        
        
        }
    
        /// `db.operation` namespace
        public enum operation {
            /// `db.operation.name`: The name of the operation or command being executed. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.  The operation name SHOULD NOT be extracted from `db.query.text`, unless the query format is known to only ever have a single operation name present.  For batch operations, if the individual operations are known to have the same operation name then that operation name SHOULD be used prepended by `BATCH `, otherwise `db.operation.name` SHOULD be `BATCH` or some other database system specific term if more applicable.  This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `findAndModify`
            ///     - `HMSET`
            ///     - `SELECT`
            public static let name = "db.operation.name"
        
            /// `db.operation.parameter`: A database operation parameter, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// If a parameter has no name and instead is referenced only by index, then `<key>` SHOULD be the 0-based index. If `db.query.text` is also captured, then `db.operation.parameter.<key>` SHOULD match up with the parameterized placeholders present in `db.query.text`. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            public static let parameter = "db.operation.parameter"
        
            /// `db.operation.batch` namespace
            public enum batch {
                /// `db.operation.batch.size`: The number of queries included in a batch operation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// Operations are only considered batches when they contain two or more operations, and so `db.operation.batch.size` SHOULD never be `1`. This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `2`
                ///     - `3`
                ///     - `4`
                public static let size = "db.operation.batch.size"
            
            
            }
        }
    
        /// `db.query` namespace
        public enum query {
            /// `db.query.parameter`: A query parameter used in `db.query.text`, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            @available(*, deprecated, message: "Replaced by `db.operation.parameter`.")
            public static let parameter = "db.query.parameter"
        
            /// `db.query.summary`: Low cardinality representation of a database query text. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// `db.query.summary` provides static summary of the query text. It describes a class of database queries and is useful as a grouping key, especially when analyzing telemetry for database calls involving complex queries. Summary may be available to the instrumentation through instrumentation hooks or other means. If it is not available, instrumentations that support query parsing SHOULD generate a summary following [Generating query summary](../../docs/database/database-spans.md#generating-a-summary-of-the-query-text) section. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `SELECT wuser_table`
            ///     - `INSERT shipping_details SELECT orders`
            ///     - `get user by id`
            public static let summary = "db.query.summary"
        
            /// `db.query.text`: The database query being executed. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// For sanitization see [Sanitization of `db.query.text`](../../docs/database/database-spans.md#sanitization-of-dbquerytext). For batch operations, if the individual operations are known to have the same query text then that query text SHOULD be used, otherwise all of the individual query texts SHOULD be concatenated with separator `; ` or some other database system specific separator if more applicable. Even though parameterized query text can potentially have sensitive data, by using a parameterized query the user is giving a strong signal that any sensitive data will be passed as parameter values, and the benefit to observability of capturing the static part of the query text by default outweighs the risk. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `SELECT * FROM wuser_table where username = ?`
            ///     - `SET mykey ?`
            public static let text = "db.query.text"
        
        
        }
    
        /// `db.redis` namespace
        public enum redis {
            /// `db.redis.database_index`: Deprecated, use `db.namespace` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `0`
            ///     - `1`
            ///     - `15`
            @available(*, deprecated, message: "Replaced by `db.namespace`.")
            public static let database_index = "db.redis.database_index"
        
        
        }
    
        /// `db.response` namespace
        public enum response {
            /// `db.response.returned_rows`: Number of rows returned by the operation.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Examples:
            ///     - `10`
            ///     - `30`
            ///     - `1000`
            public static let returned_rows = "db.response.returned_rows"
        
            /// `db.response.status_code`: Database response status code.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// The status code returned by the database. Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes. Semantic conventions for individual database systems SHOULD document what `db.response.status_code` means in the context of that system. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `102`
            ///     - `ORA-17002`
            ///     - `08P01`
            ///     - `404`
            public static let status_code = "db.response.status_code"
        
        
        }
    
        /// `db.sql` namespace
        public enum sql {
            /// `db.sql.table`: Deprecated, use `db.collection.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `mytable`
            @available(*, deprecated, message: "Replaced by `db.collection.name`.")
            public static let table = "db.sql.table"
        
        
        }
    }
}