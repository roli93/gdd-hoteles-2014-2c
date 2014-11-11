namespace FrbaHotel.ABM_de_Hotel
{
    partial class SeleccionarHotel
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
            this._nombre = new System.Windows.Forms.TextBox();
            this._paises = new System.Windows.Forms.ComboBox();
            this._estrellas = new System.Windows.Forms.ComboBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this._limpiar = new System.Windows.Forms.Button();
            this._aceptar = new System.Windows.Forms.Button();
            this._ciudades = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(218, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Pais";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Estrellas";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(218, 63);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Ciudad";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(64, 21);
            this._nombre.Name = "_nombre";
            this._nombre.Size = new System.Drawing.Size(123, 20);
            this._nombre.TabIndex = 4;
            this._nombre.TextChanged += new System.EventHandler(this._nombre_TextChanged);
            // 
            // _paises
            // 
            this._paises.FormattingEnabled = true;
            this._paises.Location = new System.Drawing.Point(251, 21);
            this._paises.Name = "_paises";
            this._paises.Size = new System.Drawing.Size(134, 21);
            this._paises.TabIndex = 6;
            this._paises.SelectedIndexChanged += new System.EventHandler(this._paises_SelectedIndexChanged);
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
            this._estrellas.Location = new System.Drawing.Point(66, 60);
            this._estrellas.Name = "_estrellas";
            this._estrellas.Size = new System.Drawing.Size(121, 21);
            this._estrellas.TabIndex = 7;
            this._estrellas.SelectedIndexChanged += new System.EventHandler(this._estrellas_SelectedIndexChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 134);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(528, 172);
            this.dataGridView1.TabIndex = 8;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // _limpiar
            // 
            this._limpiar.Image = global::FrbaHotel.Properties.Resources.clean;
            this._limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._limpiar.Location = new System.Drawing.Point(12, 87);
            this._limpiar.Name = "_limpiar";
            this._limpiar.Size = new System.Drawing.Size(86, 41);
            this._limpiar.TabIndex = 9;
            this._limpiar.Text = "Limpiar";
            this._limpiar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._limpiar.UseVisualStyleBackColor = true;
            this._limpiar.Click += new System.EventHandler(this._limpiar_Click);
            // 
            // _aceptar
            // 
            this._aceptar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._aceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._aceptar.Location = new System.Drawing.Point(454, 87);
            this._aceptar.Name = "_aceptar";
            this._aceptar.Size = new System.Drawing.Size(86, 41);
            this._aceptar.TabIndex = 10;
            this._aceptar.Text = "Aceptar";
            this._aceptar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._aceptar.UseVisualStyleBackColor = true;
            this._aceptar.Click += new System.EventHandler(this._aceptar_Click);
            // 
            // _ciudades
            // 
            this._ciudades.FormattingEnabled = true;
            this._ciudades.Location = new System.Drawing.Point(264, 60);
            this._ciudades.Name = "_ciudades";
            this._ciudades.Size = new System.Drawing.Size(121, 21);
            this._ciudades.TabIndex = 11;
            this._ciudades.SelectedIndexChanged += new System.EventHandler(this._ciudades_SelectedIndexChanged);
            // 
            // SeleccionarHotel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(552, 318);
            this.Controls.Add(this._ciudades);
            this.Controls.Add(this._aceptar);
            this.Controls.Add(this._limpiar);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this._estrellas);
            this.Controls.Add(this._paises);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "SeleccionarHotel";
            this.Text = "SeleccionarHotel";
            this.Load += new System.EventHandler(this.SeleccionarHotel_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        protected System.Windows.Forms.Label label1;
        protected System.Windows.Forms.Label label2;
        protected System.Windows.Forms.Label label3;
        protected System.Windows.Forms.Label label4;
        protected System.Windows.Forms.TextBox _nombre;
        protected System.Windows.Forms.ComboBox _paises;
        protected System.Windows.Forms.ComboBox _estrellas;
        protected System.Windows.Forms.DataGridView dataGridView1;
        protected System.Windows.Forms.Button _limpiar;
        protected System.Windows.Forms.Button _aceptar;
        protected System.Windows.Forms.ComboBox _ciudades;

    }
}