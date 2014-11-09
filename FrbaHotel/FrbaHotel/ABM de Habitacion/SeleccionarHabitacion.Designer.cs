namespace FrbaHotel.ABM_de_Habitacion
{
    partial class SeleccionarHabitacion
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
            this.label2 = new System.Windows.Forms.Label();
            this._numero = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this._piso = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this._descripcion = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this._hotel = new System.Windows.Forms.ComboBox();
            this._tipo = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this._ubicacion = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this._aceptar = new System.Windows.Forms.Button();
            this._limpiar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Numero";
            // 
            // _numero
            // 
            this._numero.Location = new System.Drawing.Point(53, 61);
            this._numero.Name = "_numero";
            this._numero.Size = new System.Drawing.Size(46, 20);
            this._numero.TabIndex = 3;
            this._numero.TextChanged += new System.EventHandler(this._numero_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(323, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "*Complete los campos segun los cuales desea buscar la habitación";
            // 
            // _piso
            // 
            this._piso.Location = new System.Drawing.Point(141, 61);
            this._piso.Name = "_piso";
            this._piso.Size = new System.Drawing.Size(46, 20);
            this._piso.TabIndex = 6;
            this._piso.TextChanged += new System.EventHandler(this._piso_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(108, 64);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(27, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Piso";
            // 
            // _descripcion
            // 
            this._descripcion.Location = new System.Drawing.Point(281, 61);
            this._descripcion.Name = "_descripcion";
            this._descripcion.Size = new System.Drawing.Size(242, 20);
            this._descripcion.TabIndex = 8;
            this._descripcion.TextChanged += new System.EventHandler(this._descripcion_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(212, 64);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(63, 13);
            this.label5.TabIndex = 7;
            this.label5.Text = "Descripcion";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(32, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Hotel";
            // 
            // _hotel
            // 
            this._hotel.FormattingEnabled = true;
            this._hotel.Location = new System.Drawing.Point(53, 34);
            this._hotel.Name = "_hotel";
            this._hotel.Size = new System.Drawing.Size(121, 21);
            this._hotel.TabIndex = 1;
            this._hotel.SelectedIndexChanged += new System.EventHandler(this._hotel_SelectedIndexChanged);
            // 
            // _tipo
            // 
            this._tipo.FormattingEnabled = true;
            this._tipo.Location = new System.Drawing.Point(214, 34);
            this._tipo.Name = "_tipo";
            this._tipo.Size = new System.Drawing.Size(121, 21);
            this._tipo.TabIndex = 10;
            this._tipo.SelectedIndexChanged += new System.EventHandler(this._tipo_SelectedIndexChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(180, 37);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(28, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "Tipo";
            // 
            // _ubicacion
            // 
            this._ubicacion.FormattingEnabled = true;
            this._ubicacion.Location = new System.Drawing.Point(402, 34);
            this._ubicacion.Name = "_ubicacion";
            this._ubicacion.Size = new System.Drawing.Size(121, 21);
            this._ubicacion.TabIndex = 12;
            this._ubicacion.SelectedIndexChanged += new System.EventHandler(this._ubicacion_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(341, 37);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 13);
            this.label7.TabIndex = 11;
            this.label7.Text = "Ubicacion";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 148);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(511, 190);
            this.dataGridView1.TabIndex = 13;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // _aceptar
            // 
            this._aceptar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._aceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._aceptar.Location = new System.Drawing.Point(438, 105);
            this._aceptar.Name = "_aceptar";
            this._aceptar.Size = new System.Drawing.Size(85, 37);
            this._aceptar.TabIndex = 14;
            this._aceptar.Text = "Aceptar";
            this._aceptar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._aceptar.UseVisualStyleBackColor = true;
            this._aceptar.Click += new System.EventHandler(this._aceptar_Click);
            // 
            // _limpiar
            // 
            this._limpiar.Image = global::FrbaHotel.Properties.Resources.clean;
            this._limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._limpiar.Location = new System.Drawing.Point(12, 105);
            this._limpiar.Name = "_limpiar";
            this._limpiar.Size = new System.Drawing.Size(87, 36);
            this._limpiar.TabIndex = 15;
            this._limpiar.Text = "Limpiar";
            this._limpiar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._limpiar.UseVisualStyleBackColor = true;
            this._limpiar.Click += new System.EventHandler(this._limpiar_Click);
            // 
            // SeleccionarHabitacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(537, 350);
            this.Controls.Add(this._limpiar);
            this.Controls.Add(this._aceptar);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this._ubicacion);
            this.Controls.Add(this.label7);
            this.Controls.Add(this._tipo);
            this.Controls.Add(this.label6);
            this.Controls.Add(this._descripcion);
            this.Controls.Add(this.label5);
            this.Controls.Add(this._piso);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this._numero);
            this.Controls.Add(this.label2);
            this.Controls.Add(this._hotel);
            this.Controls.Add(this.label1);
            this.Name = "SeleccionarHabitacion";
            this.Text = "SeleccionarHabitacion";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox _numero;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox _piso;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox _descripcion;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox _hotel;
        private System.Windows.Forms.ComboBox _tipo;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox _ubicacion;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button _aceptar;
        private System.Windows.Forms.Button _limpiar;
    }
}