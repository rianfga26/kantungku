import React, { ReactNode } from "react";

type Props = {
  image?: string;
  title: string;
  children: ReactNode;
};

export default function card(props: Props) {
  return (
    <div className="card w-full bg-base-100 shadow-xl">
      {props.image && (
        <figure>
          <img src={props.image} alt="banner" width={100} className="p-2"/>
        </figure>
      )}
      <div className="card-body">
        <h2 className="card-title capitalize">{props.title}</h2>
        {props.children}
      </div>
    </div>
  );
}
