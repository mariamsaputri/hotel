<div class="sidebar" data-background-color="white" data-active-color="danger">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                SIMHO - Sistem Informasi Hotel
                </a>
            </div>

            <ul class="nav">
                <li class="<?php echo (basename($_SERVER['PHP_SELF']) == 'index.php') ? 'active' : ''; ?>">
                    <a href="index.php">
                        <i class="ti-panel"></i>
                        <p>Tipe Kamar</p>
                    </a>
                </li>
                <li class="<?php echo (basename($_SERVER['PHP_SELF']) == 'pelanggan.php') ? 'active' : ''; ?>">
                    <a href="pelanggan.php">
                        <i class="ti-user"></i>
                        <p>Pelanggan</p>
                    </a>
                </li>
                <hr>                
                <li class="<?php echo (basename($_SERVER['PHP_SELF']) == 'pemesanan.php') ? 'active' : ''; ?>">
                    <a href="pemesanan.php">
                        <i class="ti-user"></i>
                        <p>Pemesanan Kamar</p>
                    </a>
                </li>

                <li class="<?php echo (basename($_SERVER['PHP_SELF']) == 'pembayaran.php') ? 'active' : ''; ?>">
                    <a href="pembayaran.php">
                        <i class="ti-user"></i>
                        <p>Pembayaran</p>
                    </a>
                </li>
                
            </ul>
    	</div>
    </div>
