namespace FrbaHotel.Listado_Estadistico
{
    partial class ListadoEstadistico
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
            this.Label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this._anio = new System.Windows.Forms.TextBox();
            this._trimestre = new System.Windows.Forms.ComboBox();
            this._seleccionar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Label1
            // 
            this.Label1.AutoSize = true;
            this.Label1.Location = new System.Drawing.Point(13, 16);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(26, 13);
            this.Label1.TabIndex = 0;
            this.Label1.Text = "Año";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(50, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Trimestre";
            // 
            // _anio
            // 
            this._anio.Location = new System.Drawing.Point(55, 13);
            this._anio.Name = "_anio";
            this._anio.Size = new System.Drawing.Size(100, 20);
            this._anio.TabIndex = 2;
            this._anio.TextChanged += new System.EventHandler(this._anio_TextChanged);
            // 
            // _trimestre
            // 
            this._trimestre.FormattingEnabled = true;
            this._trimestre.Items.AddRange(new object[] {
            "1 - Enero - Marzo",
            "2 - Abril - Junio",
            "3 - Julio - Septiembre",
            "4 - Octubre - Diciembre"});
            this._trimestre.Location = new System.Drawing.Point(68, 48);
            this._trimestre.Name = "_trimestre";
            this._trimestre.Size = new System.Drawing.Size(87, 21);
            this._trimestre.TabIndex = 3;
            this._trimestre.SelectedIndexChanged += new System.EventHandler(this._trimestre_SelectedIndexChanged);
            // 
            // _seleccionar
            // 
            this._seleccionar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._seleccionar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._seleccionar.Location = new System.Drawing.Point(210, 33);
            this._seleccionar.Name = "_seleccionar";
            this._seleccionar.Size = new System.Drawing.Size(101, 36);
            this._seleccionar.TabIndex = 4;
            this._seleccionar.Text = "Confirmar";
            this._seleccionar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._seleccionar.UseVisualStyleBackColor = true;
            this._seleccionar.Click += new System.EventHandler(this._seleccionar_Click);
            // 
            // ListadoEstadistico
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(322, 82);
            this.Controls.Add(this._seleccionar);
            this.Controls.Add(this._trimestre);
            this.Controls.Add(this._anio);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Label1);
            this.Name = "ListadoEstadistico";
            this.Text = "ListadoEstadistico";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox _anio;
        private System.Windows.Forms.ComboBox _trimestre;
        private System.Windows.Forms.Button _seleccionar;
    }
}