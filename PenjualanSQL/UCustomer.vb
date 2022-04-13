Imports System.Data.Odbc
Public Class UCustomer
    Sub reset()
        id_customer.Clear()
        nama.Clear()
        alamat.Clear()
        telpon.Clear()
        id_customer.Focus()
    End Sub
    Sub tampil_customer()
        DataGridView1.Rows.Clear()
        Try
            koneksi()
            da = New OdbcDataAdapter("select * from tb_customer", conn)
            dt = New DataTable
            da.Fill(dt)
            For Each row In dt.Rows
                DataGridView1.Rows.Add(row(0), row(1), row(2), row(3))
            Next
            dt.Rows.Clear()
        Catch ex As Exception
            MsgBox("Menampilkan Data Gagal")
        End Try
    End Sub
    Private Sub GroupBox1_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GroupBox1.Enter

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub


    Private Sub GroupBox2_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GroupBox2.Enter

    End Sub

    Private Sub UCustomer_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Call reset()
        Call koneksi()
        Call tampil_customer()
    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        Call tampil_customer()
    End Sub

    Private Sub Button1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If id_customer.Text = "" Or nama.Text = "" Or alamat.Text = "" Or telpon.Text = "" Then
            MessageBox.Show("Data Tidak Boleh Kosong")
        Else
            cmd = New OdbcCommand("select * from tb_customer where id_customer='" & id_customer.Text & "'", conn)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows = False Then
                cmd = New OdbcCommand("insert into tb_customer values('" & id_customer.Text.ToUpper & _
                                       "','" & nama.Text & _
                                       "','" & alamat.Text & _
                                       "','" & telpon.Text & _
                                       "')", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Tersimpan")
                Call reset()
                Call tampil_customer()

            Else

                cmd = New OdbcCommand("update tb_customer set nama='" & nama.Text & _
                                       "',alamat='" & alamat.Text & _
                                       "',telpon='" & telpon.Text & _
                                       "' where id_customer='" & id_customer.Text & "'", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Berhasil di Edit")
                Call reset()
                Call tampil_customer()
            End If

        End If
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles id_customer.TextChanged
        cmd = New OdbcCommand("select * from tb_customer where id_customer ='" & id_customer.Text & "' ", conn)
        rd = cmd.ExecuteReader
        rd.Read()
        If rd.HasRows = True Then
            nama.Text = rd(1)
            alamat.Text = rd(2)
            telpon.Text = rd(3)
        Else
            nama.Clear()
            alamat.Clear()
            telpon.Clear()
            id_customer.Focus()
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        If MessageBox.Show("Ingin Menghapus Data ?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Dim HapusData As String = "delete from tb_customer where id_customer='" & id_customer.Text.ToUpper & "'"
            cmd = New OdbcCommand(HapusData, conn)
            cmd.ExecuteNonQuery()
            MessageBox.Show("Data Berhasil diHapus")
            Call reset()
            Call tampil_customer()
        End If
    End Sub

    Private Sub TextBox5_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox5.TextChanged
        cmd = New OdbcCommand("select * from tb_customer where nama like '%" & TextBox5.Text & "%' or id_customer like '%" & TextBox5.Text & "%'", conn)
        rd = cmd.ExecuteReader
        DataGridView1.Rows.Clear()
        Do While rd.Read = True
            DataGridView1.Rows.Add(rd(0), rd(1), rd(2), rd(3))
        Loop
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call reset()
    End Sub
End Class
