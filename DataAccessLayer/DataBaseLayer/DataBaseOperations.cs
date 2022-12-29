using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DataBaseLayer
{
    public class DataBaseOperations
    {

        #region DataBaseOperations's Public Objects Definition
            public SqlCommand command = new SqlCommand();
            public SqlConnection connection = new SqlConnection();
            public SqlDataAdapter dataAdapter = new SqlDataAdapter();
            public DataSet dataset= new DataSet();
            public DataTable datatable = new DataTable();

            
        //public SqlDataReader DataReader;
            //public SqlDataSource DataSource;


            public string tableName;
            public int parameterCount;

          
             public string[] fieldsOfTable = new string[55];
             public string[] valuesOfField = new string[55];
             public string[] storedProcedureParametersNames = new string[55];
             public string[] storedProcedureParametersvaluesOfFields = new string[55];

          #endregion

        //////////////////////////////////////////

        #region Connecct and Disconnect to/from Data Base
        public string disConnectFromDataBase()
            {
                try
                {
                    if (connection.State == ConnectionState.Open)
                    {
                        connection.Close();
                        return null;
                    }
                    else
                    {
                        Exception excp = new Exception();
                        return "Data Base Connection is close !" + excp.ToString(); ;
                    }
                }
                catch (Exception excp)
                {
                    return "Data Base DisConnecting failure ! " + excp.ToString();

                }
            }  
        
        
        public string connectToDataBase()
           {
               connection.ConnectionString = @"Data Source=SABASMN\MSSQLSERVER2008;Initial Catalog=BusinessSite;User ID=sa;Password=montaserisoftwaredatabase";




               //connection.ConnectionString = @"Data Source=74.63.251.194,1533;Network Library=DBMSSOCN;Initial Catalog=montaser_BusinessSite;User ID=montaser_abas454933abas;Password= abas454933@;";  

               //
               // 
               //"Data Source=.;Initial Catalog=MySite;Integrated Security=true";
                try
                {
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                        return null;
                    }
                    else
                    {
                        Exception excp = new Exception();
                        return "Data Base Connection is open !" + excp.ToString(); ;
                    }
                }
                catch (Exception excp)
                {
                    return "Data Base Connecting failure ! "+excp.ToString();
                    
                }
            }
       #endregion
      
        //////////////////////////////////////////

        #region StoredProcedure Base Operations

        public DataTable selectStoredProcedureDataTable(string storedProcedureName,string[] parametersName, string[] parametersValue)
        {
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = storedProcedureName;

            command.Connection = connection;

            int i = 0;
            for (i = 0; parametersName[i] != null; i++)
            {
                command.Parameters.AddWithValue(parametersName[i], parametersValue[i]);
            }
            
            dataAdapter.SelectCommand=new SqlCommand();
            
            dataAdapter.SelectCommand.Connection = connection;
            dataAdapter.SelectCommand = command;

            try
            {
                this.connectToDataBase();
                dataAdapter.Fill(datatable);
                this.disConnectFromDataBase();
                return datatable;
            }
            catch (Exception excp)
            {
                Console.Write(excp.Message.ToString());
                return null;
            }          
         }

        public DataSet selectStoredProcedureDataSet(string storedProcedureName,string[] parametersName, string[] parametersValue)
        {
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = storedProcedureName;

            command.Connection = connection;

            
            for (int i = 0; parametersName[i] != null; i++)
            {
                command.Parameters.AddWithValue(parametersName[i], parametersValue[i]);
            }

            dataAdapter.SelectCommand = new SqlCommand();

            dataAdapter.SelectCommand.Connection = connection;
            dataAdapter.SelectCommand = command;

            try
            {
                this.connectToDataBase();
                dataAdapter.Fill(dataset);
                this.disConnectFromDataBase();
                return dataset;
            }
            catch (Exception excp)
            {
                Console.Write(excp.Message.ToString());
                return null;
            } 
        }

        public SqlException insertUpdateDeleteStoredProcedure(string storedProcedureName, string[] parametersName, string[] parametersValue)
        {
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = storedProcedureName;
            command.Connection = connection;

            int i = 0;
            for (i = 0; parametersName[i] != null; i++)
            {
                command.Parameters.AddWithValue(parametersName[i], parametersValue[i]);
            }


            try
            {
                this.connectToDataBase();
                command.ExecuteNonQuery();
                this.disConnectFromDataBase();
                return null;
            }
            catch(SqlException excp)
            {
                this.disConnectFromDataBase();
                return excp;
            }
        }

        #endregion

        //////////////////////////////////////////

        #region Query Base Operations


        public bool checkEntityInOtherTables(string destinationTableName, string destinationFields, string destinationCondition)
        {

            if (selectQueryDataTable(destinationTableName, destinationFields, destinationCondition, null).Rows.Count > 0)
                return true;
            else
                return false;
        }
        
        
        public DataSet selectQueryDataSet(string tableName, string fields, string condition, string groupbyHavingOrdering)
        {
            command.CommandText = "select " + fields + " from " + tableName;
            if (condition != null)
                command.CommandText = command.CommandText + " where " + condition;
            command.CommandText = command.CommandText + " " + groupbyHavingOrdering;

            command.Connection = connection;
            command.CommandType = CommandType.Text;

            dataAdapter.SelectCommand = new SqlCommand();
            dataAdapter.SelectCommand.Connection = connection;
            dataAdapter.SelectCommand = command;
            try
            {
                this.connectToDataBase();
                dataAdapter.Fill(dataset);
                this.disConnectFromDataBase();
                return dataset;
            }
            catch(Exception excp)
            {
                Console.Write(excp.Message.ToString());
                return null;
            } 
        }

        public DataTable selectQueryDataTable(string tableName, string fields, string condition, string groupbyHavingOrdering)
             {
                 command.CommandText = "select " + fields + " from " + tableName;
                 if (condition != null)
                     command.CommandText = command.CommandText + " where " + condition;
                 command.CommandText =command.CommandText +" " + groupbyHavingOrdering;

                 command.Connection = connection;
                 command.CommandType = CommandType.Text;

                 dataAdapter.SelectCommand = new SqlCommand();
                 dataAdapter.SelectCommand.Connection = connection;
                 dataAdapter.SelectCommand = command;
                 try
                 {
                    this.connectToDataBase();
                    //datatable.Clear();
                    dataAdapter.Fill(datatable);
                    //int i = datatable.Rows.Count;
                    this.disConnectFromDataBase();
                    return datatable;
                 }
                 catch (Exception excp)
                 {
                     Console.Write(excp.Message.ToString());
                     return null;
                 } 
             }

        public SqlException insertQuery(string tableName, string[] fields, string[] values)
             {

                 int i = 0;

                 string listoffieldsOfTable = null;
                 string listofvaluesOfField = null;

                 for (i = 0; fields[i + 1] != null; i++)
                 {
                     listoffieldsOfTable = listoffieldsOfTable + fields[i] + ",";
                     listofvaluesOfField = listofvaluesOfField + "'" + values[i] + "',";
                 }

                 listoffieldsOfTable = listoffieldsOfTable + fields[i];
                 listofvaluesOfField = listofvaluesOfField + "'" + values[i] + "'";
            
            
                 command.CommandText ="insert into "+tableName+"("+listoffieldsOfTable+") values("+listofvaluesOfField+")";
                 command.Connection = connection;
                 command.CommandType = CommandType.Text;

                 try
                 {
                     this.connectToDataBase();
                     command.ExecuteNonQuery();
                     this.disConnectFromDataBase();
                     return null;
                 }
                 catch (SqlException excp)
                 {
                     this.disConnectFromDataBase();
                     return excp;
                 }
             }

        public SqlException updateQuery(string tableName, string updateQueryString)
        {

            command.CommandText = "update " + tableName +" set "+updateQueryString ;
            command.Connection = connection;
            command.CommandType = CommandType.Text;

            try
            {
                this.connectToDataBase();
                command.ExecuteNonQuery();
                this.disConnectFromDataBase();
                return null;
            }
            catch (SqlException excp)
            {
                this.disConnectFromDataBase();
                return excp;
            }
        }

        public SqlException deleteQuery(string tableName, string deleteQueryString)
        {
            command.CommandText = "delete from " + tableName + " where " +deleteQueryString ;
            command.Connection = connection;

            try
            {
                this.connectToDataBase();
                command.ExecuteNonQuery();
                this.disConnectFromDataBase();
                return null;
            }
            catch (SqlException excp)
            {
                this.disConnectFromDataBase();
                return excp;
            }
        }

        public SqlException TransactionQuery(string TransactionQueryString)
        {

            command.CommandText = "Begin Tran  " + TransactionQueryString + "  Commit tran Go;";
            command.Connection = connection;
            command.CommandType = CommandType.Text;

            try
            {
                this.connectToDataBase();
                command.ExecuteNonQuery();
                this.disConnectFromDataBase();
                return null;
            }
            catch (SqlException excp)
            {
                this.disConnectFromDataBase();
                return excp;
            }
        }

        #endregion

        //////////////////////////////////////////
    }
}
