using MySql.Data.MySqlClient;
using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Windows.Forms;

namespace DAV
{
    public partial class FrmCICExportLoading : Form
    {
        public FrmCICExportLoading()
        {
            InitializeComponent();
        }

        private void FrmCICExportLoading_Load(object sender, EventArgs e)
        {
            pictureBox.BackColor = Color.Transparent;
            this.TransparencyKey = Color.Red;
            this.BackColor = Color.Red;
            BackgroundWorker bg = new BackgroundWorker();
            bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            bg.RunWorkerAsync();
        }

        void bg_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;
            ExportCIC();

            this.Close();
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

                //GlobalForms.FrmLoading.ShowDialog();

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
                string path = GlobalVariable.ExportPath + "\\" + GlobalVariable.Provider_Code + "_CSDF_" + dt.ToString("yyyyddMMHHmmss", CultureInfo.InvariantCulture) + ".txt";
                // string path = @"D:\DAV EXPORT FILES\OT999999_CSDF_20150108163002.txt";

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
                //// This text is always added, making the file longer over time
                //// if it is not deleted.
                //string appendText = "This is extra text" + Environment.NewLine;
                //File.AppendAllText(path, appendText, Encoding.UTF8);

                //// Open the file to read from.
                //string readText = File.ReadAllText(path);
                //Console.WriteLine(readText);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
