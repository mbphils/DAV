using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Configuration;

namespace DAV
{
    public partial class FrmExportPath : Form
    {
        public FrmExportPath()
        {
            InitializeComponent();
            txtExportPath.Text = Path.GetFullPath(GlobalVariable.ExportPath);
        }


        


        private void btnOK_Click(object sender, EventArgs e)
        {
            if (Directory.Exists(txtExportPath.Text))
            {
                GlobalVariable.ExportPath = txtExportPath.Text;
                GlobalVariable.IsConnection = false;
                GlobalMethod.CreateApp(GlobalVariable.ExportPath);
                MessageBox.Show("Export path saved", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            else
            {         
                MessageBox.Show("Invalid path", "Output File Export", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void FrmExportPath_Load(object sender, EventArgs e)
        {
            string Holder = "";
            Holder = ConfigurationManager.AppSettings["ExportPath"];
            txtExportPath.Text = Holder.Replace(@"\\", @"\");
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog folderDlg = new FolderBrowserDialog();
            folderDlg.ShowNewFolderButton = true;
            folderDlg.SelectedPath = GlobalVariable.ExportPath;
            // Show the FolderBrowserDialog.
            DialogResult result = folderDlg.ShowDialog();
            if (result == DialogResult.OK)
            {
                if (Directory.Exists(folderDlg.SelectedPath))
                {
                    txtExportPath.Text = folderDlg.SelectedPath;
                    Environment.SpecialFolder root = folderDlg.RootFolder;
                }
                else
                {
                    Directory.CreateDirectory(folderDlg.SelectedPath);
                    txtExportPath.Text = folderDlg.SelectedPath;
                    Environment.SpecialFolder root = folderDlg.RootFolder;
                }
            }
        }
    }
}
