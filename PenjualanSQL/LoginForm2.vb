Imports System.Data.Odbc
Public Class LoginForm2

    Private Sub Panel2_Paint(ByVal sender As System.Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles Panel2.Paint

    End Sub

    Private Sub LoginForm2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            MessageBox.Show("Username / Password / Level Tidak Boleh Kosong")
        Else
            cmd = New OdbcCommand("select * from pengguna where username='admin' and password='admin'", conn)
            rd = cmd.ExecuteReader
            If rd.HasRows Then
                MenuUtama2.ShowDialog()
                Me.Close()

            Else
                cmd = New OdbcCommand("select * from pengguna where username='kasir' and password='kasir'", conn)
                rd = cmd.ExecuteReader
                If rd.HasRows Then

                    Call POS.Show()
                    Me.Close()

                Else
                    MessageBox.Show("Username / Password / Level Salah")
                End If

            End If
        End If

    End Sub
End Class