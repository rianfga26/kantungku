import Footer from "../template/footer";
import Navbar from "../template/navbar";


const HeroFitur = () => {
    return(
        <>
            <div className=" bg-[url('assets/home/bghero.jpg')] bg-no-repeat">
                <div className="p-28">
                    <center>
                    <h1 className="text-4xl font-bold text-main mt-28">BANYAK FITUR YANG DAPAT DIMANFAATKAN UNTUK MEMPERMUDAH PENGELOLAAN KEUANGAN ANDA</h1>
                    <p className="font-semibold mt-16 w-96 text-center text-ct">Download Sekarang</p>

                    <div className="flex gap-x-4 mt-3 w-72">
                        <a href="#"><img src="assets/home/playstore.svg" alt="playstore"/></a>
                        <a href="#"><img src="assets/home/appstore.svg" alt="appstore" /></a>
                    </div>
                    </center>  
                </div>
            </div>
        </>
    );
}

const AllFitur = () => {
    return(
        <>
            <div className="container p-10 mt-32 mb-40">
                <h1 className="text-main font-bold text-3xl text-center">BEBERAPA FITUR GRATIS <br /> UNTUK KEBUTUHAN FINANCIALMU</h1>

                <div className="flex justify-around mt-28">
                    <div>
                        <img src="assets/fitur/transaksi.svg" alt="transaksi" />
                    </div>
                    <div>
                        <img src="assets/fitur/budget.svg" alt="budget" />
                    </div>
                    <div>
                        <img src="assets/fitur/nabung.svg" alt="budget" />
                    </div>
                </div>
                <div className="flex justify-around mt-16">
                    <div>
                        <img src="assets/fitur/invest.svg" alt="transaksi" />
                    </div>
                    <div>
                        <img className="mt-10" src="assets/fitur/openai.svg" alt="budget" />
                    </div>
                    <div>
                        <img className="mt-5" src="assets/fitur/chat.svg" alt="budget" />
                    </div>
                </div>
            </div>
        </>
    );
}

export default function Fitur() {
    return(
        <>
            <Navbar />
            <HeroFitur />
            <AllFitur />
            <Footer />
        </>
    );
}