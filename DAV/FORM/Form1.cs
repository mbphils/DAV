using MySql.Data.MySqlClient;
using System;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.IO;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using System.Globalization;

namespace DAV
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public DataSet DataSet;
        public DataTable DataTab;
        public DataTable DataTab1;
        public DataTable CSVDT;
        

        //Thread TRD;
        
        //public void Load_Client()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        cmd = new MySqlCommand("Load_Client", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
        //        da.SelectCommand = cmd;
        //        da.Fill(DS);
        //        GlobalVariable.MyADOConnection.Close();
        //        //Action DoCrossThreadUIWork = () =>
        //        //{
        //            dgClient.DataSource = DS.Tables[0];

        //            dgClient.Columns[0].Visible = false;
        //            dgClient.Columns[1].Visible = false;
        //            dgClient.Columns[4].Visible = false;
        //            dgClient.Columns[5].Visible = false;
        //            dgClient.Columns[6].Visible = false;
        //            dgClient.Columns[7].Visible = false;
        //            dgClient.Columns[8].Visible = false;
        //        //};

        //        for (int a = 0; a < dgClient.Columns.Count; a++)
        //        {
        //            dgClient.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
        //        }
        //        //dgClient.Columns[3].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        //public void Add_DOTRN()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();
                
        //        cmd = new MySqlCommand("Add_DOTRN", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
        //        cmd.ExecuteNonQuery();
        //        GlobalVariable.MyADOConnection.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        //public void Add_CID()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        cmd = new MySqlCommand("Add_ID", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.ExecuteNonQuery();
        //        GlobalVariable.MyADOConnection.Close();

        //        ThreadDone = false;
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        public void Client_Search()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_dav_Client_Search", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("Client_", GlobalVariable.Client_Search);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS);
                GlobalVariable.MyADOConnection.Close();
                dgClient.DataSource = DS.Tables[0];

                dgClient.Columns[2].Visible = false;
                dgClient.Columns[3].Visible = false;
                dgClient.Columns[4].Visible = false;
                dgClient.Columns[5].Visible = false;
                //dgClient.Columns[6].Visible = false;
                //dgClient.Columns[7].Visible = false;
                //dgClient.Columns[8].Visible = false;

                dgClient.Columns[dgClient.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                for (int a = 0; a < dgClient.Columns.Count; a++ )
                {
                    dgClient.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        #region Client_Summary
        public void Client_Summary()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_dav_Client_Summary", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("Client_ID", GlobalVariable.Depo_ID);
                cmd.CommandTimeout = 0;
                //cmd.Parameters.AddWithValue("Client_BR", GlobalVariable.Client_BR);
                da.SelectCommand = cmd;
                da.Fill(DS);
                GlobalVariable.MyADOConnection.Close();
                dgSummary.DataSource = DS.Tables[0];

                dgSummary.Columns[0].Visible = false;
                dgSummary.Columns[4].HeaderText = "Balance as of (" + GlobalVariable.Date_ + ")";
                dgSummary.Columns[4].DefaultCellStyle.Format = "N2";

                for (int a = 0; a < dgSummary.Columns.Count; a++)
                {
                    dgSummary.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }
                dgSummary.Columns[dgSummary.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                da = new MySqlDataAdapter();
                DS = new DataSet();
                cmd = new MySqlCommand("sp_dav_Client_Search_Individual", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("Client_ID", GlobalVariable.Depo_ID);
                cmd.CommandTimeout = 0;
                //cmd.Parameters.AddWithValue("Client_BR", GlobalVariable.Client_BR);
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLES");
                
                GlobalVariable.MyADOConnection.Close();
                dgIndividual.DataSource = DS.Tables[0];
                //DT = DS.Tables["TABLES"];

                dgIndividual.Columns["Avail_Bal"].DefaultCellStyle.Format = "N2";
                DataTab = DS.Tables["Tables"];
                GlobalForms.FrmLoading.DataTab = DS.Tables["Tables"];

                da = new MySqlDataAdapter();
                DS = new DataSet();
                cmd = new MySqlCommand("sp_DAV_Client_Search_Individual_A", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.Parameters.AddWithValue("Client_ID", GlobalVariable.Depo_ID);
                cmd.CommandTimeout = 0;
                //cmd.Parameters.AddWithValue("Client_BR", GlobalVariable.Client_BR);
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLES");

                DataTab1 = DS.Tables["Tables"];
                GlobalForms.FrmLoading.DataTab1 = DS.Tables["Tables"];
                //CreateCSVFile(DT, "d:\\csvData.csv");
                for (int a = 0; a < dgIndividual.Columns.Count; a++)
                {
                    dgIndividual.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        #endregion

        private void dtDate_ValueChanged(object sender, EventArgs e)
        {
            //GlobalVariable.Date_ = dtDate.Text;
            //Summary();
            //Load_Client();
        }
        
        public void Clear()
        {
            dgSummary.DataSource = null;
            dgIndividual.DataSource = null;
            lblName.Text = "";
            lblGender.Text = "";
            lblDOB.Text = "";
            lblADDR.Text = "";
        }

        private void dgClient_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dgClient.Rows.Count > 0)
            {
                lblName.Text = dgClient.CurrentRow.Cells["Client Name"].Value.ToString();
                lblGender.Text = dgClient.CurrentRow.Cells["Sex"].Value.ToString();
                lblDOB.Text = dgClient.CurrentRow.Cells["Date of Birth"].Value.ToString();
                lblADDR.Text = dgClient.CurrentRow.Cells["Address"].Value.ToString();
                GlobalVariable.Depo_ID = dgClient.CurrentRow.Cells["Depo_ID"].Value.ToString();
                //GlobalVariable.Client_ID = dgClient.CurrentRow.Cells["CID"].Value.ToString();
                //GlobalVariable.Client_BR = dgClient.CurrentRow.Cells["SYSID"].Value.ToString();

                Client_Summary();
                //Client_Search_Individual();
            }
        }

        private void txtSearchName_TextChanged(object sender, EventArgs e)
        {
            //if (dgClient.Rows.Count > 0)
            //{
            //    GlobalVariable.Client_Search = txtSearchName.Text;
            //    Client_Search();
            //}
        }

        private void txtSearchName_Click(object sender, EventArgs e)
        {
            txtSearchName.Text = "";
            txtSearchName.Focus();
        }

        private void btnClient_Search_Click(object sender, EventArgs e)
        {
            GlobalVariable.Client_Search = txtSearchName.Text;
            Client_Search();
            Clear();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to exit?", "Exit", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Close(); 
            }
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == Keys.Escape)
                if (MessageBox.Show("Are you sure you want to exit?", "Exit", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    this.Close();
                }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        private void msBRSummary_Click(object sender, EventArgs e)
        {
            GlobalVariable.RptType = msBRSummary.Text.Trim();
            //Summary_Crystal();
            GlobalForms.frmReports.ShowDialog();
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
            //CreateCSVFile(DataTab, "d:\\csvData.csv");
            ExcelExport();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            DateTime thisDate = Convert.ToDateTime( dtDate.Text);
            GlobalVariable.Date_ = thisDate.ToString("MM/dd/yyyy"); // dtDate.Text.ToString("mm/dd/yyyy");
            GlobalVariable.Loading_Seq = 0;
            GlobalForms.FrmLoading.ShowDialog();
            dgClient.DataSource = GlobalVariable.DataSet.Tables[0];
            dgClient.Columns[2].Visible = false;
            dgClient.Columns[3].Visible = false;
            dgClient.Columns[4].Visible = false;
            dgClient.Columns[5].Visible = false;
            //dgClient.Columns[6].Visible = false;
            //dgClient.Columns[7].Visible = false;
            //dgClient.Columns[8].Visible = false;
            
            for (int a = 0; a < dgClient.Columns.Count; a++)
            {
                dgClient.Columns[a].SortMode = DataGridViewColumnSortMode.NotSortable;
            }
            //dgClient.Columns["Date of Birth"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgClient.Refresh();

            Clear();
            txtSearchName.Text = "Type Name here:";
            if (GlobalVariable.DataSet.Tables[0].Rows.Count == 0)
            {
                MessageBox.Show("Date selected is not yet uploaded.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void msIndividSummary_Click(object sender, EventArgs e)
        {
            GlobalVariable.RptType = msIndividSummary.Text.Trim();
            //Client_Summary_Crystal();
            GlobalForms.frmReports.ShowDialog();
        }

        #region Export Grid to Excel
        private void ExcelExport()
        {
            Excel.Application xlApp;
            Excel.Workbook xlWorkBook;
            Excel.Worksheet xlWorkSheet;
            object misValue = System.Reflection.Missing.Value;

            xlApp = new Excel.Application();
            xlWorkBook = xlApp.Workbooks.Add(misValue);
            xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);
            //int i = 1;
            //int j = 0;

            for (int a = 1; a < dgIndividual.Columns.Count + 1; a++)
            {
                xlWorkSheet.Cells[1, a] = dgIndividual.Columns[a - 1].HeaderText;
            }

            for (int i = 0; i <= dgIndividual.RowCount - 1; i++)
            {
                for (int j = 0; j <= dgIndividual.ColumnCount - 1; j++)
                {
                    DataGridViewCell cell = dgIndividual[j, i];
                    xlWorkSheet.Cells[i + 2, j + 1] = cell.Value;
                }
            }

            xlWorkBook.SaveAs("D:\\DAV EXPORT FILES\\DAV_INDIVIDUAL.xls", Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
            xlWorkBook.Close(true, misValue, misValue);
            xlApp.Quit();

            releaseObject(xlWorkSheet);
            releaseObject(xlWorkBook);
            releaseObject(xlApp);
        }

        private void releaseObject(object obj)
        {
            try
            {
                System.Runtime.InteropServices.Marshal.ReleaseComObject(obj);
                obj = null;
            }
            catch (Exception ex)
            {
                obj = null;
                MessageBox.Show("Exception Occured while releasing object " + ex.ToString());
            }
            finally
            {
                GC.Collect();
            }
        }
        #endregion

        #region CreateCSVFile Export Grid to CSV
        public void CreateCSVFile(DataTable dt, string strFilePath)
        {
            // Create the CSV file to which grid data will be exported.
            StreamWriter sw = new StreamWriter(strFilePath.Replace("/",""), false);

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

        public void CreateCSVFileAMLA(DataTable dt, string strFilePath)
        {
            // Create the CSV file to which grid data will be exported.
            StreamWriter sw = new StreamWriter(strFilePath.Replace("/", ""), false);

            // First we will write the headers.
            //DataTable dt = m_dsProducts.Tables[0];
            int iColCount = dt.Columns.Count;

            //for (int i = 0; i < iColCount; i++)
            //{
            //    sw.Write(dt.Columns[i]);
            //    if (i < iColCount - 1)
            //    {
            //        sw.Write(",");
            //    }
            //}
            //sw.Write(sw.NewLine);

            // Now write all the rows.
            //foreach (DataRow dr in dt.Rows)
            int Counter = 0;
            int RowCounter = 0;
            for (int a = 0; a < dt.Rows.Count; a++)
            {
                for (int i = 0; i < iColCount; i++)
                {
                    if (!Convert.IsDBNull(dt.Rows[a][i]))
                    {
                        if (a == 0)
                        {
                            if (i <= 6)
                            {
                                RowCounter++;
                                string Hold = dt.Rows[a][i].ToString();
                                if (Hold.Contains(","))
                                {
                                    //Hold = "\"" + dt.Rows[a][i].ToString() + "\"";
                                    Hold = dt.Rows[a][i].ToString().Replace(", "," ").Replace(","," ");
                                }
                                sw.Write(Hold);
                            }
                            else
                            {
                                if (Counter == 0)
                                {
                                    sw.Write(sw.NewLine);
                                }
                                string Hold = dt.Rows[a][i].ToString();
                                if (Hold.Contains(","))
                                {
                                    //Hold = "\"" + dt.Rows[a][i].ToString().Replace(", ", " ").Replace(",", " ") + "\"";
                                    Hold = dt.Rows[a][i].ToString().Replace(", ", " ").Replace(",", " ");
                                }
                                sw.Write(Hold);
                                Counter = 1;
                            }
                        }
                        else
                        {
                            if (dt.Rows[a - 1][2].ToString() == dt.Rows[a][2].ToString())
                            {
                                if ((i + 7) >= iColCount)
                                {
                                }
                                else
                                {
                                    string Hold = dt.Rows[a][i + 7].ToString();
                                    if (Hold.Contains(","))
                                    {
                                        //Hold = "\"" + dt.Rows[a][i + 7].ToString().Replace(", ", " ").Replace(",", " ") + "\"";
                                        Hold = dt.Rows[a][i + 7].ToString().Replace(", ", " ").Replace(",", " ");
                                    }
                                    sw.Write(Hold);
                                    Counter = 1;
                                }
                            }
                            else
                            {
                                if (i <= 6)
                                {
                                    RowCounter++;
                                    string Hold = dt.Rows[a][i].ToString();
                                    if (Hold.Contains(","))
                                    {
                                        //Hold = "\"" + dt.Rows[a][i].ToString() + "\"";
                                        Hold = dt.Rows[a][i].ToString().Replace(", ", " ").Replace(",", " ");
                                    }
                                    sw.Write(Hold);
                                }
                                else
                                {
                                    if (Counter == 0)
                                    {
                                        sw.Write(sw.NewLine);
                                    }
                                    string Hold = dt.Rows[a][i].ToString();
                                    if (Hold.Contains(","))
                                    {
                                        //Hold = "\"" + dt.Rows[a][i].ToString().Replace(", ", " ").Replace(",", " ") + "\"";
                                        Hold = dt.Rows[a][i].ToString().Replace(", ", " ").Replace(",", " ");
                                    }
                                    sw.Write(Hold);
                                    Counter = 1;
                                }
                            }
                        }

                        //sw.Write(dr[i].ToString().Replace(",",";"));
                        //sw.Write(dr[i].ToString());
                    }
                    if (i < iColCount - 1)
                    {
                        sw.Write(",");
                    }
                }
                sw.Write(sw.NewLine);
                Counter = 0;
            }
            //sw.Write(sw.NewLine);

            decimal GetSum = 0;
            for (int a = 0; a < dt.Rows.Count; a++)
            {
                GetSum = GetSum + Convert.ToDecimal(dt.Rows[a][13].ToString());
            }

            for (int x = 0; x < iColCount; x++)
            {
                if (x == 0)
                {
                    sw.Write("T");
                    sw.Write(",");
                }
                else if (x == 1)
                {
                    int HoldRows = dt.Rows.Count + (RowCounter / 7);
                    //string HoldSum = "= sum(G2:G" + (HoldRows) + ")";
                    string HoldSum = GetSum.ToString(); ;
                    sw.Write(HoldSum);
                    sw.Write(",");
                }
                else if (x == 2)
                {
                    sw.Write(dt.Rows.Count);
                }
                else
                {
                    x = iColCount;
                }
            }
            sw.Close();

                    //try
                    //{
                    //    Excel.Application xlApp;
                    //    Excel.Workbook xlWorkBook;
                    //    Excel.Worksheet xlWorkSheet;
                    //    object misValue = System.Reflection.Missing.Value;

                    //    xlApp = new Excel.Application();
                    //    xlWorkBook = xlApp.Workbooks.Add(misValue);
                    //    xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);

                    //    xlApp.Visible = true;

                    //    //// column headings
                    //    //for (int i = 0; i < dt.Columns.Count; i++)
                    //    //{
                    //    //    xlWorkSheet.Cells.Cells[1, (i + 1)] = dt.Columns[i].ColumnName;
                    //    //}

                    //    // rows
                    //    int HoldRow = 0;
                    //    int HoldRow1 = 0;
                    //    int HoldRow2 = 0;
                    //    int HoldCol = 0;
                    //    int HoldCol2 = 0;
                    //    int HoldCol3 = 0;
                    //    string Hold = "";
                    //    for (int i = 0; i < dt.Rows.Count; i++)
                    //    {
                    //        for (int j = 0; j < dt.Columns.Count; j++)
                    //        {
                    //            if (i < dt.Rows.Count)
                    //            {
                    //                if (i == 0)
                    //                {
                    //                    if (j <= 6)
                    //                    {
                    //                        //xlWorkSheet.Cells.Cells[(i + 1), (j + 1)] = dt.Rows[i][j];
                    //                        Hold = dt.Rows[i][j].ToString();
                    //                        if (Hold.Contains(","))
                    //                        {
                    //                            Hold = "\"" + dt.Rows[i][j].ToString() + "\"";
                    //                        }
                    //                        xlWorkSheet.Cells.Cells[(i + 1), (j + 1)] = Hold;
                    //                    }
                    //                    else
                    //                    {
                    //                        HoldRow = 2 + i;
                    //                        HoldCol = HoldCol + 1;
                    //                        //xlWorkSheet.Cells.Cells[(HoldRow), (HoldCol)] = dt.Rows[i][j];

                    //                        Hold = dt.Rows[i][j].ToString();
                    //                        if (Hold.Contains(","))
                    //                        {
                    //                            Hold = "\"" + dt.Rows[i][j].ToString() + "\"";
                    //                        }
                    //                        xlWorkSheet.Cells.Cells[(HoldRow), (HoldCol)] = Hold;
                    //                    }
                    //                }
                    //                else
                    //                {
                    //                    if (dt.Rows[i - 1][2].ToString() == dt.Rows[i][2].ToString())
                    //                    {
                    //                        if (j <= 6)
                    //                        {
                    //                            //xlWorkSheet.Cells.Cells[(i + 1), (j + 1)] = dt.Rows[i][j];
                    //                        }
                    //                        else
                    //                        {
                    //                            HoldRow1 = HoldRow + i;
                    //                            HoldCol2 = HoldCol2 + 1;
                    //                            //xlWorkSheet.Cells.Cells[(HoldRow1), (HoldCol2)] = dt.Rows[i][j];

                    //                            Hold = dt.Rows[i][j].ToString();
                    //                            if (Hold.Contains(","))
                    //                            {
                    //                                Hold = "\"" + dt.Rows[i][j].ToString() + "\"";
                    //                            }
                    //                            xlWorkSheet.Cells.Cells[(HoldRow1), (HoldCol2)] = Hold;
                    //                        }
                    //                    }
                    //                    else
                    //                    {
                    //                        if (j <= 6)
                    //                        {
                    //                            //xlWorkSheet.Cells.Cells[(HoldRow1 + 1), (j + 1)] = dt.Rows[i][j];

                    //                            Hold = dt.Rows[i][j].ToString();
                    //                            if (Hold.Contains(","))
                    //                            {
                    //                                Hold = "\"" + dt.Rows[i][j].ToString() + "\"";
                    //                            }
                    //                            xlWorkSheet.Cells.Cells[(HoldRow1 + 1), (j + 1)] = Hold;
                    //                        }
                    //                        else
                    //                        {
                    //                            HoldRow2 = HoldRow1 + i;
                    //                            HoldCol3 = HoldCol3 + 1;
                    //                            //xlWorkSheet.Cells.Cells[(HoldRow2), (HoldCol3)] = dt.Rows[i][j];

                    //                            Hold = dt.Rows[i][j].ToString();
                    //                            if (Hold.Contains(","))
                    //                            {
                    //                                Hold = "\"" + dt.Rows[i][j].ToString() + "\"";
                    //                            }
                    //                            xlWorkSheet.Cells.Cells[(HoldRow2), (HoldCol3)] = Hold;
                    //                        }
                    //                    }
                    //                }
                    //            }
                    //        }
                    //        if (HoldRow1 != 0)
                    //        {
                    //            if (dt.Rows[i - 1][2].ToString() != dt.Rows[i][2].ToString())
                    //            {
                    //                HoldRow = 1 + i;
                    //                HoldCol2 = 0;
                    //                HoldCol3 = 0;
                    //            }
                    //            else 
                    //            {
                    //                HoldCol2 = 0;
                    //                HoldCol3 = 0;
                    //            }
                    //        }
                    //    }

                    //    xlWorkSheet.Cells.Cells[(HoldRow1 + 1), (1)] = "T";
                    //    string HoldSum = "= sum(G2:G" + HoldRow1 + ")";
                    //    xlWorkSheet.Cells.Cells[(HoldRow1 + 1), (2)] = HoldSum;
                    //    xlWorkSheet.Cells.Cells[(HoldRow1 + 1), (3)] = dt.Rows.Count;
                    //    xlWorkBook.SaveAs("D:\\DAV EXPORT FILES\\AMLA.csv", Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
                    //    xlWorkBook.Close(true, misValue, misValue);
                    //    xlApp.Quit();

                    //    releaseObject(xlWorkSheet);
                    //    releaseObject(xlWorkBook);
                    //    releaseObject(xlApp);
                    //}
                    //catch (Exception ex)
                    //{
                    //    throw new Exception("ExportToExcel: \n" + ex.Message);
                    //}

        }
        #endregion

        private void msIndividualRep_Click(object sender, EventArgs e)
        {
            GlobalVariable.RptType = msIndividualRep.Text.Trim();
            //Client_Summary_Crystal();
            GlobalForms.frmReports.ShowDialog();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
           // GlobalVariable.ExportPath = ConfigurationManager.AppSettings["ExportPath"];
            GlobalVariable.dbConnectionString = ConfigurationManager.AppSettings["MySQLConnection"];
            GlobalMethod.ConnectToDb(GlobalVariable.dbConnectionString);
            if (GlobalVariable.ConnectDB != true)
            {
                GlobalForms.FrmConnection.ShowDialog();
            }

            Control.CheckForIllegalCrossThreadCalls = false;
            //GlobalVariable.ExportPath = ConfigurationManager.AppSettings["ExportPath"].Replace("\\\\","\\");
            Check_Module();
            Load_Provider();
            //if (Directory.Exists(GlobalVariable.ExportPath))
            //{
            //}
            //else
            //{
            //    Directory.CreateDirectory(Application.StartupPath+"\\DAV EXPORT FILES");
            //}
        }

        private void Load_Provider()
        {
            try
            {
                GlobalForms.FrmProviderCodeCIC.Load_ProviderCode();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        

        private const int WM_NCLBUTTONDBLCLK = 0x00A3; 
        //Remove double click on title bar to minimize and maximize form
        protected override void WndProc(ref Message m)
        {
            if (m.Msg == WM_NCLBUTTONDBLCLK)
            {
                m.Result = IntPtr.Zero;
                return;
            }
            base.WndProc(ref m);
        }

        private void msReports_Click(object sender, EventArgs e)
        {
            GlobalForms.frmReports.ShowDialog();
        }

        private void cSVToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalVariable.ExporthSource = 1;
            if (Directory.Exists(GlobalVariable.ExportPath))
            {
                if (dgClient.Rows.Count > 0)
                {
                    //BackgroundWorker bg = new BackgroundWorker();
                    //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
                    //bg.RunWorkerAsync();

                    GlobalVariable.Loading_Seq = 1;
                    GlobalForms.FrmLoading.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Select date first", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                MessageBox.Show("Set path for CSV Export first.", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalForms.FrmExportPath.ShowDialog();
                //Directory.CreateDirectory(Application.StartupPath + "\\DAV EXPORT FILES");
            }
        }

        void bg_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;
            if (GlobalVariable.ExporthSource == 1)
            {
                //ExportDAVCSV();
            }
            else if (GlobalVariable.ExporthSource == 2)
            {
                //ExportAMLACSV();
            }
            else
            {
                GlobalForms.FrmCICExportLoading.ShowDialog();
                //ExportCICTEXT();
            }
            //Thread.Sleep(100);
        }

        private void ExportCICTEXT()
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
                        if (a == (CIC_Get.Rows.Count -1 ))
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

        //private void ExportAMLACSV()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();
        //        CSVDT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        //cmd = new MySqlCommand("sp_DAV_AMLA", GlobalVariable.MyADOConnection);
        //        cmd = new MySqlCommand("sp_DAV_AMLA_View", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        string DateHold = GlobalVariable.Date_;
        //        cmd.Parameters.AddWithValue("Date_", DateHold);
        //        cmd.CommandTimeout = 0;
        //        da.SelectCommand = cmd;
        //        da.Fill(DT);

        //        if (DT != null)
        //        {
        //            if (DT.Rows.Count > 0)
        //            {
        //                string HoldINST = DT.Rows[0][2].ToString();
        //                GlobalVariable.AMLAINST = HoldINST.Substring(0, 6);
        //                GlobalVariable.AMLAINSTDATE = DT.Rows[0][3].ToString();
        //                //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
        //                GlobalForms.Form1.CreateCSVFileAMLA(DT, GlobalVariable.ExportPath + "\\" + GlobalVariable.AMLAINST + "" + GlobalVariable.AMLAINSTDATE + "01.csv");
        //                GlobalVariable.MyADOConnection.Close();

        //                if (MessageBox.Show("Export Complete, Do you want to open the file?", "CSV Export", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
        //                {
        //                    System.Diagnostics.Process.Start(GlobalVariable.ExportPath);
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        //private void ExportDAVCSV()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();
        //        CSVDT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        cmd = new MySqlCommand("sp_dav_Client_Individual", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        string DateHold = GlobalVariable.Date_;
        //        cmd.Parameters.AddWithValue("Date_", DateHold);
        //        cmd.CommandTimeout = 0;
        //        da.SelectCommand = cmd;
        //        da.Fill(DT);

        //        cmd = new MySqlCommand();
        //        da = new MySqlDataAdapter();
        //        //DataSet DS = new DataSet();
        //        DataTable DT1 = new DataTable();
        //        CSVDT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        cmd = new MySqlCommand("sp_dav_Client_Individual_A", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        DateHold = GlobalVariable.Date_;
        //        cmd.Parameters.AddWithValue("Date_", DateHold);
        //        cmd.CommandTimeout = 0;
        //        da.SelectCommand = cmd;
        //        da.Fill(DT1);

        //        if (DT != null)
        //        {
        //            //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
        //            GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A SUMMARY " + GlobalVariable.Date_ + ".csv");
        //            GlobalVariable.MyADOConnection.Close();
        //        }
        //        if (DataTab != null)
        //        {
        //            //CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\DAV_INDIVIDUAL.csv");
        //            CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A INDIVIDUAL " + GlobalVariable.Date_ + ".csv");
        //        }
        //        if (DT1 != null)
        //        {
        //            //GlobalForms.Form1.CreateCSVFile(DT, GlobalVariable.ExportPath + "\\DAV_SUMMARY.csv");
        //            GlobalForms.Form1.CreateCSVFile(DT1, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A.1 SUMMARY " + GlobalVariable.Date_ + ".csv");
        //            GlobalVariable.MyADOConnection.Close();
        //        }
        //        if (DataTab1 != null)
        //        {
        //            //CreateCSVFile(DataTab, GlobalVariable.ExportPath + "\\DAV_INDIVIDUAL.csv");
        //            CreateCSVFile(DataTab1, GlobalVariable.ExportPath + "\\RI-2015-01-Annex-A.1 INDIVIDUAL " + GlobalVariable.Date_ + ".csv");
        //        }
        //        if (DT != null || DataTab != null || DT1 != null || DataTab1 != null)
        //        {
        //            if (MessageBox.Show("Export Complete, Do you want to open the file?", "CSV Export", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
        //            {
        //                System.Diagnostics.Process.Start(GlobalVariable.ExportPath);
        //            }
        //            //MessageBox.Show("Export Complete,", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        private void excelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //EXCEL();
            if (dgIndividual.Rows.Count > 0)
            {
                ExcelExport();
                MessageBox.Show("Export Complete", "Excel Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //private void EXCEL()
        //{
        //    try
        //    {
        //        MySqlCommand cmd = new MySqlCommand();
        //        MySqlDataAdapter da = new MySqlDataAdapter();
        //        DataSet DS = new DataSet();
        //        DataTable DT = new DataTable();

        //        GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
        //        GlobalVariable.MyADOConnection.Open();

        //        cmd = new MySqlCommand("Client_Individual", GlobalVariable.MyADOConnection);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        string DateHold = GlobalVariable.Date_;
        //        cmd.Parameters.AddWithValue("Date_", DateHold);
        //        da.SelectCommand = cmd;
        //        da.Fill(DT);
        //        GlobalVariable.MyADOConnection.Close();

        //        if (DT != null)
        //        {
        //            try
        //            {
        //                Excel.Application xlApp;
        //                Excel.Workbook xlWorkBook;
        //                Excel.Worksheet xlWorkSheet;
        //                object misValue = System.Reflection.Missing.Value;

        //                xlApp = new Excel.Application();
        //                xlWorkBook = xlApp.Workbooks.Add(misValue);
        //                xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);

        //                // column headings
        //                for (int i = 0; i < DT.Columns.Count; i++)
        //                {
        //                    xlWorkSheet.Cells.Cells[1, (i + 1)] = DT.Columns[i].ColumnName;
        //                }

        //                // rows
        //                for (int i = 0; i < DT.Rows.Count; i++)
        //                {
        //                    // to do: format datetime values before printing
        //                    for (int j = 0; j < DT.Columns.Count; j++)
        //                    {
        //                        xlWorkSheet.Cells.Cells[(i + 2), (j + 1)] = DT.Rows[i][j];
        //                    }
        //                }

        //                xlWorkBook.SaveAs("D:\\DAV EXPORT FILES\\DAV_SUMMARY.xls", Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
        //                xlWorkBook.Close(true, misValue, misValue);
        //                xlApp.Quit();

        //                releaseObject(xlWorkSheet);
        //                releaseObject(xlWorkBook);
        //                releaseObject(xlApp);
        //            }
        //            catch (Exception ex)
        //            {
        //                throw new Exception("ExportToExcel: \n" + ex.Message);
        //            }
        //        }
        //        if (dgIndividual.Rows.Count > 0)
        //        {
        //            ExcelExport();
        //        }
        //        if (DT != null || dgIndividual.Rows.Count > 0)
        //        {
        //            MessageBox.Show("Export Complete", "Excel Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //}

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void databaseConnectionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmConnection.ShowDialog();
        }

        private void exportFilesToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void exportPathToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmExportPath.ShowDialog();
        }

        private void databaseSourceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmDBSource.ShowDialog();
        }

        private void dAVToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //GlobalVariable.ExporthSource = 1;
            //if (Directory.Exists(GlobalVariable.ExportPath))
            //{
            //    if (dgClient.Rows.Count > 0)
            //    {
            //        BackgroundWorker bg = new BackgroundWorker();
            //        bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            //        bg.RunWorkerAsync();
            //    }
            //    else
            //    {
            //        MessageBox.Show("Select date first", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    }
            //}
            //else
            //{
            //    MessageBox.Show("Set path for CSV Export first.", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    GlobalForms.FrmExportPath.ShowDialog();
            //    //Directory.CreateDirectory(Application.StartupPath + "\\DAV EXPORT FILES");
            //}
        }

        private void aMLAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //GlobalVariable.ExporthSource = 2;
            //if (Directory.Exists(GlobalVariable.ExportPath))
            //{
            //    if (dgClient.Rows.Count > 0)
            //    {
            //        BackgroundWorker bg = new BackgroundWorker();
            //        bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            //        bg.RunWorkerAsync();
            //    }
            //    else
            //    {
            //        MessageBox.Show("Select date first", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    }
            //}
            //else
            //{
            //    MessageBox.Show("Set path for CSV Export first.", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    GlobalForms.FrmExportPath.ShowDialog();
            //    //Directory.CreateDirectory(Application.StartupPath + "\\DAV EXPORT FILES");
            //}
        }

        private void deleteCurrentDateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //if (MessageBox.Show("Are you sure you want to delete selected date?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            //{
            //    Delete_Date();
            //}
            
        }

        public void Delete_Date_DAV()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_DAV_Delete_Date_DAV", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                cmd.ExecuteNonQuery();

                dgClient.DataSource = null;
                Clear();
                MessageBox.Show("Selected date successfully deleted", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalVariable.MyADOConnection.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Delete_Date_AMLA()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_DAV_Delete_Date_AMLA", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                cmd.ExecuteNonQuery();

                dgClient.DataSource = null;
                Clear();
                MessageBox.Show("Selected date successfully deleted", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalVariable.MyADOConnection.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Delete_Date_CIC_Data()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_DAV_Delete_Date_CIC_Data", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                cmd.ExecuteNonQuery();

                dgClient.DataSource = null;
                Clear();
                MessageBox.Show("Selected date successfully deleted", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalVariable.MyADOConnection.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Delete_Date_CIC_Other()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                cmd = new MySqlCommand("sp_DAV_Delete_Date_CIC_OtherInfo", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                string DateHold = GlobalVariable.Date_;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                cmd.ExecuteNonQuery();

                dgClient.DataSource = null;
                Clear();
                MessageBox.Show("Selected date successfully deleted", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalVariable.MyADOConnection.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void institutionCodeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.frmMbWinInstCode.ShowDialog();
        }

        private void exportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalVariable.ExporthSource = 3;

            if (GlobalVariable.Provider_Code != "" && GlobalVariable.Provider_Code != "00000")
            {
                if (Directory.Exists(GlobalVariable.ExportPath))
                {
                    if (dgClient.Rows.Count > 0)
                    {
                        //BackgroundWorker bg = new BackgroundWorker();
                        //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
                        //bg.RunWorkerAsync();

                        GlobalVariable.Loading_Seq = 3;
                        GlobalForms.FrmLoading.ShowDialog();
                        //GlobalForms.FrmCICExportLoading.ShowDialog();
                    }
                    else
                    {
                        MessageBox.Show("Select date first", "CIC Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("Set path for CIC Export first.", "CIC Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    FrmExportPath FrmExportPath = new FrmExportPath();
                    FrmExportPath.Text = "CIC Export Path";
                    FrmExportPath.ShowDialog();
                    //Directory.CreateDirectory(Application.StartupPath + "\\DAV EXPORT FILES");
                }
            }
            else
            {
                MessageBox.Show("Set provider Code first", "CIC Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void AMLACSVToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            GlobalVariable.ExporthSource = 2;
            if (Directory.Exists(GlobalVariable.ExportPath))
            {
                if (dgClient.Rows.Count > 0)
                {
                    //BackgroundWorker bg = new BackgroundWorker();
                    //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
                    //bg.RunWorkerAsync();

                    GlobalVariable.Loading_Seq = 2;
                    GlobalForms.FrmLoading.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Select date first", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                MessageBox.Show("Set path for CSV Export first.", "CSV Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
                GlobalForms.FrmExportPath.ShowDialog();
                //Directory.CreateDirectory(Application.StartupPath + "\\DAV EXPORT FILES");
            }
        }

        private void moduleCheckerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Load_Module_Checker();
            GlobalForms.FrmModuleChecker.ShowDialog();
            Load_Module();
        }

        private void Load_Module()
        {
            try
            {
                if (GlobalVariable.with_DAV == 1)
                {
                    exportFilesToolStripMenuItem.Enabled = true;
                    dAVToolStripMenuItem1.Enabled = true;
                    groupBox2.Visible = true;
                    groupBox1.Visible = true;
                    tabControl1.Visible = true;
                }
                else
                {
                    exportFilesToolStripMenuItem.Enabled = false;
                    dAVToolStripMenuItem1.Enabled = false;
                    groupBox2.Visible = false;
                    groupBox1.Visible = false;
                    tabControl1.Visible = false;
                }
                if (GlobalVariable.with_AMLA == 1)
                {
                    aMLAToolStripMenuItem1.Enabled = true;
                    aMLAToolStripMenuItem2.Enabled = true;
                }
                else
                {
                    aMLAToolStripMenuItem1.Enabled = false;
                    aMLAToolStripMenuItem2.Enabled = false;
                }
                if (GlobalVariable.with_CIC == 1)
                {
                    cICToolStripMenuItem.Enabled = true;
                    cICToolStripMenuItem1.Enabled = true;
                }
                else
                {
                    cICToolStripMenuItem.Enabled = false;
                    cICToolStripMenuItem1.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Check_Module()
        {
            try
            {
                GlobalVariable.Load_Module_Status = 1;
                GlobalForms.FrmModuleChecker.Load_HO();
                GlobalForms.FrmModuleChecker.Load_Module_Checker();
                GlobalForms.FrmModuleChecker.Activate_Key();
                Load_Module();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void assignHeadOfficeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmHO.ShowDialog();
        }

        private void addOtherInfoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmOtherInfoCIC.ShowDialog();
        }

        private void providerCodeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GlobalForms.FrmProviderCodeCIC.ShowDialog();
        }

        private void dAVToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to delete selected date?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Delete_Date_DAV();
            }
        }

        private void aMLAToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to delete selected date?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Delete_Date_AMLA();
            }
        }

        private void dATAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to delete selected date?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Delete_Date_CIC_Data();
            }
        }

        private void otherInfomToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to delete selected date?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Delete_Date_CIC_Other();
            }
        }

        //private void Thread()
        //{
        //    //i = 0;
        //    //lblTimer.Text = "0.00";
        //    //timer1.Start();
        //    //ThreadDone = false;
        //    //pb1.Show();
        //    this.TRD = new Thread(new ThreadStart(this.InvokeLookUp));
        //    this.TRD.IsBackground = true;
        //    this.TRD.Start();
        //}

        //private void InvokeLookUp()
        //{
        //    if (InvokeRequired)
        //        Invoke(new MethodInvoker(LookUp));
        //}

        //private void LookUp()
        //{
        //    GlobalVariable.Date_ = dtDate.Text;
        //    ////Summary();
        //    Load_Client();
        //    ////Add_CID();
        //    ////Add_DOTRN();
        //    Clear();
        //    txtSearchName.Text = "Type Name here:";
        //    //ThreadDone = true;
        //    //pbLoad.Visible = true;
        //    WorkDone();
        //}

        //private void timer1_Tick(object sender, EventArgs e)
        //{
        //    i = i + .1;
        //    lblTimer.Text = i.ToString("N");
        //    if (ThreadDone == true)
        //    { 
        //        //WorkDone();
        //        timer1.Stop();
        //    }
        //    else if (i == 0)
        //    {
        //        i = 0;
        //    }
        //}

        //private void WorkDone()
        //{
        //    //timer1.Stop();
        //    TRD.Abort();
        //    //pb1.Hide();
        //    //MessageBox.Show("", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //}

        //void bg_DoWork(object sender, DoWorkEventArgs e)
        //{
        //    BackgroundWorker worker = sender as BackgroundWorker;
        //    GlobalVariable.Date_ = dtDate.Text;
        //    Load_Client();
        //    Clear();
        //    txtSearchName.Text = "Type Name here:";
        //    pbLoad.Visible = false;
        //}

    }
}
