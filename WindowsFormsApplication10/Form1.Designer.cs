﻿namespace WindowsFormsApplication10
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            this.database1DataSet = new WindowsFormsApplication10.Database1DataSet();
            this.dataBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataTableAdapter = new WindowsFormsApplication10.Database1DataSetTableAdapters.DataTableAdapter();
            this.tableAdapterManager = new WindowsFormsApplication10.Database1DataSetTableAdapters.TableAdapterManager();
            this.taskTableAdapter = new WindowsFormsApplication10.Database1DataSetTableAdapters.TaskTableAdapter();
            this.button1 = new System.Windows.Forms.Button();
            this.taskBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.aToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.a1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.a2ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.b1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.b2ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.c1ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.mainViewDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.mainViewBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.mainViewTableAdapter = new WindowsFormsApplication10.Database1DataSetTableAdapters.mainViewTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.database1DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.taskBindingSource)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mainViewDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mainViewBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // database1DataSet
            // 
            this.database1DataSet.DataSetName = "Database1DataSet";
            this.database1DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // dataBindingSource
            // 
            this.dataBindingSource.DataMember = "Data";
            this.dataBindingSource.DataSource = this.database1DataSet;
            // 
            // dataTableAdapter
            // 
            this.dataTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.DataTableAdapter = this.dataTableAdapter;
            this.tableAdapterManager.inTableAdapter = null;
            this.tableAdapterManager.ProgrammerTableAdapter = null;
            this.tableAdapterManager.SprintTableAdapter = null;
            this.tableAdapterManager.StoryTableAdapter = null;
            this.tableAdapterManager.TaskTableAdapter = this.taskTableAdapter;
            this.tableAdapterManager.UpdateOrder = WindowsFormsApplication10.Database1DataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            this.tableAdapterManager.Work_hoursTableAdapter = null;
            // 
            // taskTableAdapter
            // 
            this.taskTableAdapter.ClearBeforeFill = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(0, 0);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // taskBindingSource
            // 
            this.taskBindingSource.DataMember = "Task";
            this.taskBindingSource.DataSource = this.database1DataSet;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aToolStripMenuItem,
            this.bToolStripMenuItem,
            this.cToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(756, 24);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // aToolStripMenuItem
            // 
            this.aToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.a1ToolStripMenuItem,
            this.a2ToolStripMenuItem});
            this.aToolStripMenuItem.Name = "aToolStripMenuItem";
            this.aToolStripMenuItem.Size = new System.Drawing.Size(27, 20);
            this.aToolStripMenuItem.Text = "A";
            // 
            // a1ToolStripMenuItem
            // 
            this.a1ToolStripMenuItem.Name = "a1ToolStripMenuItem";
            this.a1ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.a1ToolStripMenuItem.Text = "A1";
            this.a1ToolStripMenuItem.Click += new System.EventHandler(this.a1ToolStripMenuItem_Click);
            // 
            // a2ToolStripMenuItem
            // 
            this.a2ToolStripMenuItem.Name = "a2ToolStripMenuItem";
            this.a2ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.a2ToolStripMenuItem.Text = "A2";
            this.a2ToolStripMenuItem.Click += new System.EventHandler(this.a2ToolStripMenuItem_Click);
            // 
            // bToolStripMenuItem
            // 
            this.bToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.b1ToolStripMenuItem,
            this.b2ToolStripMenuItem});
            this.bToolStripMenuItem.Name = "bToolStripMenuItem";
            this.bToolStripMenuItem.Size = new System.Drawing.Size(26, 20);
            this.bToolStripMenuItem.Text = "B";
            // 
            // b1ToolStripMenuItem
            // 
            this.b1ToolStripMenuItem.Name = "b1ToolStripMenuItem";
            this.b1ToolStripMenuItem.Size = new System.Drawing.Size(87, 22);
            this.b1ToolStripMenuItem.Text = "B1";
            // 
            // b2ToolStripMenuItem
            // 
            this.b2ToolStripMenuItem.Name = "b2ToolStripMenuItem";
            this.b2ToolStripMenuItem.Size = new System.Drawing.Size(87, 22);
            this.b2ToolStripMenuItem.Text = "B2";
            // 
            // cToolStripMenuItem
            // 
            this.cToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.c1ToolStripMenuItem});
            this.cToolStripMenuItem.Name = "cToolStripMenuItem";
            this.cToolStripMenuItem.Size = new System.Drawing.Size(27, 20);
            this.cToolStripMenuItem.Text = "C";
            // 
            // c1ToolStripMenuItem
            // 
            this.c1ToolStripMenuItem.Name = "c1ToolStripMenuItem";
            this.c1ToolStripMenuItem.Size = new System.Drawing.Size(88, 22);
            this.c1ToolStripMenuItem.Text = "C1";
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(0, 27);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(756, 476);
            this.tabControl1.TabIndex = 4;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.mainViewDataGridView);
            this.tabPage1.Controls.Add(this.button1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(748, 450);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // mainViewDataGridView
            // 
            this.mainViewDataGridView.AutoGenerateColumns = false;
            this.mainViewDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.mainViewDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5});
            this.mainViewDataGridView.DataSource = this.mainViewBindingSource;
            this.mainViewDataGridView.Location = new System.Drawing.Point(0, 29);
            this.mainViewDataGridView.Name = "mainViewDataGridView";
            this.mainViewDataGridView.Size = new System.Drawing.Size(625, 219);
            this.mainViewDataGridView.TabIndex = 2;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "NAME";
            this.dataGridViewTextBoxColumn1.HeaderText = "NAME";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "Task_Owner";
            this.dataGridViewTextBoxColumn2.HeaderText = "Task_Owner";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Story_ID";
            this.dataGridViewTextBoxColumn3.HeaderText = "Story_ID";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Description";
            this.dataGridViewTextBoxColumn4.HeaderText = "Description";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Beginning_Day";
            this.dataGridViewTextBoxColumn5.HeaderText = "Beginning_Day";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // mainViewBindingSource
            // 
            this.mainViewBindingSource.DataMember = "mainView";
            this.mainViewBindingSource.DataSource = this.database1DataSet;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(748, 450);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // mainViewTableAdapter
            // 
            this.mainViewTableAdapter.ClearBeforeFill = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(756, 503);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.database1DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.taskBindingSource)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.mainViewDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mainViewBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Database1DataSet database1DataSet;
        private System.Windows.Forms.BindingSource dataBindingSource;
        private Database1DataSetTableAdapters.DataTableAdapter dataTableAdapter;
        private Database1DataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.Button button1;
        private Database1DataSetTableAdapters.TaskTableAdapter taskTableAdapter;
        private System.Windows.Forms.BindingSource taskBindingSource;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem aToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem a1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem a2ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem b1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem b2ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem c1ToolStripMenuItem;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.BindingSource mainViewBindingSource;
        private Database1DataSetTableAdapters.mainViewTableAdapter mainViewTableAdapter;
        private System.Windows.Forms.DataGridView mainViewDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
    }
}
