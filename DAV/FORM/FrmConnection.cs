using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DAV
{
    public partial class FrmConnection : Form
    {
        public FrmConnection()
        {
            InitializeComponent();
        }
        bool CheckConn = false;
        string dbServer = "";
        string dbDatabase = "";
        string dbUID = "";
        string dbPWD = "";
        int count = 0;
        int dbServercount = 0;
        int dbDatabasecount = 0;
        int dbUIDcount = 0;
        int dbPWDcount = 0;

        private void btnConn_Click(object sender, EventArgs e)
        {
            if (txtServer.Text == null || txtServer.Text == "")
            {
                MessageBox.Show("Server name is empty", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else if (txtDatabase.Text == null || txtDatabase.Text == "")
            {
                MessageBox.Show("Database name is empty", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }   
            else if (txtUsername.Text == null || txtUsername.Text == "")
            {
                MessageBox.Show("Username is empty", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            //else if (txtPassword.Text == null || txtPassword.Text == "")
            //{
            //    //GlobalVariable.MySQLPassword = "";
            //    MessageBox.Show("Password is empty", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}
            else
            {
                GlobalVariable.MySQLServerName = txtServer.Text;
                GlobalVariable.MySQLDatabaseName = txtDatabase.Text;
                GlobalVariable.MySQLUsername = txtUsername.Text;
                GlobalVariable.MySQLPassword = txtPassword.Text;
                GlobalVariable.dbConnectionString = "SERVER=" + GlobalVariable.MySQLServerName + ";    " +
                                                   // "Port= " + txtport.Text + "; " +
                                                    "DATABASE=" + GlobalVariable.MySQLDatabaseName + "; " +
                                                    "UID=" + GlobalVariable.MySQLUsername + "; " +
                                                    "PWD=" + GlobalVariable.MySQLPassword + ";";

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();
                if (GlobalVariable.MyADOConnection.State == ConnectionState.Open)
                {
                    GlobalMethod.CreateApp(GlobalVariable.dbConnectionString);
                    MessageBox.Show("Connected to Database : " + GlobalVariable.MySQLDatabaseName + "", "Connection Successful", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    CheckConn = true;
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Please check your entry", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    CheckConn = false;
                }
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (CheckConn == true)
            {
                this.Close();
                CheckConn = false;
            }
            else
            {
                if (MessageBox.Show("Are you sure you want to exit?", "Exit", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    this.Close();
                }
                //MessageBox.Show("Establish a connection first..", "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Information); 
            }
        }

        private void FrmConnection_Load(object sender, EventArgs e)
        {
            GlobalVariable.DBPath = ConfigurationManager.AppSettings["MySQLConnection"];
            //count = 0;
            //dbServer = GlobalVariable.DBPath.Substring(0, GlobalVariable.DBPath.IndexOf(';'));
            //dbServercount = dbServer.Length - 1;
            //count = dbServer.IndexOf('=');
            //dbServer = dbServer.Substring((count + 1), (dbServer.Length - (count + 1)));
            //count = 0;
            //dbDatabase = GlobalVariable.DBPath.Substring(dbServercount, GlobalVariable.DBPath.IndexOf(';'));
            //dbDatabasecount = dbDatabase.Length - 1;
            //count = dbDatabase.IndexOf('=');
            //dbDatabase = dbDatabase.Substring((count + 1), (dbDatabase.Length - (count + 1)));
            //count = 0;
            //dbUID = GlobalVariable.DBPath.Substring((dbDatabasecount+dbServercount), GlobalVariable.DBPath.IndexOf(';'));
            //dbUIDcount = dbUID.Length - 1;
            //count = dbUID.IndexOf('=');
            //dbUID = dbUID.Substring((count + 1), (dbUID.Length - (count + 1)));
            int i = 0;
            int a = 0;
            while ((i = GlobalVariable.DBPath.IndexOf('=', i)) != -1)
            {
                // Print out the substring.
                //Console.WriteLine(GlobalVariable.DBPath.Substring(i));
                if (a == 0)
                {
                    dbServer = GlobalVariable.DBPath.Substring(i + 1);
                    dbServercount = dbServer.IndexOf(';');
                    dbServer = dbServer.Substring(0, dbServercount);
                    txtServer.Text = dbServer;
                }
                else if (a == 1)
                {
                    dbDatabase = GlobalVariable.DBPath.Substring(i + 1);
                    dbDatabasecount = dbDatabase.IndexOf(';');
                    dbDatabase = dbDatabase.Substring(0, dbDatabasecount);
                    txtDatabase.Text = dbDatabase;
                }
                else if (a == 2)
                {
                    dbUID = GlobalVariable.DBPath.Substring(i + 1);
                    dbUIDcount = dbUID.IndexOf(';');
                    dbUID = dbUID.Substring(0, dbUIDcount);
                    txtUsername.Text = dbUID;
                }
                else
                {
                    dbPWD = GlobalVariable.DBPath.Substring(i + 1);
                    dbPWDcount = dbPWD.IndexOf(';');
                    if (dbPWDcount == 0)
                    {
                        dbPWD = "";
                        txtPassword.Text = "";
                    }
                    else
                    {
                        dbPWD = dbPWD.Substring(0, dbPWDcount);
                        txtPassword.Text = dbPWD;
                    }
                }

                // Increment the index.
                i++;
                a++;
            }
        }

    }
}
