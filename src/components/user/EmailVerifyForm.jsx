"use client";
import React from "react";
import SubmitButton from "../master/SubmitButton";
import { useRouter } from "next/navigation";
import { useState } from "react";
import {
  ErrorToast,
  IsEmail,
  SetEmail,
  SuccessToast,
} from "@/utility/FormHelper";

const EmailVerifyForm = () => {
  let router = useRouter();
  let [data, setData] = useState({ email: "" });
  let [submit, setSubmit] = useState(false);

  const inputOnChange = (name, value) => {
    setData((data) => ({
      ...data,
      [name]: value,
    }));
  };

  const formSubmit = async () => {
    if (IsEmail(data.email)) {
      ErrorToast("Invalid Email Address");
    } else {
      setSubmit(true);

      const res = await (
        await fetch(`/api/user/recover/verifyEmail?email=${data.email}`)
      ).json();

      setSubmit(false);

      if (res.status === "success") {
        SuccessToast("Verification Code Sent to Email");
        SetEmail(data.email);
        router.push("/user/otpVerify");
      } else {
        ErrorToast(res.message || "Email Not Found");
      }
    }
  };

  return (
    <div className="row h-100 justify-content-center center-screen">
      <div className="col-md-4 col-lg-4 col-sm-12 col-12 ">
        <div className="card animated fadeIn p-5 gradient-bg">
          <h5 className="mb-3">Email Address</h5>
          <label className="form-label">User Email</label>
          <input
            value={data.email}
            onChange={(e) => {
              inputOnChange("email", e.target.value);
            }}
            type="email"
            className="form-control mb-2"
          />
          <SubmitButton
            className="btn btn-danger mt-3"
            onClick={formSubmit}
            submit={submit}
            text="Next"
          />
        </div>
      </div>
    </div>
  );
};

export default EmailVerifyForm;
