using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;

namespace DAV
{
    public partial class frmMySQL : Form
    {
        public frmMySQL()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            GlobalVariable.MySQLIPAdd = txtIPAdd.Text;
            GlobalVariable.MySQLDatabaseName = txtDataBaseName.Text;
        }

        private void frmMySQL_Load(object sender, EventArgs e)
        {
            //string hostName = Dns.GetHostName(); // Retrive the Name of HOST
            //Console.WriteLine(hostName);
            //// Get the IP
            //string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();
            //Console.WriteLine("My IP Address is :" + myIP);
            //Console.ReadKey();
        }
    }
}
