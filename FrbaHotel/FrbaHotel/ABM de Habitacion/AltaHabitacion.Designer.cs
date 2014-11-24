namespace FrbaHotel.ABM_de_Habitacion
{
    partial class AltaHabitacion
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
            this._hotel = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this._tipo = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this._descripcion = new System.Windows.Forms.TextBox();
            this._numero = new System.Windows.Forms.TextBox();
            this._piso = new System.Windows.Forms.TextBox();
            this._ubicacion = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // _hotel
            // 
            this._hotel.FormattingEnabled = true;
            this._hotel.Location = new System.Drawing.Point(54, 10);
            this._hotel.Name = "_hotel";
            this._hotel.Size = new System.Drawing.Size(218, 21);
            this._hotel.TabIndex = 0;
            this._hotel.SelectedIndexChanged += new System.EventHandler(this._hotel_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(32, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Hotel";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Piso";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 62);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Habitacion";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 92);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(55, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Ubicacion";
            // 
            // _tipo
            // 
            this._tipo.FormattingEnabled = true;
            this._tipo.Location = new System.Drawing.Point(54, 116);
            this._tipo.Name = "_tipo";
            this._tipo.Size = new System.Drawing.Size(218, 21);
            this._tipo.TabIndex = 5;
            this._tipo.SelectedIndexChanged += new System.EventHandler(this._tipo_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(14, 119);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(28, 13);
            this.label5.TabIndex = 6;
            this.label5.Text = "Tipo";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(14, 146);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Descripcion";
            // 
            // _descripcion
            // 
            this._descripcion.Location = new System.Drawing.Point(83, 143);
            this._descripcion.Name = "_descripcion";
            this._descripcion.Size = new System.Drawing.Size(190, 20);
            this._descripcion.TabIndex = 8;
            this._descripcion.TextChanged += new System.EventHandler(this._descripcion_TextChanged);
            // 
            // _numero
            // 
            this._numero.Location = new System.Drawing.Point(77, 63);
            this._numero.Name = "_numero";
            this._numero.Size = new System.Drawing.Size(77, 20);
            this._numero.TabIndex = 10;
            this._numero.TextChanged += new System.EventHandler(this._numero_TextChanged);
            // 
            // _piso
            // 
            this._piso.Location = new System.Drawing.Point(77, 37);
            this._piso.Name = "_piso";
            this._piso.Size = new System.Drawing.Size(43, 20);
            this._piso.TabIndex = 11;
            // 
            // _ubicacion
            // 
            this._ubicacion.FormattingEnabled = true;
            this._ubicacion.Items.AddRange(new object[] {
            "Interior",
            "Exterior"});
            this._ubicacion.Location = new System.Drawing.Point(77, 89);
            this._ubicacion.Name = "_ubicacion";
            this._ubicacion.Size = new System.Drawing.Size(137, 21);
            this._ubicacion.TabIndex = 12;
            this._ubicacion.SelectedIndexChanged += new System.EventHandler(this._ubicacion_SelectedIndexChanged);
            // 
            // button1
            // 
            this.button1.Image = global::FrbaHotel.Properties.Resources.tilde;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button1.Location = new System.Drawing.Point(167, 184);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(104, 41);
            this.button1.TabIndex = 13;
            this.button1.Text = "Aceptar";
            this.button1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.Aceptar);
            // 
            // button2
            // 
            this.button2.Image = global::FrbaHotel.Properties.Resources.clean;
            this.button2.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button2.Location = new System.Drawing.Point(17, 184);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(104, 41);
            this.button2.TabIndex = 14;
            this.button2.Text = "Limpiar";
            this.button2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.Cancelar);
            // 
            // AltaHabitacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 235);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this._ubicacion);
            this.Controls.Add(this._piso);
            this.Controls.Add(this._numero);
            this.Controls.Add(this._descripcion);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this._tipo);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this._hotel);
            this.Name = "AltaHabitacion";
            this.Text = "AltaHabitacion";
            this.Load += new System.EventHandler(this.AltaHabitacion_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        protected System.Windows.Forms.ComboBox _hotel;
        protected System.Windows.Forms.ComboBox _tipo;
        protected System.Windows.Forms.TextBox _descripcion;
        protected System.Windows.Forms.TextBox _numero;
        protected System.Windows.Forms.TextBox _piso;
        protected System.Windows.Forms.ComboBox _ubicacion;
    }
}