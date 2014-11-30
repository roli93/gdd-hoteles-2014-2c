namespace FrbaHotel.ABM_de_Rol
{
    partial class AltaRol
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
            this._nombre = new System.Windows.Forms.TextBox();
            this.FuncLabel = new System.Windows.Forms.Label();
            this._aceptar = new System.Windows.Forms.Button();
            this._habilitado = new System.Windows.Forms.CheckBox();
            this._funcionalidadesCLB = new System.Windows.Forms.CheckedListBox();
            this._limpiar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(13, 30);
            this._nombre.Name = "_nombre";
            this._nombre.Size = new System.Drawing.Size(100, 20);
            this._nombre.TabIndex = 1;
            this._nombre.TextChanged += new System.EventHandler(this._nombre_TextChanged);
            // 
            // FuncLabel
            // 
            this.FuncLabel.AutoSize = true;
            this.FuncLabel.Location = new System.Drawing.Point(16, 57);
            this.FuncLabel.Name = "FuncLabel";
            this.FuncLabel.Size = new System.Drawing.Size(84, 13);
            this.FuncLabel.TabIndex = 2;
            this.FuncLabel.Text = "Funcionalidades";
            // 
            // _aceptar
            // 
            this._aceptar.Image = global::FrbaHotel.Properties.Resources.tilde;
            this._aceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._aceptar.Location = new System.Drawing.Point(180, 209);
            this._aceptar.Name = "_aceptar";
            this._aceptar.Size = new System.Drawing.Size(92, 40);
            this._aceptar.TabIndex = 5;
            this._aceptar.Text = "Aceptar";
            this._aceptar.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
            this._aceptar.UseVisualStyleBackColor = true;
            this._aceptar.Click += new System.EventHandler(this._aceptar_Click);
            // 
            // _habilitado
            // 
            this._habilitado.AutoSize = true;
            this._habilitado.Location = new System.Drawing.Point(16, 194);
            this._habilitado.Name = "_habilitado";
            this._habilitado.Size = new System.Drawing.Size(73, 17);
            this._habilitado.TabIndex = 7;
            this._habilitado.Text = "Habilitado";
            this._habilitado.UseVisualStyleBackColor = true;
            this._habilitado.CheckedChanged += new System.EventHandler(this._habilitado_CheckedChanged);
            // 
            // _funcionalidadesCLB
            // 
            this._funcionalidadesCLB.Location = new System.Drawing.Point(12, 73);
            this._funcionalidadesCLB.Name = "_funcionalidadesCLB";
            this._funcionalidadesCLB.Size = new System.Drawing.Size(120, 94);
            this._funcionalidadesCLB.TabIndex = 9;
            this._funcionalidadesCLB.SelectedIndexChanged += new System.EventHandler(this._funcionalidadesCLB_SelectedIndexChanged);
            // 
            // _limpiar
            // 
            this._limpiar.Image = global::FrbaHotel.Properties.Resources.clean;
            this._limpiar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this._limpiar.Location = new System.Drawing.Point(180, 170);
            this._limpiar.Name = "_limpiar";
            this._limpiar.Size = new System.Drawing.Size(92, 33);
            this._limpiar.TabIndex = 10;
            this._limpiar.Text = "Limpiar";
            this._limpiar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._limpiar.UseVisualStyleBackColor = true;
            this._limpiar.Click += new System.EventHandler(this._limpiar_Click);
            // 
            // AltaRol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this._limpiar);
            this.Controls.Add(this._funcionalidadesCLB);
            this.Controls.Add(this._habilitado);
            this.Controls.Add(this._aceptar);
            this.Controls.Add(this.FuncLabel);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.label1);
            this.Name = "AltaRol";
            this.Text = "AltaRol";
            this.Load += new System.EventHandler(this.AltaRol_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        protected System.Windows.Forms.Label label1;
        protected System.Windows.Forms.TextBox _nombre;
        protected System.Windows.Forms.Button _aceptar;
        protected System.Windows.Forms.CheckBox _habilitado;
        protected System.Windows.Forms.CheckedListBox _funcionalidadesCLB;
        protected System.Windows.Forms.Label FuncLabel;
        protected System.Windows.Forms.Button _limpiar;
    }
}