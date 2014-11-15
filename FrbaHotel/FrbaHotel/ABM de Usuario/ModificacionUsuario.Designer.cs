namespace FrbaHotel.ABM_de_Usuario
{
    partial class ModificacionUsuario
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
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // _password
            // 
            this._password.UseSystemPasswordChar = true;
            // 
            // _confirmarPassword
            // 
            this._confirmarPassword.UseSystemPasswordChar = true;
            // 
            // _direccion
            // 
            this._direccion.TextChanged += new System.EventHandler(this._direccion_TextChanged);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Value = new System.DateTime(2014, 11, 15, 19, 57, 38, 983);
            // 
            // ModificacionUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(612, 314);
            this.Name = "ModificacionUsuario";
            this.Text = "Modificacion Usuario";
            this.Load += new System.EventHandler(this.ModificacionUsuario_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
    }
}