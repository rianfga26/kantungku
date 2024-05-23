import Navbar from "../template/navbar";

const CoomingSoon = () => {
    return(
        <>
            <div className=" bg-[url('assets/home/bghero.jpg')] bg-no-repeat">
                <div className="p-28">
                    <center>
                    <h1 className="text-5xl font-bold text-main mt-28">Coming Soon...</h1>
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

export default function Blog() {
    return(
        <>
            <Navbar />
            <CoomingSoon />
        </>
    );
}