namespace FrbaHotel.ABM_de_Hotel
{
    partial class AltaHotel
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this._nombre = new System.Windows.Forms.TextBox();
            this._email = new System.Windows.Forms.TextBox();
            this._telefono = new System.Windows.Forms.TextBox();
            this._calle = new System.Windows.Forms.TextBox();
            this._estrellas = new System.Windows.Forms.ComboBox();
            this._paises = new System.Windows.Forms.ComboBox();
            this._ciudades = new System.Windows.Forms.ComboBox();
            this._regimenes = new System.Windows.Forms.CheckedListBox();
            this._fecha = new FrbaHotel.Forms_genericos.CustomDateTimePicker();
            this._aceptar = new System.Windows.Forms.Button();
            this._limpiar = new System.Windows.Forms.Button();
            this._altura = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Email";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 67);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(49, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Telefono";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 93);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(30, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Calle";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 119);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(46, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Estrellas";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 173);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(40, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Ciudad";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 146);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(27, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Pais";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(13, 207);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(60, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Regimenes";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 298);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(97, 13);
            this.label9.TabIndex = 8;
            this.label9.Text = "Fecha de Creacion";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(63, 12);
            this._nombre.Name = "_nombre";
            this._nombre.Size = new System.Drawing.Size(194, 20);
            this._nombre.TabIndex = 9;
            this._nombre.TextChanged += new System.EventHandler(this._nombre_TextChanged);
            // 
            // _email
            // 
            this._email.Location = new System.Drawing.Point(63, 38);
            this._email.Name = "_email";
            this._email.Size = new System.Drawing.Size(194, 20);
            this._email.TabIndex = 10;
            this._email.TextChanged += new System.EventHandler(this._email_TextChanged);
            // 
            // _telefono
            // 
            this._telefono.Location = new System.Drawing.Point(68, 64);
            this._telefono.Name = "_telefono";
            this._telefono.Size = new System.Drawing.Size(194, 20);
            this._telefono.TabIndex = 11;
            this._telefono.TextChanged += new System.EventHandler(this._telefono_TextChanged);
            // 
            // _calle
            // 
            this._calle.Location = new System.Drawing.Point(49, 90);
            this._calle.Name = "_calle";
            this._calle.Size = new System.Drawing.Size(135, 20);
            this._calle.TabIndex = 12;
            this._calle.TextChanged += new System.EventHandler(this._calle_TextChanged);
            // 
            // _estrellas
            // 
            this._estrellas.FormattingEnabled = true;
            this._estrellas.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5"});
            this._estrellas.Location = new System.Drawing.Point(68, 116);
            this._estrellas.Name = "_estrellas";
            this._estrellas.Size = new System.Drawing.Size(51, 21);
            this._estrellas.TabIndex = 13;
            this._estrellas.SelectedIndexChanged += new System.EventHandler(this._estrellas_SelectedIndexChanged);
            // 
            // _paises
            // 
            this._paises.FormattingEnabled = true;
            this._paises.Location = new System.Drawing.Point(58, 143);
            this._paises.Name = "_paises";
            this._paises.Size = new System.Drawing.Size(148, 21);
            this._paises.TabIndex = 14;
            this._paises.SelectedIndexChanged += new System.EventHandler(this._paises_SelectedIndexChanged);
            // 
            // _ciudades
            // 
            this._ciudades.FormattingEnabled = true;
            this._ciudades.Location = new System.Drawing.Point(58, 170);
            this._ciudades.Name = "_ciudades";
            this._ciudades.Size = new System.Drawing.Size(148, 21);
            this._ciudades.TabIndex = 15;
            this._ciudades.SelectedIndexChanged += new System.EventHandler(this._ciudades_SelectedIndexChanged);
            // 
            // _regimenes
            // 
            this._regimenes.FormattingEnabled = true;
            this._regimenes.Location = new System.Drawing.Point(79, 198);
            this._regimenes.Name = "_regimenes";
            this._regimenes.Size = new System.Drawing.Size(120, 94);
            this._regimenes.TabIndex = 16;
            this._regimenes.SelectedIndexChanged += new System.EventHandler(this._regimenes_SelectedIndexChanged);
            // 
            // _fecha
            // 
            this._fecha.Location = new System.Drawing.Point(115, 298);
            this._fecha.Name = "_fecha";
            this._fecha.Size = new System.Drawing.Size(200, 20);
            this._fecha.TabIndex = 17;
            this._fecha.ValueChanged += new System.EventHandler(this._fecha_ValueChanged);
            // 
            // _aceptar
            // 
            this._aceptar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._aceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._aceptar.Location = new System.Drawing.Point(212, 326);
            this._aceptar.Name = "_aceptar";
            this._aceptar.Size = new System.Drawing.Size(103, 39);
            this._aceptar.TabIndex = 20;
            this._aceptar.Text = "Aceptar";
            this._aceptar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._aceptar.UseVisualStyleBackColor = true;
            this._aceptar.Click += new System.EventHandler(this._aceptar_Click);
            // 
            // _limpiar
            // 
            this._limpiar.Image = global::FrbaHotel.Properties.Resources.clean;
            this._limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._limpiar.Location = new System.Drawing.Point(16, 326);
            this._limpiar.Name = "_limpiar";
            this._limpiar.Size = new System.Drawing.Size(103, 39);
            this._limpiar.TabIndex = 19;
            this._limpiar.Text = "Limpiar\r\n";
            this._limpiar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._limpiar.UseVisualStyleBackColor = true;
            this._limpiar.Click += new System.EventHandler(this._limpiar_Click);
            // 
            // _altura
            // 
            this._altura.Location = new System.Drawing.Point(230, 90);
            this._altura.Name = "_altura";
            this._altura.Size = new System.Drawing.Size(85, 20);
            this._altura.TabIndex = 22;
            this._altura.TextChanged += new System.EventHandler(this._altura_TextChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(190, 93);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(34, 13);
            this.label10.TabIndex = 21;
            this.label10.Text = "Altura";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(230, 116);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(85, 20);
            this.textBox1.TabIndex = 24;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(134, 119);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(90, 13);
            this.label11.TabIndex = 23;
            this.label11.Text = "Recargo Estrellas";
            this.label11.Click += new System.EventHandler(this.label11_Click);
            // 
            // AltaHotel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(330, 376);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label11);
            this.Controls.Add(this._altura);
            this.Controls.Add(this.label10);
            this.Controls.Add(this._aceptar);
            this.Controls.Add(this._limpiar);
            this.Controls.Add(this._fecha);
            this.Controls.Add(this._regimenes);
            this.Controls.Add(this._ciudades);
            this.Controls.Add(this._paises);
            this.Controls.Add(this._estrellas);
            this.Controls.Add(this._calle);
            this.Controls.Add(this._telefono);
            this.Controls.Add(this._email);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "AltaHotel";
            this.Text = "AltaHotel";
            this.Load += new System.EventHandler(this.AltaHotel_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        protected System.Windows.Forms.Button _limpiar;
        protected System.Windows.Forms.Button _aceptar;
        protected System.Windows.Forms.Label label6;
        protected System.Windows.Forms.Label label7;
        protected System.Windows.Forms.Label label8;
        protected System.Windows.Forms.Label label9;
        protected System.Windows.Forms.TextBox _nombre;
        protected System.Windows.Forms.TextBox _email;
        protected System.Windows.Forms.TextBox _telefono;
        protected System.Windows.Forms.TextBox _calle;
        protected System.Windows.Forms.ComboBox _estrellas;
        protected System.Windows.Forms.ComboBox _paises;
        protected System.Windows.Forms.ComboBox _ciudades;
        protected System.Windows.Forms.CheckedListBox _regimenes;
        protected FrbaHotel.Forms_genericos.CustomDateTimePicker _fecha;
        protected System.Windows.Forms.Label label1;
        protected System.Windows.Forms.Label label2;
        protected System.Windows.Forms.Label label3;
        protected System.Windows.Forms.Label label4;
        protected System.Windows.Forms.Label label5;
        protected System.Windows.Forms.TextBox _altura;
        protected System.Windows.Forms.Label label10;
        protected System.Windows.Forms.TextBox textBox1;
        protected System.Windows.Forms.Label label11;
    }
}