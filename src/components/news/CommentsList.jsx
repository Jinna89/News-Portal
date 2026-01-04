"use client";
import React, { useState } from "react";
import { Tabs, Tab } from "react-bootstrap";
import CommentForm from "./CommentForm";

const CommentsList = (props) => {
  const [key, setKey] = useState("Comments");

  return (
    <div className="container">
      <Tabs
        id="controlled-tab-example"
        activeKey={key}
        onSelect={(k) => setKey(k)}
        className="mb-3"
      >
        <Tab eventKey="Comments" title="Comments">
          {
            props.data.length === 0 ? (
              <p className="text-center text-secondary mt-3">Empty Comment</p>
            ) : (
              props.data.map((item, i) => (
                <ul key={i} className="list-group bg-transparent list-group-flush">
                  <li className="list-group-item bg-transparent">
                    <h6 className="text-dark">
                      <i className="bi bi-person-circle"></i> {item.users.firstName}
                    </h6>
                    <p className="text-secondary">{item.descriptions}</p>
                  </li>
                </ul>
              ))
            )
          }
        </Tab>

        <Tab eventKey="Create" title="Create">
          <CommentForm postID={props.postID} />
        </Tab>
      </Tabs>
    </div>
  );
};

export default CommentsList;
