export default function Footer() {
    return(
        <>
            <div className="container bg-ct flex p-20 justify-around">
                <div>
                    <h1 className="text-main text-4xl font-bold">Kantungku</h1>
                    <a href="https://kantugku.com"><p className="text-neutral-50 mt-3">kantungku.com</p></a>
                </div>
                <div>
                    <h1 className="text-neutral-50 font-semibold text-2xl">Layanan Pengaduan</h1>
                    <p className="text-neutral-50 mt-6"><span className="icon-[ic--baseline-email]"></span>info@kantungku.id</p>
                    <p className="text-neutral-50 mt-5"><span className="icon-[ic--outline-whatsapp]"></span>+62 858-0692-6548</p>
                </div>
                <div>
                    <h1 className="text-neutral-50 font-semibold text-xl w-72">Dapatkan Aplikasi Kantungku di Playstore dan juga Appstore</h1>
                    <div className="mt-10 flex space-x-6">
                        <a href="#"><img src="assets/template/psw.svg" alt="playstore" /></a>
                        <a href="#"><img src="assets/template/asw.svg" alt="appstore" /></a>
                    </div>
                </div>
            </div>
        </>
    );
}