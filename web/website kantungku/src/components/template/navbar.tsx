export default function Navbar() {
    return(
        <>
            <div className="navbar bg-base-100 shadow-md z-10 fixed">
                <div className="flex-1">
                    <a href="/" className="btn btn-ghost text-3xl text-[#339989]">Kantungku</a>
                </div>
                <div className="flex-none">
                    <ul className="menu menu-horizontal px-1">
                    <li><a href="/fitur">Fitur</a></li>
                    <li><a href="/blog">Blog</a></li>
                    </ul>
                </div>
            </div>
        </>
    )
}