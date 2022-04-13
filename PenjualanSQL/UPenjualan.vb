Imports System.Data.Odbc
Public Class UPenjualan

    Dim vgt As Double
    Sub cbkodecustomer()
        Call koneksi()
        Dim str As String
        str = "select id_customer from tb_customer"
        cmd = New OdbcCommand(str, conn)
        rd = cmd.ExecuteReader
        If rd.HasRows Then
            Do While rd.Read
                id_customer.Items.Add(rd.Item("id_customer"))
            Loop
        Else

        End If
    End Sub
    Sub tanggal()
        tgl_penjualan.Text = Format(Now, "dd/MM/yy")

    End Sub

    Sub Reset()
        DataGridView1.Rows.Clear()
        kodebrg.Clear()
        dibayar.Clear()
        kembalian.Clear()
        namabrg.Clear()
        hargabrg.Clear()
        jjual.Clear()
        id_customer.Text = "Kode Customer"
        subtotalhrg.Clear()
        total_penjualan.Text = "0"
        id_customer.Select()

    End Sub
    Sub grandtotal()
        Dim jumlah As Decimal = 0
        For i As Integer = 0 To DataGridView1.Rows.Count - 1
            jumlah = jumlah + DataGridView1.Rows(i).Cells(4).Value
            'vgrandtotal.Text = jumlah.ToString("C")
            total_penjualan.Text = jumlah


        Next
        If total_penjualan.Text = "" Then
            total_penjualan.Text = "0"
        End If
    End Sub

    Sub notransaksi()
        cmd = New OdbcCommand("select * from tb_penjualan where id_penjualan in(select max(id_penjualan)from tb_penjualan) order by id_penjualan DESC", conn)
        rd = cmd.ExecuteReader()
        rd.Read()
        If Not rd.HasRows Then
            id_penjualan.Text = Format(Now, "yyMMdd") + "0001"
        Else

            If Microsoft.VisualBasic.Left(rd.GetString(0), 6) <> Format(Now, "yymmdd") Then
                id_penjualan.Text = Format(Now, "yyMMdd") + "0001"
            End If
            id_penjualan.Text = rd.Item("id_penjualan") + 1
        End If

    End Sub
    Private Sub USupplier_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Call Reset()
        Call koneksi()
        Call notransaksi()
        Call grandtotal()
        Call tanggal()
        Call cbkodecustomer()

    End Sub



    Private Sub TextBox2_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles kodebrg.TextChanged
        Call koneksi()
        If id_customer.Text = "0" Then
            Call koneksi()
            cmd = New OdbcCommand("select * from tb_barang where kode_brg='" & kodebrg.Text.ToUpper & "'", conn)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows = True Then
                namabrg.Text = rd.Item("nama_brg")
                hargabrg.Text = rd.Item("huser")
                jjual.Focus()
            Else
                namabrg.Clear()
                hargabrg.Clear()
                kodebrg.Focus()
            End If
        Else
            Call koneksi()
            cmd = New OdbcCommand("select * from tb_barang where kode_brg='" & kodebrg.Text.ToUpper & "'", conn)
            rd = cmd.ExecuteReader
            rd.Read()
            If rd.HasRows = True Then
                namabrg.Text = rd.Item("nama_brg")
                hargabrg.Text = rd.Item("htoko")
                jjual.Focus()
            Else
                namabrg.Clear()
                hargabrg.Clear()
                kodebrg.Focus()
            End If
        End If

    End Sub

    Private Sub TextBox8_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles jjual.TextChanged
        Try
            subtotalhrg.Text = Val(jjual.Text) * Val(hargabrg.Text)
        Catch ex As Exception
            subtotalhrg.Text = "0"
        End Try
    End Sub

    Private Sub TextBox6_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles namabrg.TextChanged
        'Call koneksi()
        'cmd = New OdbcCommand("select * from tb_barang where nama_brg like '%" & namabrg.Text & "%'", conn)
        'rd = cmd.ExecuteReader
        'rd.Read()
        'If rd.HasRows = True Then
        '   kodebrg.Text = rd.Item("kode_brg")
        ''     hargabrg.Text = rd.Item("huser")
        '      jjual.Focus()
        '   End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call Reset()

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        kodebrg.Clear()
        dibayar.Text = "0"
        kembalian.Text = "0"
        namabrg.Clear()
        hargabrg.Clear()
        jjual.Clear()
        id_customer.Text = "Kode Customer"
        subtotalhrg.Clear()
        total_penjualan.Text = "0"

    End Sub

    Private Sub TextBox8_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles jjual.KeyPress
        If e.KeyChar = Chr(13) Then
            DataGridView1.Rows.Add(kodebrg.Text, namabrg.Text, hargabrg.Text, jjual.Text, subtotalhrg.Text)
            kodebrg.Clear()
            namabrg.Clear()
            hargabrg.Clear()
            jjual.Clear()
            subtotalhrg.Clear()
            kodebrg.Focus()
            Call grandtotal()
        End If
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        DataGridView1.Rows.Add(kodebrg.Text, namabrg.Text, hargabrg.Text, jjual.Text, subtotalhrg.Text)
        kodebrg.Clear()
        namabrg.Clear()
        hargabrg.Clear()
        jjual.Clear()
        subtotalhrg.Clear()
        kodebrg.Focus()
        Call grandtotal()
    End Sub

    Private Sub kodecustomer_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub dibayar_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dibayar.TextChanged
        Try
            'Dim dib As Double 
            'Dim kem As Double
            'kem = Val(dibayar.Text) - Val(vgrandtotal.Text)
            'kembalian.Text = kem.ToString("###.###")

            kembalian.Text = Val(dibayar.Text) - Val(total_penjualan.Text)
        Catch ex As Exception
            kembalian.Text = "0"
        End Try

        If Val(dibayar.Text) >= Val(total_penjualan.Text) Then
            'simpantrx.Focus()

        End If
    End Sub

    Private Sub simpantrx_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles simpantrx.Click
        If total_penjualan.Text = "0" Then
            MessageBox.Show("Belum ada Transaksi")
        Else
            Call koneksi()
            'simpan data transaksi ke tabel penjualan
            cmd = New OdbcCommand("insert into tb_penjualan(id_penjualan,id_customer,tgl_penjualan,total_penjualan)values('" & id_penjualan.Text & _
                                   "','" & id_customer.Text & _
                                   "','" & tgl_penjualan.Text & _
                                   "','" & total_penjualan.Text & _
                                   "')", conn)
            cmd.ExecuteNonQuery()
            'simpan ke table rincian_penjualan
            For baris As Integer = 0 To DataGridView1.Rows.Count - 1 Step +1
                cmd = New OdbcCommand("insert into tb_detail_penjualan(id_penjualan,kode_brg,jml_brg,harga_satuan)values('" & id_penjualan.Text & _
                                       "','" & DataGridView1.Rows(baris).Cells(0).Value & _
                                       "','" & DataGridView1.Rows(baris).Cells(3).Value & _
                                       "','" & DataGridView1.Rows(baris).Cells(2).Value & _
                                       "')", conn)
                cmd.ExecuteNonQuery()
                'pengurangan stock
                cmd = New OdbcCommand("select * from tb_barang where kode_brg ='" & DataGridView1.Rows(baris).Cells(0).Value & "'", conn)
                rd = cmd.ExecuteReader
                rd.Read()
                If rd.HasRows = True Then
                    cmd = New OdbcCommand("update tb_barang set jml_brg ='" & rd.Item("jml_brg") - Val(DataGridView1.Rows(baris).Cells(3).Value) & _
                          "' where kode_brg='" & DataGridView1.Rows(baris).Cells(0).Value & "'", conn)
                    cmd.ExecuteNonQuery()

                End If


            Next
            'membersihkan gridview setelah transaksi
            MessageBox.Show("Transaksi Berhasil Disimpan !")
            DataGridView1.Rows.Clear()
            total_penjualan.Text = "0"
            dibayar.Text = "0"
            kembalian.Text = "0"
            Call notransaksi()
            Call Reset()
            kodebrg.Focus()
        End If
    End Sub

    Private Sub kodecustomer_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles id_customer.SelectedIndexChanged
        Call koneksi()
        cmd = New OdbcCommand("select * from tb_customer where id_customer ='" & id_customer.Text.ToUpper & "'", conn)
        rd = cmd.ExecuteReader
        rd.Read()
        If rd.HasRows = True Then
            namacustomer.Text = rd.Item("nama")
            kodebrg.Focus()
        Else
            namacustomer.Text = ""
            id_customer.Focus()
        End If
    End Sub


    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        DataGridView1.ForeColor = Color.Black
    End Sub

End Class
