import React, { ReactNode } from "react";
import Navbar from "./navbar";
import Footer from "./footer";

type Props = {
  children: ReactNode;
};

export default function AppLayout(props: Props) {
  return (
    <>
      <Navbar />
      {props.children}
      <Footer />
    </>
  );
}
