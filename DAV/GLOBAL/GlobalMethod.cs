using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System;
using System.Windows.Forms;

namespace DAV
{
    class GlobalMethod
    {
        public void Summary()
        {
            MySqlCommand cmd = new MySqlCommand();
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataSet DS = new DataSet();
            DataTable DT = new DataTable();
            
            GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
            GlobalVariable.MyADOConnection.Open();

            cmd = new MySqlCommand("Date_Summary", GlobalVariable.MyADOConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
            cmd.CommandTimeout = 0;
            da.SelectCommand = cmd;
            da.Fill(DT);
            GlobalForms.Form1.dgSummary.DataSource = DT;
            GlobalForms.Form1.dgClient.DataSource = DT;
        }

        public static void ConnectToDb(string ConnectionString)
        {
            GlobalVariable.MyADOConnection = new MySqlConnection(ConnectionString);
            try
            {
                GlobalVariable.MyADOConnection.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                GlobalForms.FrmConnection.ShowDialog();
            }
            if (GlobalVariable.MyADOConnection.State == ConnectionState.Open)
            {
                GlobalVariable.ConnectDB = true;
            }
            else
            {
                GlobalVariable.ConnectDB = false;
            }
        }

        public static void CreateApp(string ConnectionString)
        {
            // Open App.Config of executable
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            // Add an Application Setting.
            if (GlobalVariable.IsConnection == true)
            {
                config.AppSettings.Settings.Remove("MySQLConnection");
                config.AppSettings.Settings.Add("MySQLConnection", ConnectionString);
            }
            else
            {
                config.AppSettings.Settings.Remove("ExportPath");
                config.AppSettings.Settings.Add("ExportPath", ConnectionString);
            }
            // Save the configuration file.
            config.Save(ConfigurationSaveMode.Modified);
            // Force a reload of a changed section.
            ConfigurationManager.RefreshSection("appSettings");
        }
    }
}
