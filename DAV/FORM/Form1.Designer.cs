namespace DAV
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.btnOK = new System.Windows.Forms.Button();
            this.dtDate = new System.Windows.Forms.DateTimePicker();
            this.label7 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnClient_Search = new System.Windows.Forms.Button();
            this.dgClient = new System.Windows.Forms.DataGridView();
            this.txtSearchName = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblADDR = new System.Windows.Forms.Label();
            this.lblDOB = new System.Windows.Forms.Label();
            this.lblGender = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dgSummary = new System.Windows.Forms.DataGridView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dgIndividual = new System.Windows.Forms.DataGridView();
            this.btnExit = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.settingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.assignHeadOfficeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.databaseConnectionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.databaseSourceToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deleteCurrentDateToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dAVToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.aMLAToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.cICToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.dATAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.otherInfomToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exportPathToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.institutionCodeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.moduleCheckerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.msReports = new System.Windows.Forms.ToolStripMenuItem();
            this.msBRSummary = new System.Windows.Forms.ToolStripMenuItem();
            this.msIndividSummary = new System.Windows.Forms.ToolStripMenuItem();
            this.msIndividualRep = new System.Windows.Forms.ToolStripMenuItem();
            this.exportFilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cSVToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dAVToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aMLAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.excelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aMLAToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.AMLACSVToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.cICToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.providerCodeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addOtherInfoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exportToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnExport = new System.Windows.Forms.Button();
            this.pb1 = new System.Windows.Forms.ProgressBar();
            this.lblTimer = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgClient)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgSummary)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgIndividual)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(110, 29);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "Select Date";
            this.btnOK.UseVisualStyleBackColor = true;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // dtDate
            // 
            this.dtDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtDate.Location = new System.Drawing.Point(19, 31);
            this.dtDate.Name = "dtDate";
            this.dtDate.Size = new System.Drawing.Size(85, 20);
            this.dtDate.TabIndex = 1;
            this.dtDate.ValueChanged += new System.EventHandler(this.dtDate_ValueChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(188, 33);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(73, 15);
            this.label7.TabIndex = 11;
            this.label7.Text = "Select Date:";
            this.label7.Visible = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox2.BackColor = System.Drawing.Color.Transparent;
            this.groupBox2.Controls.Add(this.btnClient_Search);
            this.groupBox2.Controls.Add(this.dgClient);
            this.groupBox2.Controls.Add(this.txtSearchName);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.ForeColor = System.Drawing.Color.Black;
            this.groupBox2.Location = new System.Drawing.Point(16, 58);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(346, 455);
            this.groupBox2.TabIndex = 18;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Search";
            this.groupBox2.Visible = false;
            // 
            // btnClient_Search
            // 
            this.btnClient_Search.Location = new System.Drawing.Point(254, 17);
            this.btnClient_Search.Name = "btnClient_Search";
            this.btnClient_Search.Size = new System.Drawing.Size(75, 23);
            this.btnClient_Search.TabIndex = 4;
            this.btnClient_Search.Text = "Search";
            this.btnClient_Search.UseVisualStyleBackColor = true;
            this.btnClient_Search.Click += new System.EventHandler(this.btnClient_Search_Click);
            // 
            // dgClient
            // 
            this.dgClient.AllowUserToAddRows = false;
            this.dgClient.AllowUserToResizeRows = false;
            this.dgClient.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgClient.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgClient.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgClient.Location = new System.Drawing.Point(6, 45);
            this.dgClient.Name = "dgClient";
            this.dgClient.ReadOnly = true;
            this.dgClient.RowHeadersVisible = false;
            this.dgClient.Size = new System.Drawing.Size(334, 406);
            this.dgClient.TabIndex = 22;
            this.dgClient.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgClient_CellMouseClick);
            // 
            // txtSearchName
            // 
            this.txtSearchName.Location = new System.Drawing.Point(8, 19);
            this.txtSearchName.Name = "txtSearchName";
            this.txtSearchName.Size = new System.Drawing.Size(232, 20);
            this.txtSearchName.TabIndex = 3;
            this.txtSearchName.Text = "Type Name here:";
            this.txtSearchName.Click += new System.EventHandler(this.txtSearchName_Click);
            this.txtSearchName.TextChanged += new System.EventHandler(this.txtSearchName_TextChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.BackColor = System.Drawing.Color.Transparent;
            this.groupBox1.Controls.Add(this.lblADDR);
            this.groupBox1.Controls.Add(this.lblDOB);
            this.groupBox1.Controls.Add(this.lblGender);
            this.groupBox1.Controls.Add(this.lblName);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.ForeColor = System.Drawing.Color.Black;
            this.groupBox1.Location = new System.Drawing.Point(368, 58);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(531, 222);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Client Information";
            this.groupBox1.Visible = false;
            // 
            // lblADDR
            // 
            this.lblADDR.AutoSize = true;
            this.lblADDR.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblADDR.ForeColor = System.Drawing.Color.Black;
            this.lblADDR.Location = new System.Drawing.Point(22, 177);
            this.lblADDR.Name = "lblADDR";
            this.lblADDR.Size = new System.Drawing.Size(0, 20);
            this.lblADDR.TabIndex = 7;
            // 
            // lblDOB
            // 
            this.lblDOB.AutoSize = true;
            this.lblDOB.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDOB.ForeColor = System.Drawing.Color.Black;
            this.lblDOB.Location = new System.Drawing.Point(22, 134);
            this.lblDOB.Name = "lblDOB";
            this.lblDOB.Size = new System.Drawing.Size(0, 20);
            this.lblDOB.TabIndex = 6;
            // 
            // lblGender
            // 
            this.lblGender.AutoSize = true;
            this.lblGender.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGender.ForeColor = System.Drawing.Color.Black;
            this.lblGender.Location = new System.Drawing.Point(23, 91);
            this.lblGender.Name = "lblGender";
            this.lblGender.Size = new System.Drawing.Size(0, 20);
            this.lblGender.TabIndex = 5;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblName.ForeColor = System.Drawing.Color.Black;
            this.lblName.Location = new System.Drawing.Point(23, 46);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(0, 20);
            this.lblName.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(10, 159);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(102, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Registered Address:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(9, 116);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Date of Birth:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(10, 71);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "Gender:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(10, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Name:";
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(368, 286);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(531, 193);
            this.tabControl1.TabIndex = 20;
            this.tabControl1.Visible = false;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.Transparent;
            this.tabPage1.Controls.Add(this.dgSummary);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(523, 167);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Summary";
            // 
            // dgSummary
            // 
            this.dgSummary.AllowUserToAddRows = false;
            this.dgSummary.AllowUserToResizeColumns = false;
            this.dgSummary.AllowUserToResizeRows = false;
            this.dgSummary.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgSummary.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgSummary.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgSummary.Location = new System.Drawing.Point(2, 2);
            this.dgSummary.Name = "dgSummary";
            this.dgSummary.ReadOnly = true;
            this.dgSummary.RowHeadersVisible = false;
            this.dgSummary.Size = new System.Drawing.Size(518, 162);
            this.dgSummary.TabIndex = 3;
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.Transparent;
            this.tabPage2.Controls.Add(this.dgIndividual);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(523, 167);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Individual";
            // 
            // dgIndividual
            // 
            this.dgIndividual.AllowUserToAddRows = false;
            this.dgIndividual.AllowUserToResizeColumns = false;
            this.dgIndividual.AllowUserToResizeRows = false;
            this.dgIndividual.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgIndividual.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgIndividual.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgIndividual.Location = new System.Drawing.Point(2, 2);
            this.dgIndividual.Name = "dgIndividual";
            this.dgIndividual.ReadOnly = true;
            this.dgIndividual.RowHeadersVisible = false;
            this.dgIndividual.Size = new System.Drawing.Size(518, 162);
            this.dgIndividual.TabIndex = 23;
            // 
            // btnExit
            // 
            this.btnExit.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnExit.Location = new System.Drawing.Point(824, 483);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 21;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Visible = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.Transparent;
            this.menuStrip1.BackgroundImage = global::DAV.Properties.Resources.backgroudoriginal;
            this.menuStrip1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.settingsToolStripMenuItem,
            this.msReports,
            this.exportFilesToolStripMenuItem,
            this.aMLAToolStripMenuItem1,
            this.cICToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(911, 24);
            this.menuStrip1.TabIndex = 22;
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
            // settingsToolStripMenuItem
            // 
            this.settingsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.assignHeadOfficeToolStripMenuItem,
            this.databaseConnectionToolStripMenuItem,
            this.databaseSourceToolStripMenuItem,
            this.deleteCurrentDateToolStripMenuItem,
            this.exportPathToolStripMenuItem,
            this.institutionCodeToolStripMenuItem,
            this.moduleCheckerToolStripMenuItem});
            this.settingsToolStripMenuItem.Name = "settingsToolStripMenuItem";
            this.settingsToolStripMenuItem.Size = new System.Drawing.Size(61, 20);
            this.settingsToolStripMenuItem.Text = "&Settings";
            // 
            // assignHeadOfficeToolStripMenuItem
            // 
            this.assignHeadOfficeToolStripMenuItem.Name = "assignHeadOfficeToolStripMenuItem";
            this.assignHeadOfficeToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.assignHeadOfficeToolStripMenuItem.Text = "Assign Head Office";
            this.assignHeadOfficeToolStripMenuItem.Click += new System.EventHandler(this.assignHeadOfficeToolStripMenuItem_Click);
            // 
            // databaseConnectionToolStripMenuItem
            // 
            this.databaseConnectionToolStripMenuItem.Name = "databaseConnectionToolStripMenuItem";
            this.databaseConnectionToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.databaseConnectionToolStripMenuItem.Text = "Database Connection";
            this.databaseConnectionToolStripMenuItem.Click += new System.EventHandler(this.databaseConnectionToolStripMenuItem_Click);
            // 
            // databaseSourceToolStripMenuItem
            // 
            this.databaseSourceToolStripMenuItem.Name = "databaseSourceToolStripMenuItem";
            this.databaseSourceToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.databaseSourceToolStripMenuItem.Text = "Database Source";
            this.databaseSourceToolStripMenuItem.Visible = false;
            this.databaseSourceToolStripMenuItem.Click += new System.EventHandler(this.databaseSourceToolStripMenuItem_Click);
            // 
            // deleteCurrentDateToolStripMenuItem
            // 
            this.deleteCurrentDateToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dAVToolStripMenuItem1,
            this.aMLAToolStripMenuItem2,
            this.cICToolStripMenuItem1});
            this.deleteCurrentDateToolStripMenuItem.Name = "deleteCurrentDateToolStripMenuItem";
            this.deleteCurrentDateToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.deleteCurrentDateToolStripMenuItem.Text = "Delete Selected Date";
            this.deleteCurrentDateToolStripMenuItem.Click += new System.EventHandler(this.deleteCurrentDateToolStripMenuItem_Click);
            // 
            // dAVToolStripMenuItem1
            // 
            this.dAVToolStripMenuItem1.Name = "dAVToolStripMenuItem1";
            this.dAVToolStripMenuItem1.Size = new System.Drawing.Size(107, 22);
            this.dAVToolStripMenuItem1.Text = "&DAV";
            this.dAVToolStripMenuItem1.Click += new System.EventHandler(this.dAVToolStripMenuItem1_Click);
            // 
            // aMLAToolStripMenuItem2
            // 
            this.aMLAToolStripMenuItem2.Name = "aMLAToolStripMenuItem2";
            this.aMLAToolStripMenuItem2.Size = new System.Drawing.Size(107, 22);
            this.aMLAToolStripMenuItem2.Text = "&AMLA";
            this.aMLAToolStripMenuItem2.Click += new System.EventHandler(this.aMLAToolStripMenuItem2_Click);
            // 
            // cICToolStripMenuItem1
            // 
            this.cICToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dATAToolStripMenuItem,
            this.otherInfomToolStripMenuItem});
            this.cICToolStripMenuItem1.Name = "cICToolStripMenuItem1";
            this.cICToolStripMenuItem1.Size = new System.Drawing.Size(107, 22);
            this.cICToolStripMenuItem1.Text = "&CIC";
            // 
            // dATAToolStripMenuItem
            // 
            this.dATAToolStripMenuItem.Name = "dATAToolStripMenuItem";
            this.dATAToolStripMenuItem.Size = new System.Drawing.Size(139, 22);
            this.dATAToolStripMenuItem.Text = "&Data";
            this.dATAToolStripMenuItem.Click += new System.EventHandler(this.dATAToolStripMenuItem_Click);
            // 
            // otherInfomToolStripMenuItem
            // 
            this.otherInfomToolStripMenuItem.Name = "otherInfomToolStripMenuItem";
            this.otherInfomToolStripMenuItem.Size = new System.Drawing.Size(139, 22);
            this.otherInfomToolStripMenuItem.Text = "&Other Infom";
            this.otherInfomToolStripMenuItem.Click += new System.EventHandler(this.otherInfomToolStripMenuItem_Click);
            // 
            // exportPathToolStripMenuItem
            // 
            this.exportPathToolStripMenuItem.Name = "exportPathToolStripMenuItem";
            this.exportPathToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.exportPathToolStripMenuItem.Text = "Export Path";
            this.exportPathToolStripMenuItem.Click += new System.EventHandler(this.exportPathToolStripMenuItem_Click);
            // 
            // institutionCodeToolStripMenuItem
            // 
            this.institutionCodeToolStripMenuItem.Name = "institutionCodeToolStripMenuItem";
            this.institutionCodeToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.institutionCodeToolStripMenuItem.Text = "Institution Code (MBWIN)";
            this.institutionCodeToolStripMenuItem.Click += new System.EventHandler(this.institutionCodeToolStripMenuItem_Click);
            // 
            // moduleCheckerToolStripMenuItem
            // 
            this.moduleCheckerToolStripMenuItem.Name = "moduleCheckerToolStripMenuItem";
            this.moduleCheckerToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.moduleCheckerToolStripMenuItem.Text = "Module Checker";
            this.moduleCheckerToolStripMenuItem.Click += new System.EventHandler(this.moduleCheckerToolStripMenuItem_Click);
            // 
            // msReports
            // 
            this.msReports.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.msBRSummary,
            this.msIndividSummary,
            this.msIndividualRep});
            this.msReports.Name = "msReports";
            this.msReports.Size = new System.Drawing.Size(59, 20);
            this.msReports.Text = "&Reports";
            this.msReports.Click += new System.EventHandler(this.msReports_Click);
            // 
            // msBRSummary
            // 
            this.msBRSummary.Name = "msBRSummary";
            this.msBRSummary.Size = new System.Drawing.Size(180, 22);
            this.msBRSummary.Text = "&Branch Summary";
            this.msBRSummary.Visible = false;
            this.msBRSummary.Click += new System.EventHandler(this.msBRSummary_Click);
            // 
            // msIndividSummary
            // 
            this.msIndividSummary.Name = "msIndividSummary";
            this.msIndividSummary.Size = new System.Drawing.Size(180, 22);
            this.msIndividSummary.Text = "Individual &Summary";
            this.msIndividSummary.Visible = false;
            this.msIndividSummary.Click += new System.EventHandler(this.msIndividSummary_Click);
            // 
            // msIndividualRep
            // 
            this.msIndividualRep.Name = "msIndividualRep";
            this.msIndividualRep.Size = new System.Drawing.Size(180, 22);
            this.msIndividualRep.Text = "&Individual Report";
            this.msIndividualRep.Visible = false;
            this.msIndividualRep.Click += new System.EventHandler(this.msIndividualRep_Click);
            // 
            // exportFilesToolStripMenuItem
            // 
            this.exportFilesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cSVToolStripMenuItem,
            this.excelToolStripMenuItem});
            this.exportFilesToolStripMenuItem.Enabled = false;
            this.exportFilesToolStripMenuItem.Name = "exportFilesToolStripMenuItem";
            this.exportFilesToolStripMenuItem.Size = new System.Drawing.Size(41, 20);
            this.exportFilesToolStripMenuItem.Text = "&DAV";
            this.exportFilesToolStripMenuItem.Click += new System.EventHandler(this.exportFilesToolStripMenuItem_Click);
            // 
            // cSVToolStripMenuItem
            // 
            this.cSVToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dAVToolStripMenuItem,
            this.aMLAToolStripMenuItem});
            this.cSVToolStripMenuItem.Name = "cSVToolStripMenuItem";
            this.cSVToolStripMenuItem.Size = new System.Drawing.Size(131, 22);
            this.cSVToolStripMenuItem.Text = "&Export CSV";
            this.cSVToolStripMenuItem.Click += new System.EventHandler(this.cSVToolStripMenuItem_Click);
            // 
            // dAVToolStripMenuItem
            // 
            this.dAVToolStripMenuItem.Name = "dAVToolStripMenuItem";
            this.dAVToolStripMenuItem.Size = new System.Drawing.Size(107, 22);
            this.dAVToolStripMenuItem.Text = "DAV";
            this.dAVToolStripMenuItem.Visible = false;
            this.dAVToolStripMenuItem.Click += new System.EventHandler(this.dAVToolStripMenuItem_Click);
            // 
            // aMLAToolStripMenuItem
            // 
            this.aMLAToolStripMenuItem.Name = "aMLAToolStripMenuItem";
            this.aMLAToolStripMenuItem.Size = new System.Drawing.Size(107, 22);
            this.aMLAToolStripMenuItem.Text = "AMLA";
            this.aMLAToolStripMenuItem.Visible = false;
            this.aMLAToolStripMenuItem.Click += new System.EventHandler(this.aMLAToolStripMenuItem_Click);
            // 
            // excelToolStripMenuItem
            // 
            this.excelToolStripMenuItem.Name = "excelToolStripMenuItem";
            this.excelToolStripMenuItem.Size = new System.Drawing.Size(131, 22);
            this.excelToolStripMenuItem.Text = "&Excel";
            this.excelToolStripMenuItem.Visible = false;
            this.excelToolStripMenuItem.Click += new System.EventHandler(this.excelToolStripMenuItem_Click);
            // 
            // aMLAToolStripMenuItem1
            // 
            this.aMLAToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.AMLACSVToolStripMenuItem1});
            this.aMLAToolStripMenuItem1.Enabled = false;
            this.aMLAToolStripMenuItem1.Name = "aMLAToolStripMenuItem1";
            this.aMLAToolStripMenuItem1.Size = new System.Drawing.Size(52, 20);
            this.aMLAToolStripMenuItem1.Text = "&AMLA";
            // 
            // AMLACSVToolStripMenuItem1
            // 
            this.AMLACSVToolStripMenuItem1.Name = "AMLACSVToolStripMenuItem1";
            this.AMLACSVToolStripMenuItem1.Size = new System.Drawing.Size(131, 22);
            this.AMLACSVToolStripMenuItem1.Text = "&Export CSV";
            this.AMLACSVToolStripMenuItem1.Click += new System.EventHandler(this.AMLACSVToolStripMenuItem1_Click);
            // 
            // cICToolStripMenuItem
            // 
            this.cICToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.providerCodeToolStripMenuItem,
            this.addOtherInfoToolStripMenuItem,
            this.exportToolStripMenuItem});
            this.cICToolStripMenuItem.Enabled = false;
            this.cICToolStripMenuItem.Name = "cICToolStripMenuItem";
            this.cICToolStripMenuItem.Size = new System.Drawing.Size(38, 20);
            this.cICToolStripMenuItem.Text = "&CIC";
            // 
            // providerCodeToolStripMenuItem
            // 
            this.providerCodeToolStripMenuItem.Name = "providerCodeToolStripMenuItem";
            this.providerCodeToolStripMenuItem.Size = new System.Drawing.Size(153, 22);
            this.providerCodeToolStripMenuItem.Text = "&Provider Code";
            this.providerCodeToolStripMenuItem.Click += new System.EventHandler(this.providerCodeToolStripMenuItem_Click);
            // 
            // addOtherInfoToolStripMenuItem
            // 
            this.addOtherInfoToolStripMenuItem.Name = "addOtherInfoToolStripMenuItem";
            this.addOtherInfoToolStripMenuItem.Size = new System.Drawing.Size(153, 22);
            this.addOtherInfoToolStripMenuItem.Text = "Add Other Info";
            this.addOtherInfoToolStripMenuItem.Click += new System.EventHandler(this.addOtherInfoToolStripMenuItem_Click);
            // 
            // exportToolStripMenuItem
            // 
            this.exportToolStripMenuItem.Name = "exportToolStripMenuItem";
            this.exportToolStripMenuItem.Size = new System.Drawing.Size(153, 22);
            this.exportToolStripMenuItem.Text = "&Export";
            this.exportToolStripMenuItem.Click += new System.EventHandler(this.exportToolStripMenuItem_Click);
            // 
            // btnExport
            // 
            this.btnExport.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnExport.Location = new System.Drawing.Point(743, 483);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(75, 23);
            this.btnExport.TabIndex = 23;
            this.btnExport.Text = "Export";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Visible = false;
            this.btnExport.Click += new System.EventHandler(this.btnExport_Click);
            // 
            // pb1
            // 
            this.pb1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pb1.Location = new System.Drawing.Point(368, 483);
            this.pb1.Name = "pb1";
            this.pb1.Size = new System.Drawing.Size(262, 23);
            this.pb1.TabIndex = 24;
            this.pb1.Visible = false;
            // 
            // lblTimer
            // 
            this.lblTimer.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblTimer.AutoSize = true;
            this.lblTimer.Location = new System.Drawing.Point(636, 488);
            this.lblTimer.Name = "lblTimer";
            this.lblTimer.Size = new System.Drawing.Size(0, 13);
            this.lblTimer.TabIndex = 25;
            this.lblTimer.Visible = false;
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.WorkerReportsProgress = true;
            this.backgroundWorker1.WorkerSupportsCancellation = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::DAV.Properties.Resources.back11;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(911, 516);
            this.Controls.Add(this.lblTimer);
            this.Controls.Add(this.pb1);
            this.Controls.Add(this.btnExport);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.dtDate);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Compliance Module";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgClient)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgSummary)).EndInit();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgIndividual)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Label label7;
        public System.Windows.Forms.DateTimePicker dtDate;
        public System.Windows.Forms.DataGridView dgClient;
        public System.Windows.Forms.TextBox txtSearchName;
        private System.Windows.Forms.Label lblADDR;
        private System.Windows.Forms.Label lblDOB;
        private System.Windows.Forms.Label lblGender;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnClient_Search;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        public System.Windows.Forms.DataGridView dgSummary;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem msReports;
        private System.Windows.Forms.Button btnExport;
        private System.Windows.Forms.ToolStripMenuItem msBRSummary;
        private System.Windows.Forms.ToolStripMenuItem msIndividSummary;
        private System.Windows.Forms.ToolStripMenuItem msIndividualRep;
        public System.Windows.Forms.DataGridView dgIndividual;
        private System.Windows.Forms.ProgressBar pb1;
        private System.Windows.Forms.Label lblTimer;
        private System.Windows.Forms.Timer timer1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.ToolStripMenuItem cSVToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem excelToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem settingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem databaseConnectionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exportPathToolStripMenuItem;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.ToolStripMenuItem databaseSourceToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem dAVToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aMLAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deleteCurrentDateToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem institutionCodeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addOtherInfoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exportToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem AMLACSVToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem moduleCheckerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem assignHeadOfficeToolStripMenuItem;
        public System.Windows.Forms.ToolStripMenuItem exportFilesToolStripMenuItem;
        public System.Windows.Forms.ToolStripMenuItem cICToolStripMenuItem;
        public System.Windows.Forms.ToolStripMenuItem aMLAToolStripMenuItem1;
        public System.Windows.Forms.GroupBox groupBox2;
        public System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.ToolStripMenuItem providerCodeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem dAVToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem aMLAToolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem cICToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem dATAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem otherInfomToolStripMenuItem;

    }
}

