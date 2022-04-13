Imports System.Data.Odbc
Public Class USupplier
    Sub reset()
        id_supplier.Clear()
        nama.Clear()
        alamat.Clear()
        telpon.Clear()
        id_supplier.Focus()
    End Sub
    Sub tampil_supplier()
        DataGridView1.Rows.Clear()
        Try
            koneksi()
            da = New OdbcDataAdapter("select * from tb_supplier", conn)
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

    Private Sub USupplier_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Call reset()
        Call koneksi()
        Call tampil_supplier()
    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        Call tampil_supplier()
    End Sub

    Private Sub Button1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If id_supplier.Text = "" Or nama.Text = "" Or alamat.Text = "" Or telpon.Text = "" Then
            MessageBox.Show("Data Tidak Boleh Kosong")
        Else
            cmd = New OdbcCommand("select * from tb_supplier where id_supplier='" & id_supplier.Text & "'", conn)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows = False Then
                cmd = New OdbcCommand("insert into tb_supplier values('" & id_supplier.Text.ToUpper & _
                                       "','" & nama.Text & _
                                       "','" & alamat.Text & _
                                       "','" & telpon.Text & _
                                       "')", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Tersimpan")
                Call Reset()
                Call tampil_supplier()

            Else

                cmd = New OdbcCommand("update tb_supplier set nama='" & nama.Text & _
                                       "',alamat='" & alamat.Text & _
                                       "',telpon='" & telpon.Text & _
                                       "' where id_supplier='" & id_supplier.Text & "'", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Berhasil di Edit")
                Call Reset()
                Call tampil_supplier()
            End If

        End If
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles id_supplier.TextChanged
        cmd = New OdbcCommand("select * from tb_supplier where id_supplier ='" & id_supplier.Text & "' ", conn)
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
            id_supplier.Focus()
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        If MessageBox.Show("Ingin Menghapus Data ?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Dim HapusData As String = "delete from tb_supplier where id_supplier='" & id_supplier.Text.ToUpper & "'"
            cmd = New OdbcCommand(HapusData, conn)
            cmd.ExecuteNonQuery()
            MessageBox.Show("Data Berhasil diHapus")
            Call reset()
            Call tampil_supplier()
        End If
    End Sub

    Private Sub TextBox5_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox5.TextChanged
        cmd = New OdbcCommand("select * from tb_supplier where nama like '%" & TextBox5.Text & "%' or id_supplier like '%" & TextBox5.Text & "%'", conn)
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
