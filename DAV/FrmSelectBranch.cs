using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace DAV
{
    public partial class FrmSelectBranch : Form
    {
        public FrmSelectBranch()
        {
            InitializeComponent();
        }

        private void FrmSelectBranch_Load(object sender, EventArgs e)
        {

        }

        public void LoadBranch()
        {
            //try
            //{
            //    MySqlCommand cmd = new MySqlCommand();
            //    MySqlDataAdapter da = new MySqlDataAdapter();
            //    DataSet DS = new DataSet();
            //    DataTable DT = new DataTable();

            //    GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
            //    GlobalVariable.MyADOConnection.Open();
            //    cmd = new MySqlCommand("sp_dav_Date_Summary", GlobalVariable.MyADOConnection);
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
            //    cmd.CommandTimeout = 0;
            //    da.SelectCommand = cmd;
            //    da.Fill(DS, "TABLE");

            //    if (DS.Tables[0].Rows.Count == 0)
            //    {
            //        Branch_Summary_NoData.SetDataSource(DS.Tables[0]);
            //        GlobalVariable.MyADOConnection.Close();
            //        crViewer.ReportSource = Branch_Summary_NoData;
            //    }
            //    else
            //    {
            //        Branch_Summry.SetDataSource(DS.Tables[0]);
            //        GlobalVariable.MyADOConnection.Close();
            //        crViewer.ReportSource = Branch_Summry;
            //    }

            //    frmReports rep = new frmReports();
            //    rep.Dispose();

            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message);
            //}
        }
    }
}
