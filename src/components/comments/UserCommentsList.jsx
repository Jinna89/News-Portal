"use client";
import React from "react";
import { useRouter } from "next/navigation";
import { ErrorToast, SuccessToast } from "@/utility/FormHelper";

const UserCommentsList = ({ data }) => {
  const router = useRouter();

  const onDelete = async (id) => {
    const options = {
      method: "DELETE",
      body: JSON.stringify({ id }),
    };

    const res = await fetch("/api/comments/manage", options);
    const json = await res.json();

    if (json.status === "success") {
      SuccessToast("Request Completed");
      router.refresh();
    } else {
      ErrorToast("Invalid Request");
    }
  };

  if (!Array.isArray(data) || data.length === 0) {
    return (
      <div className="container mt-5 text-center">
        <div className="alert alert-info">
          <i className="bi bi-chat-left-text me-2"></i>
          <strong>You have no comments</strong>
        </div>
      </div>
    );
  }

  return (
    <div className="container mt-3">
      <div className="row">
        <div className="col-12">
          <div className="card py-2">
            <ul className="list-group bg-transparent list-group-flush">
              {data.map((item) => (
                <li
                  key={item.id}
                  className="list-group-item bg-transparent"
                >
                  <h6 className="text-dark">
                    <i className="bi bi-newspaper"></i>{" "}
                    {item.news_list.title}
                  </h6>
                  <p className="text-secondary">{item.descriptions}</p>
                  <button
                    onClick={() => onDelete(item.id)}
                    className="btn btn-danger btn-sm px-2"
                  >
                    Remove
                  </button>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default UserCommentsList;
