using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using CrystalDecisions.CrystalReports.Engine;
using System.ComponentModel;

namespace DAV
{
    public partial class frmReports : Form
    {
        public frmReports()
        {
            InitializeComponent();
        }

        ReportDocument cryRpt = new ReportDocument();

        private crBranchSummary Branch_Summry;
        private crIndividualSummary Ind_Summary;
        private crIndividual Individual;
        private crSched_Dep_Size_Est_Ins_Dep Est_Ins_Dep;
        private crDepMasterW_OName Dep_MasterW_OName;
        private crTopDepositor TopDepositor;
        private crBranchSummaryNoData Branch_Summary_NoData;
        private crIndividualSummaryNoData Ind_Summary_NoData;
        private crSched_Dep_Size_Est_Ins_DepNoData Est_Ins_Dep_NoData;
        private crDepMasterW_ONameNoData Dep_MasterW_OName_NoData;
        private crTopDepositorNoData TopDepositor_NoData;
        private crIndividualNoData Individual_NoData;
        private crDepositTypeSummary Deposit_Type_Summary;
        private AMLAListTrans AMLA_List_Trans;
        private AMLAMultiLegged AMLA_Multi_Legged;
        private AMLACIFRisk AMLA_CIF_Risk;
        //string MySQLQuery = "";
        private void frmReports_Load(object sender, EventArgs e)
        {
            if (GlobalVariable.with_DAV == 1)
            {
                detailedToolStripMenuItem.Enabled = true;
                branchToolStripMenuItem.Enabled = true;
                iToolStripMenuItem.Enabled = true;
                depositTypeToolStripMenuItem.Enabled = true;
                scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Enabled = true;
                depositMasterListToolStripMenuItem.Enabled = true;
                topDepositorToolStripMenuItem.Enabled = true;
            }
            else
            {
                detailedToolStripMenuItem.Enabled = false;
                branchToolStripMenuItem.Enabled = false;
                iToolStripMenuItem.Enabled = false;
                depositTypeToolStripMenuItem.Enabled = false;
                scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Enabled = false;
                depositMasterListToolStripMenuItem.Enabled = false;
                topDepositorToolStripMenuItem.Enabled = false;
            }
            if (GlobalVariable.with_AMLA == 1)
            {
                aMLAToolStripMenuItem.Enabled = true;
                listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Enabled = true;
                listingOfCIFByToolStripMenuItem.Enabled = true;
            }
            else
            {
                aMLAToolStripMenuItem.Enabled = false;
                listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Enabled = false;
                listingOfCIFByToolStripMenuItem.Enabled = false;
            }
            if (GlobalVariable.with_CIC == 1)
            {
            }

            if (GlobalVariable.RptType == "&Branch Summary")
            {
                Summary_Crystal();
            }
            else if (GlobalVariable.RptType == "Individual &Summary")
            {
                Client_Summary_Crystal();
            }
            else if (GlobalVariable.RptType == "&Individual Report")
            {
                Client_Individual_Crystal();
            }
        }

        public void Summary_Crystal()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Branch_Summry = new crBranchSummary();
                Branch_Summary_NoData = new crBranchSummaryNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();
                //MySQLQuery = "";
                //MySQLQuery = "call Date_Summary ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();
                cmd = new MySqlCommand("sp_dav_Date_Summary", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    Branch_Summary_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Branch_Summary_NoData;
                }
                else
                {
                    Branch_Summry.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Branch_Summry;
                }

                frmReports rep = new frmReports();
                rep.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Client_Summary_Crystal()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Ind_Summary = new crIndividualSummary();
                Ind_Summary_NoData = new crIndividualSummaryNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call Client_Summary_Crystal ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_dav_Client_Summary_Crystal", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    Ind_Summary_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Ind_Summary_NoData;
                }
                else
                {
                    Ind_Summary.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Ind_Summary;
                }

                DT = DS.Tables["TABLE"];

                GlobalForms.Form1.DataTab = new DataTable();
                GlobalForms.Form1.DataTab = DS.Tables["TABLE"];

                //GlobalForms.Form1.CreateCSVFile(DT, "d:\\Depositor_Summary.csv");
                

                frmReports rep = new frmReports();
                rep.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void Client_Individual_Crystal()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Individual = new crIndividual();
                Individual_NoData = new crIndividualNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();
                string DateHold = GlobalVariable.Date_;
                //MySQLQuery = "";
                //MySQLQuery = "call Client_Individual ('" + DateHold + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_dav_Client_Individual", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", DateHold);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    Individual_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Individual_NoData;
                }
                else
                {
                    Individual.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Individual;
                }

                DT = DS.Tables["TABLE"];

                //GlobalForms.Form1.CreateCSVFile(DT, "d:\\Depositor_Report.csv");
                

                frmReports rep = new frmReports();
                rep.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void branchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //GlobalVariable.RptType = branchToolStripMenuItem.Text.Trim();
            //BackgroundWorker bg = new BackgroundWorker();
            //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            //bg.RunWorkerAsync();
            crViewer.ReportSource = null;
            Summary_Crystal();
        }

        private void iToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //GlobalVariable.RptType = iToolStripMenuItem.Text.Trim();
            //BackgroundWorker bg = new BackgroundWorker();
            //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            //bg.RunWorkerAsync();
            crViewer.ReportSource = null;
            Client_Summary_Crystal();
        }

        private void individualToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //GlobalVariable.RptType = individualToolStripMenuItem.Text.Trim();
            //BackgroundWorker bg = new BackgroundWorker();
            //bg.DoWork += new DoWorkEventHandler(bg_DoWork);
            //bg.RunWorkerAsync();
            crViewer.ReportSource = null;
            Client_Individual_Crystal();
        }

        private void frmReports_FormClosing(object sender, FormClosingEventArgs e)
        {
            crViewer.ReportSource = null;
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

        //void bg_DoWork(object sender, DoWorkEventArgs e)
        //{
        //    BackgroundWorker worker = sender as BackgroundWorker;
        //    crViewer.ReportSource = null;
        //    if (GlobalVariable.RptType == "&Branch")
        //    {
        //        Summary_Crystal();
        //        //frmReports rep = new frmReports();
        //        //rep.crViewer.ReportSource = Branch_Summry;
        //        //rep.Dispose();

        //        this.crViewer = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
        //        crViewer.ReportSource = Branch_Summry;
        //    }
        //    else if (GlobalVariable.RptType == "&Individual")
        //    {
        //        Client_Summary_Crystal();
        //        //crViewer.ReportSource = Ind_Summary;
        //    }
        //    else if (GlobalVariable.RptType == "I&ndividual")
        //    {
        //        Client_Individual_Crystal();
        //        //crViewer.ReportSource = Individual;
        //    }
        //    //Thread.Sleep(100);
        //    //this.Close();
        //}

        //private void LoadRep()
        //{
        //    if (GlobalVariable.RptType == "&Branch")
        //    {
        //        crViewer.ReportSource = Branch_Summry;
        //    }
        //    else if (GlobalVariable.RptType == "&Individual")
        //    {
        //        crViewer.ReportSource = Ind_Summary;
        //    }
        //    else if (GlobalVariable.RptType == "I&ndividual")
        //    {
        //        crViewer.ReportSource = Individual;
        //    }
        //}

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            crViewer.ReportSource = null;
            Sched_Dep_Size_Est_Ins_Dep();
        }

        public void Sched_Dep_Size_Est_Ins_Dep()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Est_Ins_Dep = new crSched_Dep_Size_Est_Ins_Dep();
                Est_Ins_Dep_NoData = new crSched_Dep_Size_Est_Ins_DepNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call sp_Sched_Dep_Size_Est_Ins_Dep ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_dav_Sched_Dep_Size_Est_Ins_Dep", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    Est_Ins_Dep_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Est_Ins_Dep_NoData;
                }
                else
                {
                    Est_Ins_Dep.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Est_Ins_Dep;
                }
                frmReports rep = new frmReports();
                rep.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void depositMasterListToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Dep_MasterW_OName = new crDepMasterW_OName();
            //crViewer.ReportSource = Dep_MasterW_OName;

            //frmReports rep = new frmReports();
            //rep.Dispose();
            crViewer.ReportSource = null;
            Dep_Master_W_O_Name();
        }

        public void Dep_Master_W_O_Name()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Dep_MasterW_OName = new crDepMasterW_OName();
                Dep_MasterW_OName_NoData = new crDepMasterW_ONameNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call sp_Dep_Master_WO_Dep_Name ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_dav_Dep_Master_WO_Dep_Name", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    Dep_MasterW_OName_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Dep_MasterW_OName_NoData;
                }
                else
                {
                    Dep_MasterW_OName.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Dep_MasterW_OName;
                }

                frmReports rep = new frmReports();
                rep.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void topDepositorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //TopDepositor = new crTopDepositor();
            //crViewer.ReportSource = TopDepositor;

            //frmReports rep = new frmReports();
            //rep.Dispose();
            crViewer.ReportSource = null;
            Top_Depositor();
        }

        public void Top_Depositor()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                TopDepositor = new crTopDepositor();
                TopDepositor_NoData = new crTopDepositorNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call sp_Top_Depositor ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_dav_Top_Depositor", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    TopDepositor_NoData.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = TopDepositor_NoData;
                }
                else
                {
                    TopDepositor.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = TopDepositor;
                }

                frmReports rep = new frmReports();
                rep.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void depositTypeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            crViewer.ReportSource = null;
            Deposits_Type();
        }

        public void Deposits_Type()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                Deposit_Type_Summary = new crDepositTypeSummary();
                //TopDepositor = new crTopDepositor();
                //TopDepositor_NoData = new crTopDepositorNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call sp_Top_Depositor ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_DAV_Deposit_Type_Summary", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                if (DS.Tables[0].Rows.Count == 0)
                {
                    //TopDepositor_NoData.SetDataSource(DS.Tables[0]);
                    //GlobalVariable.MyADOConnection.Close();
                    //crViewer.ReportSource = TopDepositor_NoData;
                }
                else
                {
                    Deposit_Type_Summary.SetDataSource(DS.Tables[0]);
                    GlobalVariable.MyADOConnection.Close();
                    crViewer.ReportSource = Deposit_Type_Summary;
                }

                frmReports rep = new frmReports();
                rep.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void aMLAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            crViewer.ReportSource = null;
            AMLAListTrans();
        }

        public void AMLAListTrans()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                AMLA_List_Trans = new AMLAListTrans();
                //Ind_Summary_NoData = new crIndividualSummaryNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call Client_Summary_Crystal ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_DAV_AMLA_Trans_List", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                //if (DS.Tables[0].Rows.Count == 0)
                //{
                //    Ind_Summary_NoData.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary_NoData;
                //}
                //else
                //{
                //    Ind_Summary.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary;
                //}

                AMLA_List_Trans.SetDataSource(DS.Tables[0]);
                GlobalVariable.MyADOConnection.Close();
                crViewer.ReportSource = AMLA_List_Trans;

                DT = DS.Tables["TABLE"];

                GlobalForms.Form1.DataTab = new DataTable();
                GlobalForms.Form1.DataTab = DS.Tables["TABLE"];

                //GlobalForms.Form1.CreateCSVFile(DT, "d:\\Depositor_Summary.csv");


                frmReports rep = new frmReports();
                rep.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void listingOfMultiLeggedTransactionAMLAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            crViewer.ReportSource = null;
            AMLAMultiLegged();
        }

        public void AMLAMultiLegged()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                AMLA_Multi_Legged = new AMLAMultiLegged();
                //Ind_Summary_NoData = new crIndividualSummaryNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call Client_Summary_Crystal ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_DAV_AMLA_Multi_Legged", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                //if (DS.Tables[0].Rows.Count == 0)
                //{
                //    Ind_Summary_NoData.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary_NoData;
                //}
                //else
                //{
                //    Ind_Summary.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary;
                //}

                AMLA_Multi_Legged.SetDataSource(DS.Tables[0]);
                GlobalVariable.MyADOConnection.Close();
                crViewer.ReportSource = AMLA_Multi_Legged;

                DT = DS.Tables["TABLE"];

                GlobalForms.Form1.DataTab = new DataTable();
                GlobalForms.Form1.DataTab = DS.Tables["TABLE"];

                //GlobalForms.Form1.CreateCSVFile(DT, "d:\\Depositor_Summary.csv");


                frmReports rep = new frmReports();
                rep.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void listingOfCIFByToolStripMenuItem_Click(object sender, EventArgs e)
        {
            crViewer.ReportSource = null;
            AMLACIFRisk();
        }

        public void AMLACIFRisk()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter();
                DataSet DS = new DataSet();
                DataTable DT = new DataTable();
                AMLA_CIF_Risk = new AMLACIFRisk();
                //Ind_Summary_NoData = new crIndividualSummaryNoData();

                GlobalVariable.MyADOConnection = new MySqlConnection(GlobalVariable.dbConnectionString);
                GlobalVariable.MyADOConnection.Open();

                //MySQLQuery = "";
                //MySQLQuery = "call Client_Summary_Crystal ('" + GlobalVariable.Date_ + "'); ";

                //MySqlCommand cmd = new MySqlCommand(MySQLQuery, GlobalVariable.MyADOConnection);
                //cmd.ExecuteScalar();

                cmd = new MySqlCommand("sp_DAV_AMLA_CIF_Risk", GlobalVariable.MyADOConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Date_", GlobalVariable.Date_);
                cmd.CommandTimeout = 0;
                da.SelectCommand = cmd;
                da.Fill(DS, "TABLE");

                //if (DS.Tables[0].Rows.Count == 0)
                //{
                //    Ind_Summary_NoData.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary_NoData;
                //}
                //else
                //{
                //    Ind_Summary.SetDataSource(DS.Tables[0]);
                //    GlobalVariable.MyADOConnection.Close();
                //    crViewer.ReportSource = Ind_Summary;
                //}

                AMLA_CIF_Risk.SetDataSource(DS.Tables[0]);
                GlobalVariable.MyADOConnection.Close();
                crViewer.ReportSource = AMLA_CIF_Risk;

                DT = DS.Tables["TABLE"];

                GlobalForms.Form1.DataTab = new DataTable();
                GlobalForms.Form1.DataTab = DS.Tables["TABLE"];

                //GlobalForms.Form1.CreateCSVFile(DT, "d:\\Depositor_Summary.csv");


                frmReports rep = new frmReports();
                rep.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
