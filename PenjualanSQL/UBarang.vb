Imports System.Data.Odbc
Public Class UBarang
    Sub reset()
        kode_brg.Clear()
        nama_brg.Clear()
        kat_brg.Clear()
        jml_brg.Clear()
        sat_brg.Text = ""
        hmodal1.Clear()
        search.Clear()
        kode_brg.Focus()
    End Sub

    Sub kosong()
        nama_brg.Clear()
        kat_brg.Clear()
        jml_brg.Clear()
        sat_brg.Text = ""
        hmodal1.Clear()
        hmodal2.Clear()
        hmodalfix.Clear()
        htoko.Clear()
        htoko_kusus.Clear()
        huser.Clear()
    End Sub

    Sub tampil_barang()
        DataGridView1.Rows.Clear()
        Try
            koneksi()
            da = New OdbcDataAdapter("select * from tb_barang", conn)
            dt = New DataTable
            da.Fill(dt)
            For Each row In dt.Rows
                DataGridView1.Rows.Add(row(0), row(1), row(2), row(3), row(4), row(5), row(6), row(7), row(8), row(9), row(10))
            Next
            dt.Rows.Clear()
        Catch ex As Exception
            MsgBox("Menampilkan Data Gagal")
        End Try
    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Simpan.Click

        If kode_brg.Text = "" Or nama_brg.Text = "" Or kat_brg.Text = "" Or jml_brg.Text = "" Or sat_brg.Text = "" Or hmodal1.Text = "" Then
            MessageBox.Show("Data Tidak Boleh Kosong")
        Else
            cmd = New OdbcCommand("select * from tb_barang where kode_brg='" & kode_brg.Text & "'", conn)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows = False Then
                cmd = New OdbcCommand("insert into tb_barang values('" & kode_brg.Text.ToUpper & _
                                       "','" & nama_brg.Text & _
                                       "','" & kat_brg.Text & _
                                       "','" & jml_brg.Text & _
                                       "','" & sat_brg.Text & _
                                       "','" & hmodal1.Text & _
                                       "','" & hmodal2.Text & _
                                       "','" & hmodalfix.Text & _
                                       "','" & htoko.Text & _
                                       "','" & htoko_kusus.Text & _
                                       "','" & huser.Text & _
                                       "')", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Tersimpan")
                Call reset()
                Call tampil_barang()

            Else

                cmd = New OdbcCommand("update tb_barang set nama_brg='" & nama_brg.Text & _
                                       "',kat_brg='" & kat_brg.Text & _
                                       "',jml_brg='" & jml_brg.Text & _
                                       "',sat_brg='" & sat_brg.Text & _
                                       "',hmodal1='" & hmodal1.Text & _
                                       "',hmodal2='" & hmodal2.Text & _
                                       "',hmodalfix='" & hmodalfix.Text & _
                                       "',htoko='" & htoko.Text & _
                                       "',htoko_kusus='" & htoko_kusus.Text & _
                                       "',huser='" & huser.Text & _
                                       "' where kode_brg ='" & kode_brg.Text.ToUpper & "'", conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Berhasil di Ubah")
                Call reset()
                Call tampil_barang()
            End If

        End If
    End Sub



    Private Sub UBarang_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call koneksi()
        Call tampil_barang()
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles kode_brg.TextChanged
        cmd = New OdbcCommand("select * from tb_barang where kode_brg ='" & kode_brg.Text.ToUpper & "' ", conn)
        rd = cmd.ExecuteReader
        rd.Read()
        If rd.HasRows = True Then
            nama_brg.Text = rd(1)
            kat_brg.Text = rd(2)
            jml_brg.Text = rd(3)
            sat_brg.Text = rd(4)
            hmodal1.Text = rd(5)
            hmodal2.Text = rd(6)
            hmodalfix.Text = rd(7)
            htoko.Text = rd(8)
            htoko_kusus.Text = rd(9)
            huser.Text = rd(10)
        Else
            kosong()
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Hapus.Click
        If MessageBox.Show("Ingin Menghapus Data ?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
            Dim HapusData As String = "delete from tb_barang where kode_brg='" & kode_brg.Text.ToUpper & "'"
            cmd = New OdbcCommand(HapusData, conn)
            cmd.ExecuteNonQuery()
            MessageBox.Show("Data Berhasil diHapus")
            Call reset()
            Call tampil_barang()
        End If
    End Sub

    Private Sub TextBox7_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles search.TextChanged
        cmd = New OdbcCommand("select * from tb_barang where nama_brg like '%" & search.Text & "%' or kode_brg like '%" & search.Text & "%'", conn)
        rd = cmd.ExecuteReader
        DataGridView1.Rows.Clear()
        Do While rd.Read = True
            DataGridView1.Rows.Add(rd(0), rd(1), rd(2), rd(3), rd(4), rd(5), rd(6), rd(7), rd(8), rd(9), rd(10))
        Loop
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ResetForm.Click
        Call reset()
    End Sub

    Private Sub hmodal2_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles hmodal2.TextChanged

        If hmodal2.Text = "0" Or hmodal2.Text = "" Then
            hmodalfix.Text = hmodal1.Text
        Else
            hmodalfix.Text = (Val(hmodal1.Text) + Val(hmodal2.Text)) / 2
        End If

    End Sub
End Class
