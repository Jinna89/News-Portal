"use client";
import React, { useState, useEffect } from "react";
import SubmitButton from "@/components/master/SubmitButton";
import {
  ErrorToast,
  GetEmail,
  GetOTP,
  IsEmpty,
  SuccessToast,
} from "@/utility/FormHelper";
import { useRouter } from "next/navigation";

const SetPasswordForm = () => {
  const router = useRouter();

  // Start with empty email and otp, populate on mount
  const [data, setData] = useState({
    email: "",
    otp: "",
    password: "",
  });
  const [submit, setSubmit] = useState(false);

  // On mount, safely read sessionStorage
  useEffect(() => {
    const email = GetEmail();
    const otp = GetOTP();

    if (!email || !otp) {
      ErrorToast("Session expired. Please retry.");
      router.push("/user/recover");
      return;
    }

    setData((prev) => ({ ...prev, email, otp }));
  }, [router]);

  const inputOnChange = (name, value) => {
    setData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const formSubmit = async () => {
    if (IsEmpty(data.password)) {
      ErrorToast("Password Required!");
      return;
    }

    setSubmit(true);

    const res = await fetch("/api/user/recover/resetPassword", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data),
    });

    const result = await res.json();
    setSubmit(false);

    if (result.status === "success") {
      SuccessToast("Password Reset Successful");
      sessionStorage.clear();
      router.push("/user/login");
    } else {
      ErrorToast("Invalid Request");
    }
  };

  return (
      <div className="row h-100 justify-content-center center-screen">
            <div className="col-md-4 col-lg-4 col-sm-12 col-12 ">
                <div className="card animated fadeIn p-5 gradient-bg">
                    <h5 className="mb-3">New Password</h5>
                    <input value={data.password} onChange={(e) => {inputOnChange('password', e.target.value)}} type="password" className="form-control mb-2"/>
                    <SubmitButton className="btn btn-danger mt-3" onClick={formSubmit} submit={submit} text="Next"/>
                </div>
            </div>
        </div>
    );
};

export default SetPasswordForm;
