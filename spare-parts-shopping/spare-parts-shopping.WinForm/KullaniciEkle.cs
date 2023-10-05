using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace spare_parts_shopping.WinForm
{
    public partial class KullaniciEkle : Form
    {
        BranchEntities db = new BranchEntities();
        public KullaniciEkle()
        {
            InitializeComponent();
        }

        private void KullaniciEkle_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the '_spare_parts_branch_dbDataSet2.Roles' table. You can move, or remove it, as needed.
            this.rolesTableAdapter1.Fill(this._spare_parts_branch_dbDataSet2.Roles);
            // TODO: This line of code loads data into the '_spare_parts_branch_dbDataSet1.Users2' table. You can move, or remove it, as needed.
            this.users2TableAdapter.Fill(this._spare_parts_branch_dbDataSet1.Users2);


        }

        private void button1_Click(object sender, EventArgs e)
        {

            var user = db.Users2.FirstOrDefault(x => x.Username == textBox1.Text);
            if (user == null)
            {
                db.Users2.Add(new Users2()
                {
                    Username = textBox1.Text,
                    Password = textBox2.Text,
                    RoleId = int.Parse(comboBox1.SelectedValue.ToString())
                });

                db.SaveChanges();
                MessageBox.Show("Kullanıcı Eklendi!");
            }
            else
            {
                MessageBox.Show("Kullanıcı adı daha önceden girilmiş!");
            }
        }
    }
}
