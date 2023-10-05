using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using spare_parts_shopping.WinForm.Models;

namespace spare_parts_shopping.WinForm
{
    public partial class Giris : Form
    {
        BranchEntities db = new BranchEntities();
        public Giris()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = db.Users2.FirstOrDefault(x => x.Username == textBox1.Text && x.Password == textBox2.Text);
            if(user == null)
            {
                MessageBox.Show("Kullanıcı veya şifre yanlış!");
                
            }
            else if(user.RoleId == 1)
            {
                this.Hide();
                AdminPanel adminPanelForm = new AdminPanel();
                adminPanelForm.Show();
            }
            else if(user.RoleId == 2)
            {
                this.Hide();
                UrunEkle urunEkleForm = new UrunEkle();
                urunEkleForm.Show();
            }
            
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
