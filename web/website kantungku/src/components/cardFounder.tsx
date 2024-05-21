import React, { ReactNode } from "react";

type Props = {
  image?: string;
  name: string;
  title: string;
  children: ReactNode;
};

export default function CardFounder(props: Props) {
  return (
    <div className="card w-full bg-base-100 shadow-xl">
      {props.image && (
        <figure className="h-60">
          <img src={props.image} alt="banner" className="object-cover"/>
        </figure>
      )}
      <div className="card-body">
        <h2 className="card-title capitalize">{props.name}</h2>
        <h2 className="capitalize">{props.title}</h2>
        {props.children}
      </div>
    </div>
  );
}
