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
    public partial class FrmOtherInfoCIC : Form
    {
        public FrmOtherInfoCIC()
        {
            InitializeComponent();
        }

        public void Search_Acct()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataTable CI = new DataTable();
                DataTable CN = new DataTable();
                string CICounter = "0";
                string CNCounter = "0";

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_Search_CI_Acct", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                da.SelectCommand = cmd;
                da.Fill(CI);

                //                GlobalVariable.MyADOConnection.Close();
                if (CI.Rows.Count >= 1)
                {
                    CICounter = CI.Rows[0][0].ToString();
                }

                if (CICounter == "1")
                {
                    CIBox.Enabled = true;
                    cboCIRole.Items.Clear();
                    cboCIRole.Items.Add("C - Co-Borrower");
                    cboCIRole.Items.Add("G - Guarantor");
                    cboCIRole.Text = "C - Co-Borrower";
                    Load_CIData();

                    if (dgCI.Rows.Count >= 1)
                    {
                        btnCIDel.Enabled = true;
                    }
                    else
                    {
                        btnCIDel.Enabled = false;
                    }
                }
                else
                {
                    CIBox.Enabled = false;
                }


                cmd.Parameters.Clear();
                cmd = new MySqlCommand("sp_Search_CN_Acct", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                da.SelectCommand = cmd;
                da.Fill(CN);

                //GlobalVariable.MyADOConnection.Close();
                if (CN.Rows.Count >= 1)
                {
                    CNCounter = CN.Rows[0][0].ToString();
                }

                if (CNCounter == "1")
                {
                    CNBox.Enabled = true;
                    cboCNRole.Items.Clear();
                    cboCNRole.Items.Add("C - Co-Borrower");
                    cboCNRole.Items.Add("G - Guarantor");
                    cboCNRole.Text = "C - Co-Borrower";
                    Load_CNData();

                    if (dgCN.Rows.Count >= 1)
                    {
                        btnCNDel.Enabled = true;
                    }
                    else
                    {
                        btnCNDel.Enabled = false;
                    }
                }
                else
                {
                    CNBox.Enabled = false;
                }

                if ((CI.Rows.Count < 1) && (CN.Rows.Count < 1))
                {
                    MessageBox.Show("Account number does not exist", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Clear_All();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            Search_Acct();
        }

        public void Load_CIData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataSet CI = new DataSet();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CI_Data_Load", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                da.SelectCommand = cmd;
                da.Fill(CI);

                GlobalVariable.MyADOConnection.Close();

                dgCI.DataSource = CI.Tables[0];
                //dgModule.Columns["MODULES"].ReadOnly = true;
                for (int a = 0; a < dgCI.Columns.Count; a++)
                {
                    dgCI.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Load_CNData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                DataSet CN = new DataSet();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CN_Data_Load", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                da.SelectCommand = cmd;
                da.Fill(CN);

                GlobalVariable.MyADOConnection.Close();

                dgCN.DataSource = CN.Tables[0];
                //dgModule.Columns["MODULES"].ReadOnly = true;
                for (int a = 0; a < dgCN.Columns.Count; a++)
                {
                    dgCN.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void FrmOtherInfoCIC_FormClosing(object sender, FormClosingEventArgs e)
        {
            //txtAccount.Text = "";
            //this.Close();
            Clear_All();
        }

        private void dgCN_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgCN.Rows.Count >= 1)
            {
                string Role_Val = "";
                txtCNProv.Text = dgCN.CurrentRow.Cells["Provider Subject NO."].Value.ToString();
                Role_Val = dgCN.CurrentRow.Cells["Role"].Value.ToString();
                if (Role_Val == "C")
                {
                    Role_Val = "C - Co-Borrower";
                }
                else
                {
                    Role_Val = "G - Guarantor";
                }
                cboCNRole.Text = Role_Val;
                txtCNName.Text = dgCN.CurrentRow.Cells["Subject Linked Name"].Value.ToString();
                txtCNNum.Text = dgCN.CurrentRow.Cells["Counter"].Value.ToString();

                btnCNAdd.Text = "Edit";
                //btnCNDel.Text = "Cancel";
            }
        }

        private void dgCI_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgCI.Rows.Count >= 1)
            {
                string Role_Val = "";
                txtCIProv.Text = dgCI.CurrentRow.Cells["Provider Subject NO."].Value.ToString();
                Role_Val = dgCI.CurrentRow.Cells["Role"].Value.ToString();
                if (Role_Val == "C")
                {
                    Role_Val = "C - Co-Borrower";
                }
                else
                {
                    Role_Val = "G - Guarantor";
                }
                cboCIRole.Text = Role_Val;
                txtCIName.Text = dgCI.CurrentRow.Cells["Subject Linked Name"].Value.ToString();

                txtCINum.Text = dgCI.CurrentRow.Cells["Counter"].Value.ToString();

                btnCIAdd.Text = "Edit";
                //btnCIDel.Text = "Cancel";
            }
        }

        public void Edit_CIData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                string CI_Role = "";
                int CI_Count = 0;

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CI_Data_Edit", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                cmd.Parameters.AddWithValue("Prov", txtCIProv.Text);
                if (cboCIRole.Text == "C - Co-Borrower")
                {
                    CI_Role = "C";
                }
                else
                {
                    CI_Role = "G";
                }
                CI_Count = dgCI.CurrentCell.RowIndex + 1;
                if (CI_Count == 0)
                {
                    CI_Count = 1;
                }
                cmd.Parameters.AddWithValue("Role_", CI_Role);
                cmd.Parameters.AddWithValue("Linked_", txtCIName.Text);
                cmd.Parameters.AddWithValue("Count_", Convert.ToInt32(txtCINum.Text));
                cmd.Parameters.AddWithValue("Count_Change", Convert.ToInt32(dgCI.CurrentRow.Cells["Counter"].Value.ToString()));
                cmd.ExecuteNonQuery();

                MessageBox.Show("CIC Installment Contract updated", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                Load_CIData();

                txtCIProv.Text = "";
                cboCIRole.Text = null;
                txtCIName.Text = "";
                txtCINum.Text = "";
                btnCIAdd.Text = "Add";
                btnCIDel.Text = "Delete";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Add_CIData()
        {
            try
            {
                if (txtCIProv.Text == "" || txtCIName.Text == "")
                {
                    MessageBox.Show("Provider Subject Number and Name of the Linked Subject are required!", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MySqlCommand cmd = new MySqlCommand();
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    GlobalVariable.DataSet = new DataSet();
                    string CI_Role = "";

                    GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                    GlobalVariable.MyADOConnection.Open();

                    cmd = new MySqlCommand("sp_CI_Data_Add", GlobalVariable.MyADOConnection);
                    cmd.CommandTimeout = 0;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                    cmd.Parameters.AddWithValue("Prov", txtCIProv.Text);
                    if (cboCIRole.Text == "C - Co-Borrower")
                    {
                        CI_Role = "C";
                    }
                    else
                    {
                        CI_Role = "G";
                    }

                    cmd.Parameters.AddWithValue("Role_", CI_Role);
                    cmd.Parameters.AddWithValue("Linked_", txtCIName.Text);
                    cmd.Parameters.AddWithValue("Count_", dgCI.Rows.Count + 1);
                    cmd.ExecuteNonQuery();

                    MessageBox.Show("CIC Installment Contract addded", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    Load_CIData();

                    if (dgCI.Rows.Count >= 1)
                    {
                        btnCIDel.Enabled = true;
                    }
                    else
                    {
                        btnCIDel.Enabled = false;
                    }

                    if (dgCI.Rows.Count == 6)
                    {
                        btnCIAdd.Enabled = false;
                    }
                    else
                    {
                        btnCIAdd.Enabled = true;
                    }

                    txtCIProv.Text = "";
                    cboCIRole.Text = null;
                    txtCIName.Text = "";
                    txtCINum.Text = "";
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Delete_CIData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                string CI_Role = "";

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CI_Data_Delete", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                cmd.Parameters.AddWithValue("Prov", txtCIProv.Text);
                if (cboCIRole.Text == "C - Co-Borrower")
                {
                    CI_Role = "C";
                }
                else
                {
                    CI_Role = "G";
                }

                cmd.Parameters.AddWithValue("Role_", CI_Role);
                cmd.Parameters.AddWithValue("Linked_", txtCIName.Text);
                cmd.Parameters.AddWithValue("Count_", Convert.ToInt32(txtCINum.Text));
                cmd.ExecuteNonQuery();

                MessageBox.Show("CIC Installment Contract deleted", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                Load_CIData();

                txtCIProv.Text = "";
                cboCIRole.Text = null;
                txtCIName.Text = "";
                txtCINum.Text = "";

                btnCIAdd.Text = "Add";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnCIAdd_Click(object sender, EventArgs e)
        {
            if (btnCIAdd.Text == "Edit")
            {
                Edit_CIData();
            }
            else
            {
                Add_CIData();
            }
        }

        private void btnCIDel_Click(object sender, EventArgs e)
        {
            //if (btnCIDel.Text == "Cancel")
            //{
            //    txtCIProv.Text = "";
            //    cboCIRole.Text = null;
            //    txtCIName.Text = "";
            //    txtCINum.Text = "";
            //    btnCIAdd.Text = "Add";
            //    btnCIDel.Text = "Delete";
            //}
            //else
            //{
            if (txtCIProv.Text != "" && txtCIName.Text != "" && txtCINum.Text != "")
            {
                Delete_CIData();
            }
            else
            {
                MessageBox.Show("Select data to be deleted", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            if (dgCI.Rows.Count < 1)
            {
                btnCIDel.Enabled = false;
            }
            else
            {
                btnCIDel.Enabled = true;
            }
 
            //}
        }

        public void Edit_CNData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                string CN_Role = "";
                int CN_Count = 0;

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CN_Data_Edit", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                cmd.Parameters.AddWithValue("Prov", txtCNProv.Text);
                if (cboCIRole.Text == "C - Co-Borrower")
                {
                    CN_Role = "C";
                }
                else
                {
                    CN_Role = "G";
                }
                CN_Count = dgCN.CurrentCell.RowIndex;
                if (CN_Count == 0)
                {
                    CN_Count = 1;
                }
                cmd.Parameters.AddWithValue("Role_", CN_Role);
                cmd.Parameters.AddWithValue("Linked_", txtCNName.Text);
                cmd.Parameters.AddWithValue("Count_", Convert.ToInt32(txtCNNum.Text));
                cmd.Parameters.AddWithValue("Count_Change", Convert.ToInt32(dgCN.CurrentRow.Cells["Counter"].Value.ToString()));
                cmd.ExecuteNonQuery();

                MessageBox.Show("CIC Non - Installment Contract updated", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                Load_CNData();

                txtCNProv.Text = "";
                cboCNRole.Text = null;
                txtCNName.Text = "";
                txtCNNum.Text = "";
                btnCNAdd.Text = "Add";
                btnCNDel.Text = "Delete";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Add_CNData()
        {
            try
            {
                if (txtCNProv.Text == "" || txtCNName.Text == "")
                {
                    MessageBox.Show("Provider Subject Number and Name of the Linked Subject are required!", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MySqlCommand cmd = new MySqlCommand();
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    GlobalVariable.DataSet = new DataSet();
                    string CN_Role = "";

                    GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                    GlobalVariable.MyADOConnection.Open();

                    cmd = new MySqlCommand("sp_CN_Data_Add", GlobalVariable.MyADOConnection);
                    cmd.CommandTimeout = 0;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                    cmd.Parameters.AddWithValue("Prov", txtCNProv.Text);
                    if (cboCIRole.Text == "C - Co-Borrower")
                    {
                        CN_Role = "C";
                    }
                    else
                    {
                        CN_Role = "G";
                    }

                    cmd.Parameters.AddWithValue("Role_", CN_Role);
                    cmd.Parameters.AddWithValue("Linked_", txtCNName.Text);
                    cmd.Parameters.AddWithValue("Count_", dgCN.Rows.Count + 1);
                    cmd.ExecuteNonQuery();

                    MessageBox.Show("CIC Non - Installment Contract addded", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    Load_CNData();

                    if (dgCN.Rows.Count >= 1)
                    {
                        btnCNDel.Enabled = true;
                    }
                    else
                    {
                        btnCNDel.Enabled = false;
                    }

                    if (dgCN.Rows.Count == 6)
                    {
                        btnCNAdd.Enabled = false;
                    }
                    else
                    {
                        btnCNAdd.Enabled = true;
                    }

                    txtCNProv.Text = "";
                    cboCNRole.Text = null;
                    txtCNName.Text = "";
                    txtCNNum.Text = "";
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Delete_CNData()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                GlobalVariable.DataSet = new DataSet();
                string CN_Role = "";

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_CN_Data_Delete", GlobalVariable.MyADOConnection);
                cmd.CommandTimeout = 0;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Acct", txtAccount.Text);
                cmd.Parameters.AddWithValue("Prov", txtCNProv.Text);
                if (cboCIRole.Text == "C - Co-Borrower")
                {
                    CN_Role = "C";
                }
                else
                {
                    CN_Role = "G";
                }

                cmd.Parameters.AddWithValue("Role_", CN_Role);
                cmd.Parameters.AddWithValue("Linked_", txtCNName.Text);
                cmd.Parameters.AddWithValue("Count_", Convert.ToInt32(txtCNNum.Text));
                cmd.ExecuteNonQuery();

                MessageBox.Show("CIC Non - Installment Contract deleted", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                Load_CNData();

                txtCNProv.Text = "";
                cboCNRole.Text = null;
                txtCNName.Text = "";
                txtCNNum.Text = "";

                btnCNAdd.Text = "Add";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnCNAdd_Click(object sender, EventArgs e)
        {
            if (btnCNAdd.Text == "Edit")
            {
                Edit_CNData();
            }
            else 
            {
                Add_CNData();
            }
        }

        private void btnCNDel_Click(object sender, EventArgs e)
        {
            //if (btnCNDel.Text == "Cancel")
            //{
            //    txtCNProv.Text = "";
            //    cboCNRole.Text = null;
            //    txtCNName.Text = "";
            //    txtCNNum.Text = "";
            //    btnCNAdd.Text = "Add";
            //    btnCNDel.Text = "Delete";
            //}
            //else
            //{
            if (txtCNProv.Text != "" && txtCNName.Text != "" && txtCNNum.Text != "")
            {
                Delete_CNData();
            }
            else
            {
                MessageBox.Show("Select data to be deleted", "CIC Other Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            if (dgCN.Rows.Count < 1)
            {
                btnCNDel.Enabled = false;
            }
            else
            {
                btnCNDel.Enabled = true;
            }
            //}
        }

        private void btnCNAdd_TextChanged(object sender, EventArgs e)
        {
            if (btnCNAdd.Text == "Edit")
            {
                txtCNNum.Enabled = true;
            }
            else
            {
                txtCNNum.Enabled = false;
            }
        }

        private void btnCIAdd_TextChanged(object sender, EventArgs e)
        {
            if (btnCIAdd.Text == "Edit")
            {
                txtCINum.Enabled = true;
            }
            else
            {
                txtCINum.Enabled = false;
            }
        }

        private void btnCIClear_Click(object sender, EventArgs e)
        {
            txtCIProv.Text = "";
            cboCIRole.Text = null;
            txtCIName.Text = "";
            txtCINum.Text = "";
            btnCIAdd.Text = "Add";
            btnCIDel.Text = "Delete";
        }

        private void btnCNClear_Click(object sender, EventArgs e)
        {
            txtCNProv.Text = "";
            cboCNRole.Text = null;
            txtCNName.Text = "";
            txtCNNum.Text = "";
            btnCNAdd.Text = "Add";
            btnCNDel.Text = "Delete";
        }

        private void FrmOtherInfoCIC_Load(object sender, EventArgs e)
        {
            dgCI.DataSource = null;
            dgCN.DataSource = null;
            txtAccount.Text = "";
            CIBox.Enabled = false;
            CNBox.Enabled = false;
        }

        public void Clear_All()
        {
            try
            {
                dgCI.DataSource = null;
                txtCIProv.Text = "";
                cboCIRole.Text = null;
                txtCIName.Text = "";
                txtCINum.Text = "";

                dgCN.DataSource = null;
                txtCNProv.Text = "";
                cboCNRole.Text = null;
                txtCNName.Text = "";
                txtCNNum.Text = "";

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
