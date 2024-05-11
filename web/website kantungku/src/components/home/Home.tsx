import Footer from "../template/footer";
import Navbar from "../template/navbar";

const Hero = () => {
    return(
        <>
            <div className="flex justify-between bg-[url('assets/home/bghero.jpg')] bg-no-repeat">
                <div className="p-28 mb-72">
                    <h1 className="text-4xl font-bold text-main mt-32">ATUR KEUANGAN SEKARANG INVESTASI KEMUDIAN</h1>
                    <p className="font-semibold mt-7 w-96">Atur keuangan anda menjadi lebih baik coba fitur menarik kantungku sekarang</p>
                    <div className="flex gap-x-4 mt-9 w-72">
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

const Subscribe = () => {
    return(
        <>
            <div className="bg-[#D6FFF6] flex p-14 justify-around mt-40">
                <div>
                    <h1 className="text-[#A44A3F] font-bold text-2xl">dapatkan update informasi dari kantungku lebih cepat</h1>
                </div>
                <div className="flex space-x-3">
                    <label className="input input-bordered flex items-center gap-2">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" className="w-4 h-4 opacity-70"><path d="M2.5 3A1.5 1.5 0 0 0 1 4.5v.793c.026.009.051.02.076.032L7.674 8.51c.206.1.446.1.652 0l6.598-3.185A.755.755 0 0 1 15 5.293V4.5A1.5 1.5 0 0 0 13.5 3h-11Z" /><path d="M15 6.954 8.978 9.86a2.25 2.25 0 0 1-1.956 0L1 6.954V11.5A1.5 1.5 0 0 0 2.5 13h11a1.5 1.5 0 0 0 1.5-1.5V6.954Z" /></svg>
                        <input type="text" className="grow" placeholder="Email" />
                    </label>
                    <button className="btn bg-[#A44A3F] text-neutral-50">Success</button>
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
            <Subscribe />
            <Footer />
        </>
    );
}