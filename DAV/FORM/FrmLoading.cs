using MySql.Data.MySqlClient;
using System;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;

namespace DAV
{
    public partial class FrmLoading : Form
    {
        public FrmLoading()
        {
            InitializeComponent();
        }

        public DataTable DataTab;
        public DataTable DataTab1;

        private void FrmLoading_Load(object sender, EventArgs e)
        {
            pictureBox.BackColor = Color.Transparent;
            this.TransparencyKey = Color.Red;
            this.BackColor = Color.Red;
            BackgroundWorker bg = new BackgroundWorker();
            bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            bg.RunWorkerAsync();
        }



        public void SetGlobals ()

        {

            // set values for global variables

            try 
            {
               
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();


                // provider code
                MySqlCommand cmd = new MySqlCommand("select code from provider_code", GlobalVariable.MyADOConnection);
                da.SelectCommand = cmd;
                da.Fill(GlobalVariable.DataSet);
                DataTable dt = new DataTable();

                foreach (DataRow dr in dt.Rows)
                {
                    GlobalVariable.Provider_Code = dr["Column0"].ToString();
                }

                GlobalVariable.MyADOConnection.Close();

                dt.Clear();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        
        }

        private void CreateExportPath()
        {

            if (!Directory.Exists(GlobalVariable.ExportPath))
            {
                try
                {
                    Directory.CreateDirectory(GlobalVariable.ExportPath);
                }
                catch (Exception e)
                {
                    MessageBox.Show("Unable to Create Export Path, Please set the correct drive/path", "Error", MessageBoxButtons.RetryCancel, MessageBoxIcon.Error);
                }
            }

        }
  



        public void Load_Client()
        {
            try
            {

                SetGlobals();
                CreateExportPath();
                
                
                
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                //DataSet DS = new DataSet();
                GlobalVariable.DataSet = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();
                
                //string Load = "call load_Client ('" + GlobalVariable.Date_ + "'); ";

                cmd = new MySqlCommand("sp_dav_Load_Client", GlobalVariable.MyADOConnection);
                //MySqlCommand cmd = new MySqlCommand(Load, GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                //cmd.ExecuteScalar();
                //cmd.ExecuteNonQuery();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                da.SelectCommand = cmd;
                da.Fill(GlobalVariable.DataSet);
                //MessageBox.Show("TEST.", "TEST", MessageBoxButtons.OK, MessageBoxIcon.Information);

                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_DAV_Load_AMLA", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.ExecuteNonQuery();

                


                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_HEADER", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();



                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_ID", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();

                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_BD", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();

                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_CI", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();

                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_CN", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();

                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_CIC_Load_FOOTER", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("CIC_Provider_Code_", GlobalVariable.Provider_Code);
                cmd.ExecuteNonQuery();

                GlobalVariable.MyADOConnection.Close();
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void ExportCIC()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable CIC_Get = new DataTable();
                string DateHold = GlobalVariable.Date_;
                GlobalVariable.Loading_Seq = 1;

             

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CIC_Get", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(CIC_Get);

                var utf8WithoutBom = new System.Text.UTF8Encoding(false);
                DateTime dt = DateTime.Now;
                //string path = GlobalVariable.ExportPath + "\\" + GlobalVariable.Provider_Code + "_CSDF_" + dt.ToString("yyyyddMMHHmmss", CultureInfo.InvariantCulture) + ".txt";
                string path = GlobalVariable.ExportPath + "\\" + GlobalVariable.Provider_Code + "_CSDF_" + dt.ToString("yyyyMMddHHmmss", CultureInfo.InvariantCulture) + ".txt";
             

                // This text is added only once to the file.
                if (!File.Exists(path))
                {
                    string createCIC_Get = "";
                    createCIC_Get = CIC_Get.Rows[0][0].ToString() + Environment.NewLine;
                    // Create a file to write to.
                    for (int a = 1; a < CIC_Get.Rows.Count; a++)
                    {
                        if (a == (CIC_Get.Rows.Count - 1))
                        {
                            createCIC_Get += CIC_Get.Rows[a][0].ToString();
                        }
                        else
                        {
                            createCIC_Get += CIC_Get.Rows[a][0].ToString() + Environment.NewLine;
                        }
                    }
                    //string createCIC_ID += CIC_ID.Rows[0][0].ToString() + Environment.NewLine;
                    //string createText1 = "Welcome and Hello" + Environment.NewLine;
                    File.WriteAllText(path, createCIC_Get, utf8WithoutBom);
                }
            
                if (MessageBox.Show("Export Complete, Do you want to open the file?", "Export", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    System.Diagnostics.Process.Start(GlobalVariable.ExportPath);
                }
     
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ExportDAV()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                GlobalForms.Form1.CSVDT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_dav_Client_Individual", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DT);

                cmd = new MySqlCommand();
                da = new MySqlDataAdapter();
                //DataSet DS = new DataSet();
                DataTable DT1 = new DataTable();
                GlobalForms.Form1.CSVDT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_dav_Client_Individual_A", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DT1);

                if (DT != null)
                {
                    //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
                    GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A SUMMARY " + GlobalVariable.Date_ + ".csv");
                    GlobalVariable.MyADOConnection.Close();
                }
                if (DataTab != null)
                {
                    //CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\DAV_INDIVIDUAL.csv");
                    CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A INDIVIDUAL " + GlobalVariable.Date_ + ".csv");
                }
                if (DT1 != null)
                {
                    //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
                    GlobalForms.Form1.CreateCSVFile(DT1, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A.1 SUMMARY " + GlobalVariable.Date_ + ".csv");
                    GlobalVariable.MyADOConnection.Close();
                }
                if (DataTab1 != null)
                {
                    //CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\DAV_INDIVIDUAL.csv");
                    CreateCSVFile(DataTab1, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A.1 INDIVIDUAL " + GlobalVariable.Date_ + ".csv");
                }
                if (DT != null || GlobalForms.Form1.DataTab != null || DT1 != null || GlobalForms.Form1.DataTab1 != null)
                {
                    //GlobalForms.FrmLoading.Close();
                    if (MessageBox.Show("Export Complete, Do you want to open the file?", "CSV Export", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        System.Diagnostics.Process.Start(GlobalVariable.ExportPath);
                    }
                    //MessageBox.Show("Export Complete,", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void CreateCSVFile(DataTable dt, string strFilePath)
        {
            // Create the CSV file to which grid data will be exported.
            StreamWriter sw = new StreamWriter(strFilePath.Replace("/", ""), false);

            // First we will write the headers.
            //DataTable dt = m_dsProducts.Tables[0];
            int iColCount = dt.Columns.Count;

            for (int i = 0; i < iColCount; i++)
            {
                sw.Write(dt.Columns[i]);
                if (i < iColCount - 1)
                {
                    sw.Write(",");
                }
            }
            sw.Write(sw.NewLine);

            // Now write all the rows.
            foreach (DataRow dr in dt.Rows)
            {
                for (int i = 0; i < iColCount; i++)
                {
                    if (!Convert.IsDBNull(dr[i]))
                    {
                        string Hold = dr[i].ToString();
                        if (Hold.Contains(","))
                        {
                            Hold = "\"" + dr[i].ToString() + "\"";
                        }
                        sw.Write(Hold);

                        //sw.Write(dr[i].ToString().Replace(",",";"));
                        //sw.Write(dr[i].ToString());
                    }
                    if (i < iColCount - 1)
                    {
                        sw.Write(",");
                    }
                }
                sw.Write(sw.NewLine);
            }
            sw.Close();

        }

        private void ExportAMLA()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                GlobalForms.Form1.CSVDT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //cmd = new MySqlCommand("sp_DAV_AMLA", GlobalVariable.MyADOConnection);
                cmd = new MySqlCommand("sp_DAV_AMLA_View", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DT);

                if (DT != null)
                {
                    if (DT.Rows.Count > 0)
                    {
                        string HoldINST = DT.Rows[0][2].ToString();
                        GlobalVariable.AMLAINST = HoldINST.Substring(0, 6);
                        GlobalVariable.AMLAINSTDATE = DT.Rows[0][3].ToString();
                        //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
                        GlobalForms.Form1.CreateCSVFileAMLA(DT, GlobalVariable.ExportPath + "\\" + GlobalVariable.AMLAINST + "" + GlobalVariable.AMLAINSTDATE + "01.csv");
                        GlobalVariable.MyADOConnection.Close();
                       // GlobalForms.FrmLoading.Close();
                        if (MessageBox.Show("Export Complete, Do you want to open the file?", "CSV Export", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                        {
                            System.Diagnostics.Process.Start(GlobalVariable.ExportPath);
                        }
                    }
                }
                else
                {
                    MessageBox.Show("No Transactions to report for this date", "Transaction Info", MessageBoxButtons.OK,MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        void bg_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;
            if (GlobalVariable.Loading_Seq == 0)
            {
                Load_Client();
            }
            else if (GlobalVariable.Loading_Seq == 1)
            {
                ExportDAV();
            }
            else if (GlobalVariable.Loading_Seq == 2)
            {
                ExportAMLA();
            }
            else if (GlobalVariable.Loading_Seq == 3)
            {
                ExportCIC();
            }
            //Thread.Sleep(100);
            this.Close();
        }
    }
}
