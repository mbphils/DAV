using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace DAV
{
    public partial class FrmProviderCodeCIC : Form
    {
        public FrmProviderCodeCIC()
        {
            InitializeComponent();
        }

        private void FrmProviderCodeCIC_Load(object sender, EventArgs e)
        {
            Load_ProviderCode();
        }

        public void Load_ProviderCode()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable PC = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Load_ProviderCode", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(PC);

                GlobalVariable.MyADOConnection.Close();
                if (PC.Rows.Count > 0)
                {
                    GlobalVariable.Provider_Code = PC.Rows[0][0].ToString();
                    txtProvider.Text = GlobalVariable.Provider_Code;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Update_ProviderCode()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Update_ProviderCode", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("ProvCode", txtProvider.Text);
                cmd.ExecuteNonQuery();

                GlobalVariable.Provider_Code = txtProvider.Text;
                MessageBox.Show("Provider Code updated", "Provider Code", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalForms.FrmProviderCodeCIC.Close();
                GlobalVariable.MyADOConnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Update_ProviderCode();
        }
    }
}
