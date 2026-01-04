"use client";
import React, { useState } from "react";
import SubmitButton from "../master/SubmitButton";
import { useRouter } from "next/navigation";
import {
  GetEmail,
  IsEmpty,
  SuccessToast,
  ErrorToast,
  SetOTP,
} from "@/utility/FormHelper";

const PinVerifyForm = () => {
  const router = useRouter();
  const [data, setData] = useState({ email: GetEmail(), otp: "" });
  const [submit, setSubmit] = useState(false);

  const inputOnChange = (name, value) => {
    setData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const formSubmit = async () => {
    if (IsEmpty(data.otp)) {
      ErrorToast("Verification Code is Required");
      return;
    }

    setSubmit(true);

    const res = await fetch(`/api/user/recover/verifyOTP`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    });

    const result = await res.json();
    setSubmit(false);

    if (result.status === "success") {
      SetOTP(data.otp); // Save OTP to sessionStorage for next step
      SuccessToast("Verification Successful");
      router.push("/user/resetPassword"); // Adjust path if different
    } else {
      ErrorToast(result.message || "Verification Failed");
    }
  };

  return (
    <div className="row h-100 justify-content-center center-screen">
      <div className="col-md-4 col-lg-4 col-sm-12 col-12 ">
        <div className="card animated fadeIn p-5 gradient-bg">
          <h5 className="mb-3">Verification PIN</h5>
          <input
            type="text"
            placeholder="XXXXX"
            className="form-control mb-2"
            value={data.otp}
            onChange={(e) => inputOnChange("otp", e.target.value)}
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

export default PinVerifyForm;
