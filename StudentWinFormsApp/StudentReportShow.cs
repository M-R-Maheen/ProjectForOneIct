using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;

namespace StudentWinFormsApp
{
    public partial class StudentReportShow : Form
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public StudentReportShow()
        {
            InitializeComponent();
        }

        private void btnShowReport_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetAllStudents", con))
                {
                    DataSet ds = new DataSet();
                    StudentReportShow reportfrm = new StudentReportShow();
                    StudentCrystalReport studentCrystalReport = new StudentCrystalReport();
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                    con.Open();
                    dataAdapter.Fill(ds, "GetAllStudents");
                    con.Close();
                    studentCrystalReport.SetDataSource(ds);
                    reportfrm.crystalReportViewer1.ReportSource = studentCrystalReport;
                    reportfrm.ShowDialog();
                }
            }
        }
    }
}
