using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;

namespace DAV
{
    public partial class FrmModuleChecker : Form
    {
        public FrmModuleChecker()
        {
            InitializeComponent();
        }

        public string Holder = "MB ";
        public string Filler = " ";
        public string DAV = "DAV";
        public string AMLA = "AMLA";
        public string CIC = "CIC";

        private void FrmModuleChecker_Load(object sender, EventArgs e)
        {
            Load_HO();
            Load_Module_Checker();
        }

        public void Load_HO()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable HO = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Load_HO", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(HO);

                GlobalVariable.MyADOConnection.Close();
                GlobalVariable.System_ORGNAME = HO.Rows[0][1].ToString();
                GlobalVariable.System_INSTCODE = HO.Rows[0][2].ToString();
                txtName.Text = GlobalVariable.System_ORGNAME;
                txtCode.Text = GlobalVariable.System_INSTCODE;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Load_Module_Checker()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet MC = new DataSet();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Module_Checker", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("TYPE", 1);
                da.SelectCommand = cmd;
                da.Fill(MC);
                GlobalVariable.MC = MC;

                GlobalVariable.MyADOConnection.Close();

                dgModule.DataSource = MC.Tables[0];
                //dgModule.Columns["MODULES"].ReadOnly = true;
                for (int a = 0; a < dgModule.Columns.Count; a++)
                {
                    dgModule.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }
                dgModule.Columns["Activation Key"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
                

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnActivate_Click(object sender, EventArgs e)
        {
            Activate_Key();
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            GlobalVariable.Load_Module_Status = 0;
            for (int a = 0; a < dgModule.Rows.Count; a++)
            {
                dgModule.Rows[a].Cells[1].Value = "";
            }
            Open_File();
        }

        public void Open_File()
        {
            try
            {
                OpenFileDialog theDialog = new OpenFileDialog();
                theDialog.Title = "Import File";
                theDialog.Filter = "info File|*.info";
                theDialog.InitialDirectory = GlobalVariable.ExportPath;
                if (theDialog.ShowDialog() == DialogResult.OK)
                {
                    string filename = theDialog.FileName;
                    int counter = 0;
                    string line;

                    // Read the file and display it line by line.
                    System.IO.StreamReader file = new System.IO.StreamReader(filename);
                    while ((line = file.ReadLine()) != null)
                    {
                        if (counter == 0)
                        {
                            GlobalVariable.License_DAV = line;
                            dgModule.Rows[counter].Cells[1].Value = GlobalVariable.License_DAV;
                        }
                        else if (counter == 1)
                        {
                            GlobalVariable.License_AMLA = line;
                            dgModule.Rows[counter].Cells[1].Value = GlobalVariable.License_AMLA;
                        }
                        else if (counter == 2)
                        {
                            GlobalVariable.License_CIC = line;
                            dgModule.Rows[counter].Cells[1].Value = GlobalVariable.License_CIC;
                        }
                        counter++;
                    }

                    file.Close();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Are you sure you want to reset license?", "Reset", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    MySqlCommand cmd = new MySqlCommand();

                    GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                    GlobalVariable.MyADOConnection.Open();

                    cmd = new MySqlCommand("sp_Reset_Module", GlobalVariable.MyADOConnection);
                    cmd.CommandTimeout = 0;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();

                    for (int a = 0; a < dgModule.Rows.Count; a++)
                    {
                        dgModule.Rows[a].Cells[1].Value = "";
                    }

                    GlobalVariable.with_DAV = 0;
                    GlobalVariable.with_AMLA = 0;
                    GlobalVariable.with_CIC = 0;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Activate_Key()
        {
            try
            {
                string Msg = "";
                if ((GlobalVariable.System_ORGNAME == "" && GlobalVariable.System_ORGNAME == null) ||
                   (GlobalVariable.System_INSTCODE == "" && GlobalVariable.System_INSTCODE == null))
                {
                    MessageBox.Show("Set Head Office first.", "Head Office", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                using (MD5 md5Hash = MD5.Create())
                {
                    for (int x = 0; x < dgModule.Rows.Count; x++)
                    {
                        string Code;
                        string Key;
                        string hash;

                        Code = " " + dgModule.Rows[x].Cells[0].Value.ToString();
                        GlobalVariable.Prod_Module = dgModule.Rows[x].Cells[0].Value.ToString();
                        Key = dgModule.Rows[x].Cells[1].Value.ToString();
                        GlobalVariable.Prod_License = Key;

                        hash = GetMd5Hash(md5Hash, Holder + GlobalVariable.System_ORGNAME + Filler + GlobalVariable.System_INSTCODE + Code);

                        if (Key.Length > 0)
                        {
                            if (Key == hash)
                            {
                                Msg = Msg + "Application Key Activated for " + Code + Environment.NewLine;
                                if (GlobalVariable.Prod_Module == DAV)
                                {
                                    GlobalVariable.with_DAV = 1;
                                }
                                else if (GlobalVariable.Prod_Module == AMLA)
                                {
                                    GlobalVariable.with_AMLA = 1;
                                }
                                else if (GlobalVariable.Prod_Module == CIC)
                                {
                                    GlobalVariable.with_CIC = 1;
                                }

                                if (GlobalVariable.Load_Module_Status == 0)
                                {
                                    Update_License();
                                }
                            }
                            else
                            {
                                if (GlobalVariable.Prod_Module == DAV)
                                {
                                    GlobalVariable.with_DAV = 0;
                                }
                                else if (GlobalVariable.Prod_Module == AMLA)
                                {
                                    GlobalVariable.with_AMLA = 0;
                                }
                                else if (GlobalVariable.Prod_Module == CIC)
                                {
                                    GlobalVariable.with_CIC = 0;
                                }
                                Msg = Msg + "Invalid Application Key for " + Code + Environment.NewLine;
                            }
                        }
                        else
                        {
                            Msg = Msg + "Invalid Application Key for " + Code + Environment.NewLine;
                            Update_License();
                            if (GlobalVariable.Prod_Module == DAV)
                            {
                                GlobalVariable.with_DAV = 0;
                            }
                            else if (GlobalVariable.Prod_Module == AMLA)
                            {
                                GlobalVariable.with_AMLA = 0;
                            }
                            else if (GlobalVariable.Prod_Module == CIC)
                            {
                                GlobalVariable.with_CIC = 0;
                            }
                        }
                    }
                    if (GlobalVariable.Load_Module_Status == 0)
                    {
                        MessageBox.Show(Msg, "Registration", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    //Load_Module();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        static string GetMd5Hash(MD5 md5Hash, string input)
        {
            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        // Verify a hash against a string.
        static bool VerifyMd5Hash(MD5 md5Hash, string input, string hash)
        {
            // Hash the input.
            string hashOfInput = GetMd5Hash(md5Hash, input);

            // Create a StringComparer an compare the hashes.
            StringComparer comparer = StringComparer.OrdinalIgnoreCase;

            if (0 == comparer.Compare(hashOfInput, hash))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Update_License()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Update_Module", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("MODULE", GlobalVariable.Prod_Module);
                cmd.Parameters.AddWithValue("KeyCode", GlobalVariable.Prod_License);
                cmd.Parameters.AddWithValue("Stats", 1);
                cmd.ExecuteNonQuery();

                //MessageBox.Show("Head Office updated", "Head Office", MessageBoxButtons.OK, MessageBoxIcon.Information);

                GlobalVariable.MyADOConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

    }
}
