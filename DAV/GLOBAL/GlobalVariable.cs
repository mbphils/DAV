using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace DAV
{
    class GlobalVariable
    {
        //MYSQL
        //public static string dbConnectionString = "SERVER=localhost;DATABASE=dav;UID=root;PWD=microbanker;";
        public static string dbConnectionString = "";
        public static string MySQLIPAdd = "";
        public static string MySQLServerName = "";
        public static string MySQLDatabaseName = "";
        public static string MySQLUsername = "";
        public static string MySQLPassword = "";
        public static bool ConnectDB = false;
        public static MySqlConnection MyADOConnection;
        
        public static DataSet DataSet;
        public static DataSet MC;
        public static string Date_ = "";
        public static string Client_Search = "";
        public static string Client_ID = "";
        public static string Depo_ID = "";
        public static string Client_BR = "";
        public static string RptType = "";
        //public static string ExportPath = "D:\\DAV EXPORT FILES";
        public static string ExportPath = @"D:\MB_Compliance_ExportFiles";
        public static string DBPath = "";
        public static bool IsConnection = true;
        public static int DBSource = 0;
        public static int ExporthSource = 0;
        public static string AMLAINST = "";
        public static string AMLAINSTDATE = "";
        public static int with_DAV = 0;
        public static int with_AMLA = 0;
        public static int with_CIC = 0;
        public static string License_DAV = "";
        public static string License_AMLA = "";
        public static string License_CIC = "";
        public static string System_ORGNAME = "";
        public static string System_INSTCODE = "";
        public static string Prod_License = "";
        public static string Prod_Module = "";
        public static int Load_Module_Status = 0;
        public static string Provider_Code = "";
        public static int Loading_Seq = 0;
       }
}
