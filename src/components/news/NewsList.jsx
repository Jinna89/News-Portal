"use client";
import React from "react";
import Link from "next/link";

const NewsList = (props) => {

  const timeAgo = (date) => {
    const now = new Date();
    const past = new Date(date);
    const diff = (now - past) / 1000; // seconds

    if (diff < 60) return `${Math.floor(diff)} seconds ago`;
    if (diff < 3600) return `${Math.floor(diff / 60)} minutes ago`;
    if (diff < 86400) return `${Math.floor(diff / 3600)} hours ago`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} days ago`;
    if (diff < 2592000) return `${Math.floor(diff / 604800)} weeks ago`;

    return past.toLocaleDateString();  
  };

  return (
    <div className="row">
      {props.latest.map((item, i) => {
        return (
          <div key={i} className="p-2 col-md-4">
            <div className="card bg-white shadow-sm">
              <img className="card-img-top" src={item["img1"]} alt="News Image" />
              <div className="card-body">
                <h6 className="card-title">{item["title"]}</h6>
                <p>{item["short_des"]}</p>

                <p className="my-2 fw-bold p-0">
                  <i className="bi bi-clock"></i> {timeAgo(item["createdAt"])}
                </p>

                <Link
                  href={`/details?id=${item["id"]}`}
                  className="btn mt-2 btn-sm btn-outline-danger"
                >
                  Read More
                </Link>
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
};

export default NewsList;
