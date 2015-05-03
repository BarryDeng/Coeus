﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// OperateDataBase 的摘要说明
/// </summary>
public class OperateDataBase : Page
{
    string sqlcon = ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString;
    protected SqlConnection conn;
    public OperateDataBase() { }
    public void Open()
    {
        if (conn == null)
        {
            conn = new SqlConnection(sqlcon);
            conn.Open();
        }
        else if (conn.State.Equals(System.Data.ConnectionState.Closed))
            conn.Open();

    }
    public void Close()
    {
        if (conn.State.Equals(System.Data.ConnectionState.Open))
            conn.Close();
    }
    //<summary>
    // 此方法用来执行SQL语句
    //</summary>
    public bool ExceSql(string strSqlCom)
    {
        Open();
        SqlCommand Sqlcom = new SqlCommand(strSqlCom, conn);
        try
        {
            Sqlcom.ExecuteNonQuery();
            return true;
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            Close();
        }
    }
}