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

namespace DAV
{
    public partial class FrmHO : Form
    {
        public FrmHO()
        {
            InitializeComponent();
        }

        private void FrmHO_Load(object sender, EventArgs e)
        {
            Load_HO();
        }

        public void Load_HO()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                //DataSet DS = new DataSet();
                GlobalVariable.DataSet = new DataSet();
                DataTable HO = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //string Load = "call load_Client ('" + GlobalVariable.Date_ + "'); ";

                cmd = new MySqlCommand("sp_Load_HO", GlobalVariable.MyADOConnection);
                //MySqlCommand cmd = new MySqlCommand(Load, GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                //cmd.ExecuteScalar();
                //cmd.ExecuteNonQuery();
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(HO);

                GlobalVariable.MyADOConnection.Close();
                txtSYSID.Text = HO.Rows[0][0].ToString();
                txtORGNAME.Text = HO.Rows[0][1].ToString();
                txtINSTCODE.Text = HO.Rows[0][2].ToString();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Update_HO", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("SYSID", txtSYSID.Text);
                cmd.Parameters.AddWithValue("ORGNAME", txtORGNAME.Text);
                cmd.Parameters.AddWithValue("INSTCODE", txtINSTCODE.Text);
                cmd.ExecuteNonQuery();

                MessageBox.Show("Head Office updated", "Head Office", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalForms.FrmHO.Close();
                GlobalVariable.MyADOConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
