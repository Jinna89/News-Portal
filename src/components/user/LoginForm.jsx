"use client";
import React, { useState } from "react";
import Link from "next/link";
import SubmitButton from "@/components/master/SubmitButton";
import {
  ErrorToast,
  IsEmail,
  IsEmpty,
  SuccessToast,
} from "@/utility/FormHelper";

const LoginForm = () => {
  let [data, setData] = useState({
    email: "",
    password: "",
  });
  let [submit, setSubmit] = useState(false);

  const inputOnChange = (e) => {
    setData({ ...data, [e.target.name]: e.target.value });
  };

  const formSubmit = async () => {
    if (IsEmail(data.email)) {
      ErrorToast("Valid Email Required");
      return;
    }
    if (IsEmpty(data.password)) {
      ErrorToast("Password Required");
      return;
    }

    setSubmit(true);

    const options = {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      credentials: "include", // include cookies from server
      body: JSON.stringify(data),
    };

    const response = await fetch("/api/user/login", options);
    const res = await response.json();
    setSubmit(false);

    if (res.status === "success") {
      SuccessToast("Login Successful");
      window.location.href = "/";
    } else {
      ErrorToast("Invalid Email or Password");
    }
  };

  return (
    <div className="row h-100 justify-content-center center-screen">
      <div className="col-md-4 col-lg-4 col-sm-12 col-12">
        <form className="card animated fadeIn p-5 gradient-bg">
          <h5 className="mb-3">User Login</h5>

          <label className="form-label">User Email</label>
          <input
            name="email"
            value={data.email}
            onChange={inputOnChange}
            type="email"
            className="form-control mb-2"
          />

          <label className="form-label">User Password</label>
          <input
            name="password"
            value={data.password}
            onChange={inputOnChange}
            type="password"
            className="form-control mb-1"
          />

          <SubmitButton
            className="btn btn-danger mt-3"
            onClick={formSubmit}
            submit={submit}
            text="Login"
          />

          <div className="my-3 d-flex">
            <Link href="/user/registration" className="nav-link mx-2">
              Sign Up |
            </Link>
            <Link href="/user/emailVerify" className="nav-link">
              Forget Password
            </Link>
          </div>
        </form>
      </div>
    </div>
  );
};

export default LoginForm;
