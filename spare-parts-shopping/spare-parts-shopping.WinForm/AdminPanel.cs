﻿using System;
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
    public partial class AdminPanel : Form
    {
        public AdminPanel()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            KullaniciEkle form = new KullaniciEkle();
            form.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Giris girisForm = new Giris();
            girisForm.Show();
            
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            UrunEkle urunEkleForm = new UrunEkle();
            urunEkleForm.Show();
        }
    }
}
