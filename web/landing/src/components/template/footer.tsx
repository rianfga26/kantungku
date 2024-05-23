import Logo from "../../assets/template/logo.png";

export default function Footer() {
    return(
        <>
            <div className="m-10 flex items-center">
            <img src={Logo} alt="logo" width={60} className="rounded-full mx-4" />
            <p><span className="font-semibold text-primary">Kantungku</span> Copyright © 2024 - All right reserved</p>
            </div>
            
        </>
    );
}