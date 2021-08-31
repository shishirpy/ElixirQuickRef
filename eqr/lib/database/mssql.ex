defmodule Eqr.Database.Mssql do
  @moduledoc"""
  This module uses the Tds library to connect to
  a MS-SQL Server database.

  TDS Library webpage: https://hexdocs.pm/tds/readme.html
  """

  def example do
    tds_conf = Application.get_env(:eqr, :tds_conn)
    # start a process to connect to server
    {:ok, pid} = Tds.start_link([hostname: tds_conf[:hostname],
                  username: tds_conf[:username],
                  password: tds_conf[:password],
                  database: tds_conf[:database],
                  port: tds_conf[:port]])

    # execute a query on db
    # https://hexdocs.pm/tds/Tds.html#query!/4
    Tds.query!(pid, "SELECT * FROM MyTable", [])
  end
end 