namespace FrbaHotel.ABM_de_Habitacion
{
    partial class ABMHabitacion
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
            this.SuspendLayout();
            // 
            // radioAlta
            // 
            this.radioAlta.Size = new System.Drawing.Size(147, 17);
            this.radioAlta.Text = "Crear  un algo desde cero";
            // 
            // radioModificacion
            // 
            this.radioModificacion.Size = new System.Drawing.Size(191, 17);
            this.radioModificacion.Text = "Ver y/o modificar  un algo existente";
            // 
            // radioBaja
            // 
            this.radioBaja.Size = new System.Drawing.Size(102, 17);
            this.radioBaja.Text = "Eliminar  un algo";
            // 
            // ABMHabitacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(285, 140);
            this.Name = "ABMHabitacion";
            this.Text = "ABMHabitacion";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
    }
}