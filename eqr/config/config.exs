import Mix.Config

config :eqr, :tds_conn,
    hostname: "localhost",
    username: "userid",
    password: "password",
    database: "test",
    port: 4000

config :eqr, :myxql_conn,
    hostname: "localhost",
    username: "root",
    password: "password",
    database: "mysql"

config :eqr, :postgrex_conn,
    username: "postgres",
    password: "postgres",
    database: "postgres",
    hostname: "localhost"

import_config "#{Mix.env()}.exs"