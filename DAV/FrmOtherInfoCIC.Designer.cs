namespace DAV
{
    partial class FrmOtherInfoCIC
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmOtherInfoCIC));
            this.CIBox = new System.Windows.Forms.GroupBox();
            this.btnCIClear = new System.Windows.Forms.Button();
            this.txtCINum = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cboCIRole = new System.Windows.Forms.ComboBox();
            this.btnCIDel = new System.Windows.Forms.Button();
            this.dgCI = new System.Windows.Forms.DataGridView();
            this.btnCIAdd = new System.Windows.Forms.Button();
            this.txtCIName = new System.Windows.Forms.TextBox();
            this.txtCIProv = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtAccount = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.CNBox = new System.Windows.Forms.GroupBox();
            this.btnCNClear = new System.Windows.Forms.Button();
            this.txtCNNum = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cboCNRole = new System.Windows.Forms.ComboBox();
            this.btnCNDel = new System.Windows.Forms.Button();
            this.dgCN = new System.Windows.Forms.DataGridView();
            this.btnCNAdd = new System.Windows.Forms.Button();
            this.txtCNName = new System.Windows.Forms.TextBox();
            this.txtCNProv = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.CIBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCI)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.CNBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCN)).BeginInit();
            this.SuspendLayout();
            // 
            // CIBox
            // 
            this.CIBox.BackColor = System.Drawing.Color.Transparent;
            this.CIBox.Controls.Add(this.btnCIClear);
            this.CIBox.Controls.Add(this.txtCINum);
            this.CIBox.Controls.Add(this.label9);
            this.CIBox.Controls.Add(this.cboCIRole);
            this.CIBox.Controls.Add(this.btnCIDel);
            this.CIBox.Controls.Add(this.dgCI);
            this.CIBox.Controls.Add(this.btnCIAdd);
            this.CIBox.Controls.Add(this.txtCIName);
            this.CIBox.Controls.Add(this.txtCIProv);
            this.CIBox.Controls.Add(this.label4);
            this.CIBox.Controls.Add(this.label3);
            this.CIBox.Controls.Add(this.label2);
            this.CIBox.Enabled = false;
            this.CIBox.Location = new System.Drawing.Point(16, 54);
            this.CIBox.Name = "CIBox";
            this.CIBox.Size = new System.Drawing.Size(400, 383);
            this.CIBox.TabIndex = 0;
            this.CIBox.TabStop = false;
            this.CIBox.Text = "Installment Contract";
            // 
            // btnCIClear
            // 
            this.btnCIClear.Location = new System.Drawing.Point(311, 309);
            this.btnCIClear.Name = "btnCIClear";
            this.btnCIClear.Size = new System.Drawing.Size(75, 23);
            this.btnCIClear.TabIndex = 16;
            this.btnCIClear.Text = "Clear";
            this.btnCIClear.UseVisualStyleBackColor = true;
            this.btnCIClear.Click += new System.EventHandler(this.btnCIClear_Click);
            // 
            // txtCINum
            // 
            this.txtCINum.Enabled = false;
            this.txtCINum.Location = new System.Drawing.Point(157, 311);
            this.txtCINum.MaxLength = 1;
            this.txtCINum.Name = "txtCINum";
            this.txtCINum.Size = new System.Drawing.Size(121, 20);
            this.txtCINum.TabIndex = 6;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.Color.Transparent;
            this.label9.Location = new System.Drawing.Point(105, 314);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(50, 13);
            this.label9.TabIndex = 15;
            this.label9.Text = "Number :";
            // 
            // cboCIRole
            // 
            this.cboCIRole.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboCIRole.FormattingEnabled = true;
            this.cboCIRole.Location = new System.Drawing.Point(157, 258);
            this.cboCIRole.Name = "cboCIRole";
            this.cboCIRole.Size = new System.Drawing.Size(121, 21);
            this.cboCIRole.TabIndex = 4;
            // 
            // btnCIDel
            // 
            this.btnCIDel.Location = new System.Drawing.Point(311, 344);
            this.btnCIDel.Name = "btnCIDel";
            this.btnCIDel.Size = new System.Drawing.Size(75, 23);
            this.btnCIDel.TabIndex = 8;
            this.btnCIDel.Text = "Delete";
            this.btnCIDel.UseVisualStyleBackColor = true;
            this.btnCIDel.Click += new System.EventHandler(this.btnCIDel_Click);
            // 
            // dgCI
            // 
            this.dgCI.AllowUserToAddRows = false;
            this.dgCI.AllowUserToDeleteRows = false;
            this.dgCI.AllowUserToResizeColumns = false;
            this.dgCI.AllowUserToResizeRows = false;
            this.dgCI.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgCI.Location = new System.Drawing.Point(15, 19);
            this.dgCI.Name = "dgCI";
            this.dgCI.ReadOnly = true;
            this.dgCI.RowHeadersVisible = false;
            this.dgCI.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders;
            this.dgCI.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgCI.Size = new System.Drawing.Size(371, 208);
            this.dgCI.TabIndex = 9;
            this.dgCI.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgCI_CellClick);
            // 
            // btnCIAdd
            // 
            this.btnCIAdd.Location = new System.Drawing.Point(230, 344);
            this.btnCIAdd.Name = "btnCIAdd";
            this.btnCIAdd.Size = new System.Drawing.Size(75, 23);
            this.btnCIAdd.TabIndex = 7;
            this.btnCIAdd.Text = "Add";
            this.btnCIAdd.UseVisualStyleBackColor = true;
            this.btnCIAdd.TextChanged += new System.EventHandler(this.btnCIAdd_TextChanged);
            this.btnCIAdd.Click += new System.EventHandler(this.btnCIAdd_Click);
            // 
            // txtCIName
            // 
            this.txtCIName.Location = new System.Drawing.Point(157, 285);
            this.txtCIName.MaxLength = 220;
            this.txtCIName.Name = "txtCIName";
            this.txtCIName.Size = new System.Drawing.Size(229, 20);
            this.txtCIName.TabIndex = 5;
            // 
            // txtCIProv
            // 
            this.txtCIProv.Location = new System.Drawing.Point(157, 233);
            this.txtCIProv.MaxLength = 38;
            this.txtCIProv.Name = "txtCIProv";
            this.txtCIProv.Size = new System.Drawing.Size(229, 20);
            this.txtCIProv.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(14, 288);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(141, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Name of the linked Subject :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Location = new System.Drawing.Point(120, 262);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(35, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Role :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Location = new System.Drawing.Point(47, 236);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(108, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Provider Subject No :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Location = new System.Drawing.Point(13, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Account Number :";
            // 
            // txtAccount
            // 
            this.txtAccount.Location = new System.Drawing.Point(112, 19);
            this.txtAccount.MaxLength = 10;
            this.txtAccount.Name = "txtAccount";
            this.txtAccount.Size = new System.Drawing.Size(138, 20);
            this.txtAccount.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Transparent;
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.CNBox);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtAccount);
            this.groupBox1.Controls.Add(this.CIBox);
            this.groupBox1.Location = new System.Drawing.Point(9, 2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(847, 452);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(256, 16);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(75, 23);
            this.btnSearch.TabIndex = 2;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // CNBox
            // 
            this.CNBox.BackColor = System.Drawing.Color.Transparent;
            this.CNBox.Controls.Add(this.btnCNClear);
            this.CNBox.Controls.Add(this.txtCNNum);
            this.CNBox.Controls.Add(this.label8);
            this.CNBox.Controls.Add(this.cboCNRole);
            this.CNBox.Controls.Add(this.btnCNDel);
            this.CNBox.Controls.Add(this.dgCN);
            this.CNBox.Controls.Add(this.btnCNAdd);
            this.CNBox.Controls.Add(this.txtCNName);
            this.CNBox.Controls.Add(this.txtCNProv);
            this.CNBox.Controls.Add(this.label5);
            this.CNBox.Controls.Add(this.label6);
            this.CNBox.Controls.Add(this.label7);
            this.CNBox.Enabled = false;
            this.CNBox.Location = new System.Drawing.Point(431, 54);
            this.CNBox.Name = "CNBox";
            this.CNBox.Size = new System.Drawing.Size(400, 383);
            this.CNBox.TabIndex = 10;
            this.CNBox.TabStop = false;
            this.CNBox.Text = "Non Installment Contract";
            // 
            // btnCNClear
            // 
            this.btnCNClear.Location = new System.Drawing.Point(311, 309);
            this.btnCNClear.Name = "btnCNClear";
            this.btnCNClear.Size = new System.Drawing.Size(75, 23);
            this.btnCNClear.TabIndex = 15;
            this.btnCNClear.Text = "Clear";
            this.btnCNClear.UseVisualStyleBackColor = true;
            this.btnCNClear.Click += new System.EventHandler(this.btnCNClear_Click);
            // 
            // txtCNNum
            // 
            this.txtCNNum.Enabled = false;
            this.txtCNNum.Location = new System.Drawing.Point(157, 311);
            this.txtCNNum.MaxLength = 1;
            this.txtCNNum.Name = "txtCNNum";
            this.txtCNNum.Size = new System.Drawing.Size(121, 20);
            this.txtCNNum.TabIndex = 12;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Transparent;
            this.label8.Location = new System.Drawing.Point(105, 314);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(50, 13);
            this.label8.TabIndex = 13;
            this.label8.Text = "Number :";
            // 
            // cboCNRole
            // 
            this.cboCNRole.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboCNRole.FormattingEnabled = true;
            this.cboCNRole.Location = new System.Drawing.Point(157, 258);
            this.cboCNRole.Name = "cboCNRole";
            this.cboCNRole.Size = new System.Drawing.Size(121, 21);
            this.cboCNRole.TabIndex = 10;
            // 
            // btnCNDel
            // 
            this.btnCNDel.Location = new System.Drawing.Point(311, 344);
            this.btnCNDel.Name = "btnCNDel";
            this.btnCNDel.Size = new System.Drawing.Size(75, 23);
            this.btnCNDel.TabIndex = 14;
            this.btnCNDel.Text = "Delete";
            this.btnCNDel.UseVisualStyleBackColor = true;
            this.btnCNDel.Click += new System.EventHandler(this.btnCNDel_Click);
            // 
            // dgCN
            // 
            this.dgCN.AllowUserToAddRows = false;
            this.dgCN.AllowUserToDeleteRows = false;
            this.dgCN.AllowUserToResizeColumns = false;
            this.dgCN.AllowUserToResizeRows = false;
            this.dgCN.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgCN.Location = new System.Drawing.Point(15, 19);
            this.dgCN.Name = "dgCN";
            this.dgCN.ReadOnly = true;
            this.dgCN.RowHeadersVisible = false;
            this.dgCN.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders;
            this.dgCN.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgCN.Size = new System.Drawing.Size(371, 208);
            this.dgCN.TabIndex = 9;
            this.dgCN.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgCN_CellClick);
            // 
            // btnCNAdd
            // 
            this.btnCNAdd.Location = new System.Drawing.Point(230, 344);
            this.btnCNAdd.Name = "btnCNAdd";
            this.btnCNAdd.Size = new System.Drawing.Size(75, 23);
            this.btnCNAdd.TabIndex = 13;
            this.btnCNAdd.Text = "Add";
            this.btnCNAdd.UseVisualStyleBackColor = true;
            this.btnCNAdd.TextChanged += new System.EventHandler(this.btnCNAdd_TextChanged);
            this.btnCNAdd.Click += new System.EventHandler(this.btnCNAdd_Click);
            // 
            // txtCNName
            // 
            this.txtCNName.Location = new System.Drawing.Point(157, 285);
            this.txtCNName.MaxLength = 220;
            this.txtCNName.Name = "txtCNName";
            this.txtCNName.Size = new System.Drawing.Size(229, 20);
            this.txtCNName.TabIndex = 11;
            // 
            // txtCNProv
            // 
            this.txtCNProv.Location = new System.Drawing.Point(157, 233);
            this.txtCNProv.MaxLength = 38;
            this.txtCNProv.Name = "txtCNProv";
            this.txtCNProv.Size = new System.Drawing.Size(229, 20);
            this.txtCNProv.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Location = new System.Drawing.Point(14, 288);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(141, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "Name of the linked Subject :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Location = new System.Drawing.Point(120, 262);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Role :";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Location = new System.Drawing.Point(47, 236);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(108, 13);
            this.label7.TabIndex = 3;
            this.label7.Text = "Provider Subject No :";
            // 
            // FrmOtherInfoCIC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::DAV.Properties.Resources.back11;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(866, 462);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmOtherInfoCIC";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CIC Other Information";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmOtherInfoCIC_FormClosing);
            this.Load += new System.EventHandler(this.FrmOtherInfoCIC_Load);
            this.CIBox.ResumeLayout(false);
            this.CIBox.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCI)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.CNBox.ResumeLayout(false);
            this.CNBox.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCN)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox CIBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtAccount;
        private System.Windows.Forms.Button btnCIAdd;
        private System.Windows.Forms.TextBox txtCIName;
        private System.Windows.Forms.TextBox txtCIProv;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgCI;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox CNBox;
        private System.Windows.Forms.DataGridView dgCN;
        private System.Windows.Forms.Button btnCNAdd;
        private System.Windows.Forms.TextBox txtCNName;
        private System.Windows.Forms.TextBox txtCNProv;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnCIDel;
        private System.Windows.Forms.Button btnCNDel;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.ComboBox cboCIRole;
        private System.Windows.Forms.ComboBox cboCNRole;
        private System.Windows.Forms.TextBox txtCNNum;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtCINum;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnCIClear;
        private System.Windows.Forms.Button btnCNClear;

    }
}