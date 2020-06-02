namespace DAV
{
    partial class frmReports
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmReports));
            this.crViewer = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.branchSummayToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.branchToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.iToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.depositTypeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.depositMasterListToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.topDepositorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aMLAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listingOfCIFByToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.detailedToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.individualToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // crViewer
            // 
            this.crViewer.ActiveViewIndex = -1;
            this.crViewer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crViewer.Cursor = System.Windows.Forms.Cursors.Default;
            this.crViewer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crViewer.Location = new System.Drawing.Point(0, 24);
            this.crViewer.Name = "crViewer";
            this.crViewer.ShowCloseButton = false;
            this.crViewer.ShowCopyButton = false;
            this.crViewer.ShowLogo = false;
            this.crViewer.ShowTextSearchButton = false;
            this.crViewer.Size = new System.Drawing.Size(751, 380);
            this.crViewer.TabIndex = 0;
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackgroundImage = global::DAV.Properties.Resources.backgroudoriginal;
            this.menuStrip1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.branchSummayToolStripMenuItem,
            this.detailedToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(751, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "&File";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(92, 22);
            this.exitToolStripMenuItem.Text = "E&xit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // branchSummayToolStripMenuItem
            // 
            this.branchSummayToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.branchToolStripMenuItem,
            this.iToolStripMenuItem,
            this.depositTypeToolStripMenuItem,
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem,
            this.depositMasterListToolStripMenuItem,
            this.topDepositorToolStripMenuItem,
            this.aMLAToolStripMenuItem,
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem,
            this.listingOfCIFByToolStripMenuItem});
            this.branchSummayToolStripMenuItem.Name = "branchSummayToolStripMenuItem";
            this.branchSummayToolStripMenuItem.Size = new System.Drawing.Size(70, 20);
            this.branchSummayToolStripMenuItem.Text = "&Summary";
            // 
            // branchToolStripMenuItem
            // 
            this.branchToolStripMenuItem.Enabled = false;
            this.branchToolStripMenuItem.Name = "branchToolStripMenuItem";
            this.branchToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.branchToolStripMenuItem.Text = "&Branch";
            this.branchToolStripMenuItem.Click += new System.EventHandler(this.branchToolStripMenuItem_Click);
            // 
            // iToolStripMenuItem
            // 
            this.iToolStripMenuItem.Enabled = false;
            this.iToolStripMenuItem.Name = "iToolStripMenuItem";
            this.iToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.iToolStripMenuItem.Text = "&Individual";
            this.iToolStripMenuItem.Click += new System.EventHandler(this.iToolStripMenuItem_Click);
            // 
            // depositTypeToolStripMenuItem
            // 
            this.depositTypeToolStripMenuItem.Enabled = false;
            this.depositTypeToolStripMenuItem.Name = "depositTypeToolStripMenuItem";
            this.depositTypeToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.depositTypeToolStripMenuItem.Text = "Deposit Type";
            this.depositTypeToolStripMenuItem.Click += new System.EventHandler(this.depositTypeToolStripMenuItem_Click);
            // 
            // scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem
            // 
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Enabled = false;
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Name = "scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem";
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Text = "Sc&hedule of Deposits as to Size and Estimated Insured Deposits";
            this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem.Click += new System.EventHandler(this.scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem_Click);
            // 
            // depositMasterListToolStripMenuItem
            // 
            this.depositMasterListToolStripMenuItem.Enabled = false;
            this.depositMasterListToolStripMenuItem.Name = "depositMasterListToolStripMenuItem";
            this.depositMasterListToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.depositMasterListToolStripMenuItem.Text = "Deposit Master List without Depositor\'s Name";
            this.depositMasterListToolStripMenuItem.Click += new System.EventHandler(this.depositMasterListToolStripMenuItem_Click);
            // 
            // topDepositorToolStripMenuItem
            // 
            this.topDepositorToolStripMenuItem.Enabled = false;
            this.topDepositorToolStripMenuItem.Name = "topDepositorToolStripMenuItem";
            this.topDepositorToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.topDepositorToolStripMenuItem.Text = "Top Depositor";
            this.topDepositorToolStripMenuItem.Click += new System.EventHandler(this.topDepositorToolStripMenuItem_Click);
            // 
            // aMLAToolStripMenuItem
            // 
            this.aMLAToolStripMenuItem.Enabled = false;
            this.aMLAToolStripMenuItem.Name = "aMLAToolStripMenuItem";
            this.aMLAToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.aMLAToolStripMenuItem.Text = "List of Transaction - AMLA ";
            this.aMLAToolStripMenuItem.Click += new System.EventHandler(this.aMLAToolStripMenuItem_Click);
            // 
            // listingOfMultiLeggedTransactionAMLAToolStripMenuItem
            // 
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Enabled = false;
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Name = "listingOfMultiLeggedTransactionAMLAToolStripMenuItem";
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Text = "Listing of Multi Legged Transaction - AMLA";
            this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem.Click += new System.EventHandler(this.listingOfMultiLeggedTransactionAMLAToolStripMenuItem_Click);
            // 
            // listingOfCIFByToolStripMenuItem
            // 
            this.listingOfCIFByToolStripMenuItem.Enabled = false;
            this.listingOfCIFByToolStripMenuItem.Name = "listingOfCIFByToolStripMenuItem";
            this.listingOfCIFByToolStripMenuItem.Size = new System.Drawing.Size(403, 22);
            this.listingOfCIFByToolStripMenuItem.Text = "Listing of CIF by Risk Profile - AMLA";
            this.listingOfCIFByToolStripMenuItem.Click += new System.EventHandler(this.listingOfCIFByToolStripMenuItem_Click);
            // 
            // detailedToolStripMenuItem
            // 
            this.detailedToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.individualToolStripMenuItem});
            this.detailedToolStripMenuItem.Enabled = false;
            this.detailedToolStripMenuItem.Name = "detailedToolStripMenuItem";
            this.detailedToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.detailedToolStripMenuItem.Text = "&Detailed";
            // 
            // individualToolStripMenuItem
            // 
            this.individualToolStripMenuItem.Name = "individualToolStripMenuItem";
            this.individualToolStripMenuItem.Size = new System.Drawing.Size(126, 22);
            this.individualToolStripMenuItem.Text = "I&ndividual";
            this.individualToolStripMenuItem.Click += new System.EventHandler(this.individualToolStripMenuItem_Click);
            // 
            // frmReports
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::DAV.Properties.Resources.back11;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(751, 404);
            this.Controls.Add(this.crViewer);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmReports";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Report";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmReports_FormClosing);
            this.Load += new System.EventHandler(this.frmReports_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public CrystalDecisions.Windows.Forms.CrystalReportViewer crViewer;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem branchSummayToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem branchToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem iToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem detailedToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem individualToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem scheduleOfDepositsAsToSizeAndEstimatedInsuredDepositsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem depositMasterListToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem topDepositorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem depositTypeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aMLAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem listingOfMultiLeggedTransactionAMLAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem listingOfCIFByToolStripMenuItem;


    }
}