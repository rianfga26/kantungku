import Footer from "../template/footer";
import Navbar from "../template/navbar";

const Hero = () => {
    return(
        <>
            <div className="flex justify-between bg-[url('assets/home/bghero.jpg')] bg-no-repeat">
                <div className="p-28 mb-72">
                    <h1 className="text-4xl font-bold text-main mt-32">ATUR KEUANGAN SEKARANG INVESTASI KEMUDIAN</h1>
                    <p className="font-semibold mt-7 w-96">Atur keuangan anda menjadi lebih baik coba fitur menarik kantungku sekarang</p>
                    <div className="flex gap-x-4 w-28 mt-9 w-72">
                        <a href="#"><img src="assets/home/playstore.svg" alt="playstore"/></a>
                        <a href="#"><img src="assets/home/appstore.svg" alt="appstore" /></a>
                    </div>
                </div>
                <div>
                        <img src="assets/home/hp.png" alt="hp" className="w-[40em] mt-40 " />
                </div>
            </div>
        </>
    );
}

const SpillFitur = () => {
    return(
        <>  
            <center>
                <div className="w-[95%] bg-[#FFCDB2] flex relative -mt-80 h-[24rem] rounded-xl p-10 space-x-10  ">
                    <div className="mt-10">
                        <img src="assets/home/atur.svg" alt="atur kuangan" />
                        <h2 className="font-semibold mt-4 text-main">Atur Keuangan dengan Baik</h2>
                        <p className="text-left mt-2 text-ct">Atur keuangan anda lebih mudah dengan fitur yang tersedia di aplikasi kantungku</p>
                    </div>
                    <div className="mt-7">
                        <img src="assets/home/ai.svg" alt="ai" />
                        <h2 className="font-semibold mt-2 text-main">Generative AI</h2>
                        <p className="text-left text-ct">Dapatkan kemudahan dalam pengelolaan keuangan dengan memanfaatakn artificial intelligence yang sudah tertanam dengan baik di aplikasi kantungku</p>
                    </div>
                    <div className="mt-9">
                        <img src="assets/home/study.svg" alt="atur kuangan" />
                        <h2 className="font-semibold mt-3 text-main">Edukasi</h2>
                        <p className="text-left mt-2 text-ct">Anda akan mendapatkan seputar tips dari mulai mengelola keuangan sampai dengan investasi melalui aplikasi kantungku</p>
                    </div>
                </div>
            </center>  
        </>
    );
}

const Benefit = () => {
    return(
        <>
            <div className="container mt-36 p-10 ">
                <center>
                    <h1 className="text-center text-main text-2xl font-bold w-[50%]">Atur Keuanganmu dengan Mudah Sekarang Menggunakan Kantungku</h1>
                    <p className="mt-4"><span className="font-semibold text-main">Kantungku</span> aplikasi pencatatan kuangan, track pengeluaran, atur budget dan buat tujuan keuangan</p>
                </center>
                

                <div className="mt-20 flex justify-around p-20 space-x-20">
                    <div className="flex-1">
                        <img src="assets/home/catat.svg" alt="catat transaksi" className="w-[26rem]"/>
                    </div>
                    <div className="flex-1 mt-10">
                        <h2 className="text-ct font-bold text-2xl">Catat Transaksi Secara Manual, Otomatis, dan Scan</h2>
                        <p className="text-ct mt-6">Kamu dapat melakukan pencatatan keuangan secara manual, integrasi dengan e-wallet atau bank, dan dapat menggunakan scan struk pembelian</p>
                    </div>
                </div>
                <div className="flex justify-around p-20 space-x-20">
                    <div className="flex-1 mt-10">
                        <h2 className="text-ct font-bold text-2xl">Atur Budget dan Tujuan Keuangan</h2>
                        <p className="text-ct mt-6">Tentukan budget kamu untuk kebutuhanmu selain itu kamu juga dapat menentukan tujuan dari penggunaan uangmu</p>
                    </div>
                    <div className="flex-1">
                        <img src="assets/home/tujuan.svg" alt="catat transaksi" className="w-[26rem]"/>
                    </div>
                </div>
                <div className="flex justify-around p-20 space-x-20">
                    <div className="flex-1">
                        <img src="assets/home/invest.svg" alt="catat transaksi" className="w-[26rem]"/>
                    </div>
                    <div className="flex-1 mt-10">
                        <h2 className="text-ct font-bold text-2xl">Mulai Belajar Investasi Sejak Dini</h2>
                        <p className="text-ct mt-6">Setelah kamu dapat mengatur keuanganmu dengan baik mulailah berinvestasi dengan bantuan kantungku kamu dapat mudah belajar dan berinvestasi sejak dini</p>
                    </div>
                </div>

            </div>
        </>
    );
}

export default function Home() {
    return(
        <>
            <Navbar />
            <Hero />
            <SpillFitur />
            <Benefit />
            <Footer />
        </>
    );
}