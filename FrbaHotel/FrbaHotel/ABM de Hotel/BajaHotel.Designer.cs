﻿namespace FrbaHotel.ABM_de_Hotel
{
    partial class BajaHotel
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
            this._desde = new FrbaHotel.Forms_genericos.CustomDateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this._hasta = new FrbaHotel.Forms_genericos.CustomDateTimePicker();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Desde: ";
            // 
            // _desde
            // 
            this._desde.Location = new System.Drawing.Point(55, 13);
            this._desde.Name = "_desde";
            this._desde.Size = new System.Drawing.Size(200, 20);
            this._desde.TabIndex = 1;
            this._desde.ValueChanged += new System.EventHandler(this._desde_ValueChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 44);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Hasta: ";
            // 
            // _hasta
            // 
            this._hasta.Location = new System.Drawing.Point(55, 44);
            this._hasta.Name = "_hasta";
            this._hasta.Size = new System.Drawing.Size(200, 20);
            this._hasta.TabIndex = 3;
            this._hasta.ValueChanged += new System.EventHandler(this._hasta_ValueChanged);
            // 
            // button1
            // 
            this.button1.Image = global::FrbaHotel.Properties.Resources.tilde;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button1.Location = new System.Drawing.Point(165, 70);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(90, 42);
            this.button1.TabIndex = 4;
            this.button1.Text = "Aceptar";
            this.button1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // BajaHotel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(262, 120);
            this.Controls.Add(this.button1);
            this.Controls.Add(this._hasta);
            this.Controls.Add(this.label2);
            this.Controls.Add(this._desde);
            this.Controls.Add(this.label1);
            this.Name = "BajaHotel";
            this.Text = "BajaHotel";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private FrbaHotel.Forms_genericos.CustomDateTimePicker _desde;
        private System.Windows.Forms.Label label2;
        private FrbaHotel.Forms_genericos.CustomDateTimePicker _hasta;
        private System.Windows.Forms.Button button1;
    }
}