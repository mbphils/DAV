using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DAV
{
    public partial class FrmDBSource : Form
    {
        public FrmDBSource()
        {
            InitializeComponent();
        }

        private void rboV8_CheckedChanged(object sender, EventArgs e)
        {
            if (rboV8.Checked == true)
            {
                rboV8.Checked = true;
                rboWIN.Checked = false;
            }
            else
            {
                rboV8.Checked = false;
                rboWIN.Checked = true;
            }
        }

        private void rboWIN_CheckedChanged(object sender, EventArgs e)
        {
            if (rboWIN.Checked == true)
            {
                rboWIN.Checked = true;
                rboV8.Checked = false;
            }
            else
            {
                rboWIN.Checked = false;
                rboV8.Checked = true;
            }
        }

        private void FrmDBSource_Load(object sender, EventArgs e)
        {
            if (GlobalVariable.DBSource == 0)
            {
                rboV8.Checked = true;
                rboWIN.Checked = false;
            }
            else
            {
                rboV8.Checked = false;
                rboWIN.Checked = true; 
            }
        }

        private void btnok_Click(object sender, EventArgs e)
        {
            if (rboV8.Checked == true)
            {
                GlobalVariable.DBSource = 0;
                MessageBox.Show("Database source saved", "Database Source", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            else
            {
                GlobalVariable.DBSource = 1;
                MessageBox.Show("Database source saved", "Database Source", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
        }
    }
}
