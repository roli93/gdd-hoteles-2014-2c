namespace FrbaHotel
{
    partial class ABM
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        private string entityName;

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
            this.botonContinuar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.radioAlta = new System.Windows.Forms.RadioButton();
            this.radioModificacion = new System.Windows.Forms.RadioButton();
            this.radioBaja = new System.Windows.Forms.RadioButton();
            this.SuspendLayout();
            // 
            // botonContinuar
            // 
            this.botonContinuar.Location = new System.Drawing.Point(135, 117);
            this.botonContinuar.Name = "botonContinuar";
            this.botonContinuar.Size = new System.Drawing.Size(75, 23);
            this.botonContinuar.TabIndex = 0;
            this.botonContinuar.Text = "Continuar >>";
            this.botonContinuar.UseVisualStyleBackColor = true;
            this.botonContinuar.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(198, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Seleccione la acción que desea realizar:";
            // 
            // radioAlta
            // 
            this.radioAlta.AutoSize = true;
            this.radioAlta.Location = new System.Drawing.Point(37, 36);
            this.radioAlta.Name = "radioAlta";
            this.radioAlta.Size = new System.Drawing.Size(14, 13);
            this.radioAlta.TabIndex = 2;
            this.radioAlta.TabStop = true;
            this.radioAlta.UseVisualStyleBackColor = true;
            this.radioAlta.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // radioModificacion
            // 
            this.radioModificacion.AutoSize = true;
            this.radioModificacion.Location = new System.Drawing.Point(37, 59);
            this.radioModificacion.Name = "radioModificacion";
            this.radioModificacion.Size = new System.Drawing.Size(14, 13);
            this.radioModificacion.TabIndex = 3;
            this.radioModificacion.TabStop = true;
            this.radioModificacion.UseVisualStyleBackColor = true;
            this.radioModificacion.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioBaja
            // 
            this.radioBaja.AutoSize = true;
            this.radioBaja.Location = new System.Drawing.Point(37, 82);
            this.radioBaja.Name = "radioBaja";
            this.radioBaja.Size = new System.Drawing.Size(14, 13);
            this.radioBaja.TabIndex = 4;
            this.radioBaja.TabStop = true;
            this.radioBaja.UseVisualStyleBackColor = true;
            // 
            // ABM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(217, 146);
            this.Controls.Add(this.radioBaja);
            this.Controls.Add(this.radioModificacion);
            this.Controls.Add(this.radioAlta);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.botonContinuar);
            this.Name = "ABM";
            this.Load += new System.EventHandler(this.ABM_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button botonContinuar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RadioButton radioAlta;
        private System.Windows.Forms.RadioButton radioModificacion;
        private System.Windows.Forms.RadioButton radioBaja;
    }
}