using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace spare_parts_shopping.WinForm
{
    public partial class UrunEkle : Form
    {
        Product_Entities productDb = new Product_Entities();
        public UrunEkle()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void UrunEkle_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the '_spare_parts_dbDataSet.Products' table. You can move, or remove it, as needed.
            this.productsTableAdapter.Fill(this._spare_parts_dbDataSet.Products);

        }

        private void button5_Click(object sender, EventArgs e)
        {
            string imagePath = "";
            if(pictureBox1?.Image != null)
            {
               imagePath = SaveImageCapture(pictureBox1.Image);
            }
            productDb.Products.Add(new Products
            {
                Name = textBox2.Text,
                Price = decimal.Parse(textBox3.Text),
                Stock = int.Parse(textBox5.Text),
                Image = imagePath
            });
            productDb.SaveChanges();
            MessageBox.Show("Ürün Eklendi!");

            productsTableAdapter.Fill(_spare_parts_dbDataSet.Products);
        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var currentId = int.Parse(dataGridView1.CurrentRow.Cells[0].Value.ToString());
            var product = productDb.Products.FirstOrDefault(x => x.Id == currentId);
            if (product != null)
            {
                product.Name = dataGridView1.CurrentRow.Cells[1].Value.ToString();
                product.Price = decimal.Parse(dataGridView1.CurrentRow.Cells[3].Value.ToString());
                product.Stock = int.Parse(dataGridView1.CurrentRow.Cells[4].Value.ToString());
                product.Image = dataGridView1.CurrentRow.Cells[2].Value.ToString();
                productDb.Products.AddOrUpdate(product);
                productDb.SaveChanges();
            }

        }

        private void button4_Click(object sender, EventArgs e)
        {
            var currentId = int.Parse(dataGridView1.CurrentRow.Cells[0].Value.ToString());
            if (currentId == null)
            {
                MessageBox.Show("Datagridview'dan seçim yapmadınız!");
            }
            else
            {
                var product = productDb.Products.FirstOrDefault(x => x.Id == currentId);
                productDb.Products.Remove(product);
                productDb.SaveChanges();
            }
            productsTableAdapter.Fill(_spare_parts_dbDataSet.Products);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OpenFileDialog opnfd = new OpenFileDialog();
            opnfd.Filter = "Image Files (*.jpg;*.jpeg;.*.gif;)|*.jpg;*.jpeg;.*.gif;*.png";
            if (opnfd.ShowDialog() == DialogResult.OK)
            {
                pictureBox1.Image = new Bitmap(opnfd.FileName);
            }
            
        }
        public string SaveImageCapture(System.Drawing.Image image)
        {
            Guid newGuid = Guid.NewGuid();
            var path = new DirectoryInfo(Environment.CurrentDirectory).Parent.Parent.Parent.FullName + "\\spare-parts-shopping\\images\\";
            var ss = Application.StartupPath;
            // Save Image
            string filename = path + newGuid.ToString() + ".jpg";
            FileStream fstream = new FileStream(filename, FileMode.Create);
            image.Save(fstream, System.Drawing.Imaging.ImageFormat.Jpeg);
            fstream.Close();

            return newGuid.ToString() + ".jpg";
        }
    }
}
