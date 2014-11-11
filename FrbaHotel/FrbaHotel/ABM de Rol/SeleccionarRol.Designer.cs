namespace FrbaHotel.ABM_de_Rol
{
    partial class SeleccionarRol
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
            this.Nombre = new System.Windows.Forms.Label();
            this._nombre = new System.Windows.Forms.TextBox();
            this._estaActivo = new System.Windows.Forms.CheckBox();
            this._gridRoles = new System.Windows.Forms.DataGridView();
            this._buscar = new System.Windows.Forms.Button();
            this._limpiar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this._gridRoles)).BeginInit();
            this.SuspendLayout();
            // 
            // Nombre
            // 
            this.Nombre.AutoSize = true;
            this.Nombre.Location = new System.Drawing.Point(13, 16);
            this.Nombre.Name = "Nombre";
            this.Nombre.Size = new System.Drawing.Size(44, 13);
            this.Nombre.TabIndex = 0;
            this.Nombre.Text = "Nombre";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(63, 13);
            this._nombre.Name = "_nombre";
            this._nombre.Size = new System.Drawing.Size(100, 20);
            this._nombre.TabIndex = 1;
            // 
            // _estaActivo
            // 
            this._estaActivo.AutoSize = true;
            this._estaActivo.Location = new System.Drawing.Point(239, 15);
            this._estaActivo.Name = "_estaActivo";
            this._estaActivo.Size = new System.Drawing.Size(56, 17);
            this._estaActivo.TabIndex = 2;
            this._estaActivo.Text = "Activo";
            this._estaActivo.UseVisualStyleBackColor = true;
            this._estaActivo.CheckedChanged += new System.EventHandler(this._estaActivo_CheckedChanged);
            // 
            // _gridRoles
            // 
            this._gridRoles.AllowUserToAddRows = false;
            this._gridRoles.AllowUserToDeleteRows = false;
            this._gridRoles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this._gridRoles.Location = new System.Drawing.Point(16, 88);
            this._gridRoles.Name = "_gridRoles";
            this._gridRoles.ReadOnly = true;
            this._gridRoles.Size = new System.Drawing.Size(457, 206);
            this._gridRoles.TabIndex = 48;
            this._gridRoles.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this._gridRoles_CellContentClick);
            // 
            // _buscar
            // 
            this._buscar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._buscar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._buscar.Location = new System.Drawing.Point(376, 45);
            this._buscar.Name = "_buscar";
            this._buscar.Size = new System.Drawing.Size(96, 37);
            this._buscar.TabIndex = 49;
            this._buscar.Text = "Buscar";
            this._buscar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._buscar.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
            this._buscar.UseVisualStyleBackColor = true;
            this._buscar.Click += new System.EventHandler(this._buscar_Click);
            // 
            // _limpiar
            // 
            this._limpiar.Image = global::FrbaHotel.Properties.Resources.clean;
            this._limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._limpiar.Location = new System.Drawing.Point(269, 46);
            this._limpiar.Name = "_limpiar";
            this._limpiar.Size = new System.Drawing.Size(101, 36);
            this._limpiar.TabIndex = 52;
            this._limpiar.Text = "Limpiar";
            this._limpiar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._limpiar.UseVisualStyleBackColor = true;
            this._limpiar.Click += new System.EventHandler(this._limpiar_Click);
            // 
            // SeleccionarRol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(485, 306);
            this.Controls.Add(this._limpiar);
            this.Controls.Add(this._buscar);
            this.Controls.Add(this._gridRoles);
            this.Controls.Add(this._estaActivo);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.Nombre);
            this.Name = "SeleccionarRol";
            this.Text = "SeleccionarRol";
            this.Load += new System.EventHandler(this.SeleccionarRol_Load);
            ((System.ComponentModel.ISupportInitialize)(this._gridRoles)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Nombre;
        private System.Windows.Forms.TextBox _nombre;
        private System.Windows.Forms.CheckBox _estaActivo;
        private System.Windows.Forms.DataGridView _gridRoles;
        private System.Windows.Forms.Button _buscar;
        private System.Windows.Forms.Button _limpiar;
    }
}