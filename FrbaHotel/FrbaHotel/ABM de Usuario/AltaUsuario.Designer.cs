namespace FrbaHotel.ABM_de_Usuario
{
    partial class AltaUsuario
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
            this.usernameLabel = new System.Windows.Forms.Label();
            this._username = new System.Windows.Forms.TextBox();
            this._password = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.checkedListBox2 = new System.Windows.Forms.CheckedListBox();
            this.checkedListBox1 = new System.Windows.Forms.CheckedListBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this._confirmarPassword = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this._nombre = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this._mail = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this._direccion = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this._apellido = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this._nroDocumento = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this._telefono = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // usernameLabel
            // 
            this.usernameLabel.AutoSize = true;
            this.usernameLabel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.usernameLabel.Location = new System.Drawing.Point(6, 27);
            this.usernameLabel.Name = "usernameLabel";
            this.usernameLabel.Size = new System.Drawing.Size(101, 15);
            this.usernameLabel.TabIndex = 0;
            this.usernameLabel.Text = "Nombre de usuario:";
            this.usernameLabel.Click += new System.EventHandler(this.usernameLabel_Click);
            // 
            // _username
            // 
            this._username.Location = new System.Drawing.Point(113, 24);
            this._username.Name = "_username";
            this._username.Size = new System.Drawing.Size(103, 20);
            this._username.TabIndex = 1;
            this._username.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // _password
            // 
            this._password.Location = new System.Drawing.Point(113, 62);
            this._password.Name = "_password";
            this._password.Size = new System.Drawing.Size(103, 20);
            this._password.TabIndex = 3;
            this._password.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label1.Location = new System.Drawing.Point(41, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 15);
            this.label1.TabIndex = 2;
            this.label1.Text = "Contraseña:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label3.Location = new System.Drawing.Point(222, 27);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(39, 15);
            this.label3.TabIndex = 6;
            this.label3.Text = "Roles:";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.checkedListBox2);
            this.groupBox1.Controls.Add(this.checkedListBox1);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this._confirmarPassword);
            this.groupBox1.Controls.Add(this.usernameLabel);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this._username);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this._password);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(591, 128);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Inicio de Sesión";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // checkedListBox2
            // 
            this.checkedListBox2.FormattingEnabled = true;
            this.checkedListBox2.Location = new System.Drawing.Point(450, 24);
            this.checkedListBox2.Name = "checkedListBox2";
            this.checkedListBox2.Size = new System.Drawing.Size(135, 94);
            this.checkedListBox2.TabIndex = 11;
            this.checkedListBox2.SelectedIndexChanged += new System.EventHandler(this.checkedListBox2_SelectedIndexChanged);
            // 
            // checkedListBox1
            // 
            this.checkedListBox1.FormattingEnabled = true;
            this.checkedListBox1.Location = new System.Drawing.Point(267, 24);
            this.checkedListBox1.Name = "checkedListBox1";
            this.checkedListBox1.Size = new System.Drawing.Size(123, 94);
            this.checkedListBox1.TabIndex = 10;
            this.checkedListBox1.SelectedIndexChanged += new System.EventHandler(this.checkedListBox1_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label4.Location = new System.Drawing.Point(5, 104);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(102, 15);
            this.label4.TabIndex = 7;
            this.label4.Text = "Repetir contraseña:";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label12.Location = new System.Drawing.Point(396, 24);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(48, 15);
            this.label12.TabIndex = 25;
            this.label12.Text = "Hoteles:";
            // 
            // _confirmarPassword
            // 
            this._confirmarPassword.Location = new System.Drawing.Point(113, 101);
            this._confirmarPassword.Name = "_confirmarPassword";
            this._confirmarPassword.Size = new System.Drawing.Size(103, 20);
            this._confirmarPassword.TabIndex = 8;
            this._confirmarPassword.TextChanged += new System.EventHandler(this.textBox5_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label2.Location = new System.Drawing.Point(56, 149);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 15);
            this.label2.TabIndex = 9;
            this.label2.Text = "Nombre:";
            // 
            // _nombre
            // 
            this._nombre.Location = new System.Drawing.Point(111, 146);
            this._nombre.Name = "_nombre";
            this._nombre.Size = new System.Drawing.Size(185, 20);
            this._nombre.TabIndex = 10;
            this._nombre.TextChanged += new System.EventHandler(this.textBox3_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label6.Location = new System.Drawing.Point(12, 214);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(93, 15);
            this.label6.TabIndex = 13;
            this.label6.Text = "Dirección de mail:";
            // 
            // _mail
            // 
            this._mail.Location = new System.Drawing.Point(111, 211);
            this._mail.Name = "_mail";
            this._mail.Size = new System.Drawing.Size(185, 20);
            this._mail.TabIndex = 14;
            this._mail.TextChanged += new System.EventHandler(this.textBox6_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label7.Location = new System.Drawing.Point(48, 244);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 15);
            this.label7.TabIndex = 15;
            this.label7.Text = "Dirección:";
            // 
            // _direccion
            // 
            this._direccion.Location = new System.Drawing.Point(111, 241);
            this._direccion.Name = "_direccion";
            this._direccion.Size = new System.Drawing.Size(185, 20);
            this._direccion.TabIndex = 16;
            this._direccion.TextChanged += new System.EventHandler(this.textBox7_TextChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label8.Location = new System.Drawing.Point(380, 149);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(49, 15);
            this.label8.TabIndex = 17;
            this.label8.Text = "Apellido:";
            // 
            // _apellido
            // 
            this._apellido.Location = new System.Drawing.Point(435, 146);
            this._apellido.Name = "_apellido";
            this._apellido.Size = new System.Drawing.Size(152, 20);
            this._apellido.TabIndex = 18;
            this._apellido.TextChanged += new System.EventHandler(this.textBox8_TextChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label9.Location = new System.Drawing.Point(23, 184);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(82, 15);
            this.label9.TabIndex = 19;
            this.label9.Text = "Nº Documento:";
            // 
            // _nroDocumento
            // 
            this._nroDocumento.Location = new System.Drawing.Point(111, 179);
            this._nroDocumento.Name = "_nroDocumento";
            this._nroDocumento.Size = new System.Drawing.Size(185, 20);
            this._nroDocumento.TabIndex = 20;
            this._nroDocumento.TextChanged += new System.EventHandler(this.textBox9_TextChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label10.Location = new System.Drawing.Point(316, 214);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(113, 15);
            this.label10.TabIndex = 21;
            this.label10.Text = "Teléfono(sin guiones):";
            // 
            // _telefono
            // 
            this._telefono.Location = new System.Drawing.Point(435, 211);
            this._telefono.Name = "_telefono";
            this._telefono.Size = new System.Drawing.Size(152, 20);
            this._telefono.TabIndex = 22;
            this._telefono.TextChanged += new System.EventHandler(this.textBox10_TextChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label11.Location = new System.Drawing.Point(396, 182);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(33, 15);
            this.label11.TabIndex = 24;
            this.label11.Text = "Tipo:";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(435, 240);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(152, 20);
            this.dateTimePicker1.TabIndex = 37;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.button2.Image = global::FrbaHotel.Properties.Resources.tilde;
            this.button2.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button2.Location = new System.Drawing.Point(517, 266);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(86, 37);
            this.button2.TabIndex = 36;
            this.button2.Text = "Guardar";
            this.button2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.button1.Image = global::FrbaHotel.Properties.Resources.clean;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.button1.Location = new System.Drawing.Point(12, 266);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(86, 37);
            this.button1.TabIndex = 35;
            this.button1.Text = "Limpiar";
            this.button1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label5.Location = new System.Drawing.Point(364, 244);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 15);
            this.label5.TabIndex = 38;
            this.label5.Text = "Nacimiento:";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(435, 178);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(152, 21);
            this.comboBox1.TabIndex = 39;
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // AltaUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(615, 314);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label10);
            this.Controls.Add(this._telefono);
            this.Controls.Add(this.label9);
            this.Controls.Add(this._nroDocumento);
            this.Controls.Add(this.label8);
            this.Controls.Add(this._apellido);
            this.Controls.Add(this.label7);
            this.Controls.Add(this._direccion);
            this.Controls.Add(this.label6);
            this.Controls.Add(this._mail);
            this.Controls.Add(this.label2);
            this.Controls.Add(this._nombre);
            this.Controls.Add(this.groupBox1);
            this.Name = "AltaUsuario";
            this.Text = "Alta de Usuario";
            this.Load += new System.EventHandler(this.AltaUsuario_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        protected System.Windows.Forms.Label usernameLabel;
        protected System.Windows.Forms.TextBox _username;
        protected System.Windows.Forms.TextBox _password;
        protected System.Windows.Forms.Label label1;
        protected System.Windows.Forms.Label label3;
        protected System.Windows.Forms.GroupBox groupBox1;
        protected System.Windows.Forms.Label label4;
        protected System.Windows.Forms.TextBox _confirmarPassword;
        protected System.Windows.Forms.Label label2;
        protected System.Windows.Forms.TextBox _nombre;
        protected System.Windows.Forms.Label label6;
        protected System.Windows.Forms.TextBox _mail;
        protected System.Windows.Forms.Label label7;
        protected System.Windows.Forms.TextBox _direccion;
        protected System.Windows.Forms.Label label8;
        protected System.Windows.Forms.TextBox _apellido;
        protected System.Windows.Forms.Label label9;
        protected System.Windows.Forms.TextBox _nroDocumento;
        protected System.Windows.Forms.Label label10;
        protected System.Windows.Forms.TextBox _telefono;
        protected System.Windows.Forms.Label label11;
        protected System.Windows.Forms.Label label12;
        protected System.Windows.Forms.Button button1;
        protected System.Windows.Forms.Button button2;
        protected System.Windows.Forms.DateTimePicker dateTimePicker1;
        protected System.Windows.Forms.CheckedListBox checkedListBox1;
        protected System.Windows.Forms.CheckedListBox checkedListBox2;
        protected System.Windows.Forms.Label label5;
        protected System.Windows.Forms.ComboBox comboBox1;
    }
}