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
            this.label1 = new System.Windows.Forms.Label();
            this._id = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this._gridRoles)).BeginInit();
            this.SuspendLayout();
            // 
            // Nombre
            // 
            this.Nombre.AutoSize = true;
            this.Nombre.Location = new System.Drawing.Point(16, 48);
            this.Nombre.Name = "Nombre";
            this.Nombre.Size = new System.Drawing.Size(44, 13);
            this.Nombre.TabIndex = 0;
            this.Nombre.Text = "Nombre";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(66, 45);
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
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(16, 13);
            this.label1.TabIndex = 50;
            this.label1.Text = "Id";
            // 
            // _id
            // 
            this._id.Location = new System.Drawing.Point(66, 13);
            this._id.Name = "_id";
            this._id.Size = new System.Drawing.Size(100, 20);
            this._id.TabIndex = 51;
            this._id.TextChanged += new System.EventHandler(this._id_TextChanged);
            // 
            // SeleccionarRol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(485, 306);
            this.Controls.Add(this._id);
            this.Controls.Add(this.label1);
            this.Controls.Add(this._buscar);
            this.Controls.Add(this._gridRoles);
            this.Controls.Add(this._estaActivo);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.Nombre);
            this.Name = "SeleccionarRol";
            this.Text = "SeleccionarRol";
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
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox _id;
    }
}