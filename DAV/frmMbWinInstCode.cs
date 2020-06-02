using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DAV
{
    public partial class frmMbWinInstCode : Form
    {
        public frmMbWinInstCode()
        {
            InitializeComponent();
        }

        private void frmMbWinInstCode_Load(object sender, EventArgs e)
        {
            Load_Institution();
        }

        public void Load_Institution()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_View_Inst", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS);
                GlobalVariable.MyADOConnection.Close();
                dgInst.DataSource = DS.Tables[0];
                
                //dgInst.Columns[dgInst.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                for (int a = 0; a < dgInst.Columns.Count - 1; a++)
                {
                    dgInst.Columns[a].ReadOnly = true;
                    dgInst.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }
                dgInst.Columns[3].SortMode = DataGridViewColumnSortMode.NotSortable;
                dgInst.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                if (DS.Tables[0].Rows.Count == 0)
                {
                    btnSave.Enabled = false;
                }
                else
                {
                    btnSave.Enabled = true;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                String SYSID, Code_;

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                for (int a = 0; a < dgInst.Rows.Count; a++)
                {
                    SYSID = dgInst.Rows[a].Cells[1].Value.ToString();
                    Code_ = dgInst.Rows[a].Cells[3].Value.ToString();

                    cmd = new MySqlCommand("sp_Update_Inst", GlobalVariable.MyADOConnection);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("SYSID", SYSID);
                    cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                    cmd.Parameters.AddWithValue("Code_", Code_);
                    cmd.CommandTimeout = 0;
                    cmd.ExecuteNonQuery();
                }

                MessageBox.Show("Institution code updated", "Institution Update", MessageBoxButtons.OK, MessageBoxIcon.Information);
                //dgInst.DataSource = null;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
