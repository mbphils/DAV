namespace DAV
{
    partial class FrmDBSource
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDBSource));
            this.rboV8 = new System.Windows.Forms.RadioButton();
            this.rboWIN = new System.Windows.Forms.RadioButton();
            this.btnok = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // rboV8
            // 
            this.rboV8.AutoSize = true;
            this.rboV8.BackColor = System.Drawing.Color.Transparent;
            this.rboV8.Location = new System.Drawing.Point(20, 17);
            this.rboV8.Name = "rboV8";
            this.rboV8.Size = new System.Drawing.Size(58, 17);
            this.rboV8.TabIndex = 0;
            this.rboV8.TabStop = true;
            this.rboV8.Text = "MBx32";
            this.rboV8.UseVisualStyleBackColor = false;
            this.rboV8.CheckedChanged += new System.EventHandler(this.rboV8_CheckedChanged);
            // 
            // rboWIN
            // 
            this.rboWIN.AutoSize = true;
            this.rboWIN.BackColor = System.Drawing.Color.Transparent;
            this.rboWIN.Location = new System.Drawing.Point(20, 44);
            this.rboWIN.Name = "rboWIN";
            this.rboWIN.Size = new System.Drawing.Size(63, 17);
            this.rboWIN.TabIndex = 1;
            this.rboWIN.TabStop = true;
            this.rboWIN.Text = "MBWIN";
            this.rboWIN.UseVisualStyleBackColor = false;
            this.rboWIN.CheckedChanged += new System.EventHandler(this.rboWIN_CheckedChanged);
            // 
            // btnok
            // 
            this.btnok.Location = new System.Drawing.Point(74, 70);
            this.btnok.Name = "btnok";
            this.btnok.Size = new System.Drawing.Size(75, 23);
            this.btnok.TabIndex = 2;
            this.btnok.Text = "OK";
            this.btnok.UseVisualStyleBackColor = true;
            this.btnok.Click += new System.EventHandler(this.btnok_Click);
            // 
            // FrmDBSource
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::DAV.Properties.Resources.back11;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(167, 115);
            this.Controls.Add(this.btnok);
            this.Controls.Add(this.rboWIN);
            this.Controls.Add(this.rboV8);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmDBSource";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Database Source";
            this.Load += new System.EventHandler(this.FrmDBSource_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RadioButton rboV8;
        private System.Windows.Forms.RadioButton rboWIN;
        private System.Windows.Forms.Button btnok;
    }
}