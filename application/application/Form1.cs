
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace application
{
    public partial class Form1 : Form
    {
        public static string host = "192.168.4.2";
        public static int port = 1521;
        public static string sid = "orcl";
        public static string user = "anhquoc4062";
        public static string password = "123456";

        public static string connString = "Data Source=(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = "
                + host + ")(PORT = " + port + "))(CONNECT_DATA = (SERVER = DEDICATED)(SERVICE_NAME = "
                + sid + ")));Password=" + password + ";User ID=" + user;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            OracleConnection conn = new OracleConnection();
            conn.ConnectionString = connString;

            List<string> paramList = new List<string>();
            paramList.Add("param1");
            paramList.Add("param2");
            paramList.Add("param3");

            string sql = "insert into CATEGORIES(STRCATEGORY) VALUES (:0)";

            //// Tạo một đối tượng Command.
            OracleCommand cmd = new OracleCommand();

            //// Liên hợp Command với Connection.
            cmd.Connection = conn;
            cmd.CommandText = sql;

            cmd.Parameters.Add(new OracleParameter("0", paramList[0]));

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
}
