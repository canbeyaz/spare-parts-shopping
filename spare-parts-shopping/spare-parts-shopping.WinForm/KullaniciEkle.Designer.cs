namespace spare_parts_shopping.WinForm
{
    partial class KullaniciEkle
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
            this.components = new System.ComponentModel.Container();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.rolesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this._spare_parts_branch_dbDataSet = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSet();
            this.rolesTableAdapter = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSetTableAdapters.RolesTableAdapter();
            this._spare_parts_branch_dbDataSet1 = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSet1();
            this.users2BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.users2TableAdapter = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSet1TableAdapters.Users2TableAdapter();
            this._spare_parts_branch_dbDataSet2 = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSet2();
            this.rolesBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.rolesTableAdapter1 = new spare_parts_shopping.WinForm._spare_parts_branch_dbDataSet2TableAdapters.RolesTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.rolesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.users2BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rolesBindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(201, 53);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 0;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(201, 89);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(213, 169);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Ekle";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // comboBox1
            // 
            this.comboBox1.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.rolesBindingSource, "Roles", true));
            this.comboBox1.DataSource = this.rolesBindingSource1;
            this.comboBox1.DisplayMember = "Roles";
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(201, 128);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(100, 21);
            this.comboBox1.TabIndex = 3;
            this.comboBox1.ValueMember = "Id";
            // 
            // rolesBindingSource
            // 
            this.rolesBindingSource.DataMember = "Roles";
            this.rolesBindingSource.DataSource = this._spare_parts_branch_dbDataSet;
            // 
            // _spare_parts_branch_dbDataSet
            // 
            this._spare_parts_branch_dbDataSet.DataSetName = "_spare_parts_branch_dbDataSet";
            this._spare_parts_branch_dbDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // rolesTableAdapter
            // 
            this.rolesTableAdapter.ClearBeforeFill = true;
            // 
            // _spare_parts_branch_dbDataSet1
            // 
            this._spare_parts_branch_dbDataSet1.DataSetName = "_spare_parts_branch_dbDataSet1";
            this._spare_parts_branch_dbDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // users2BindingSource
            // 
            this.users2BindingSource.DataMember = "Users2";
            this.users2BindingSource.DataSource = this._spare_parts_branch_dbDataSet1;
            // 
            // users2TableAdapter
            // 
            this.users2TableAdapter.ClearBeforeFill = true;
            // 
            // _spare_parts_branch_dbDataSet2
            // 
            this._spare_parts_branch_dbDataSet2.DataSetName = "_spare_parts_branch_dbDataSet2";
            this._spare_parts_branch_dbDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // rolesBindingSource1
            // 
            this.rolesBindingSource1.DataMember = "Roles";
            this.rolesBindingSource1.DataSource = this._spare_parts_branch_dbDataSet2;
            // 
            // rolesTableAdapter1
            // 
            this.rolesTableAdapter1.ClearBeforeFill = true;
            // 
            // KullaniciEkle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Name = "KullaniciEkle";
            this.Text = "KullaniciEkle";
            this.Load += new System.EventHandler(this.KullaniciEkle_Load);
            ((System.ComponentModel.ISupportInitialize)(this.rolesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.users2BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._spare_parts_branch_dbDataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rolesBindingSource1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox comboBox1;
        private _spare_parts_branch_dbDataSet _spare_parts_branch_dbDataSet;
        private System.Windows.Forms.BindingSource rolesBindingSource;
        private _spare_parts_branch_dbDataSetTableAdapters.RolesTableAdapter rolesTableAdapter;
        private _spare_parts_branch_dbDataSet1 _spare_parts_branch_dbDataSet1;
        private System.Windows.Forms.BindingSource users2BindingSource;
        private _spare_parts_branch_dbDataSet1TableAdapters.Users2TableAdapter users2TableAdapter;
        private _spare_parts_branch_dbDataSet2 _spare_parts_branch_dbDataSet2;
        private System.Windows.Forms.BindingSource rolesBindingSource1;
        private _spare_parts_branch_dbDataSet2TableAdapters.RolesTableAdapter rolesTableAdapter1;
    }
}