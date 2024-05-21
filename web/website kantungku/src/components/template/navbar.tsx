import Logo from "../../assets/template/logo.png";

export default function Navbar() {
    return(
        <>
            <div className="navbar bg-base-100 shadow-md z-10 fixed">
                <div className="flex-1">
                    <img src={Logo} alt="logo" width={50} className="rounded-full mx-4" />
                    <a href="/" className=" text-3xl font-semibold text-[#339989]">Kantungku</a>
                </div>
                <div className="flex-none">
                    {/* <ul className="menu menu-horizontal px-1">
                    <li><a href="/blog">Blog</a></li>
                    </ul> */}
                </div>
            </div>
        </>
    )
}