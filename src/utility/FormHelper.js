import toast from "react-hot-toast";

let EmailRegx = /\S+@\S+\.\S+/;
let MobileRegx = /(^(\+88|0088)?(01){1}[3456789]{1}(\d){8})$/;

class FormHelper {
  IsEmpty(value) {
    return !value || value.length === 0;
  }

  IsMobile(value) {
    return MobileRegx.test(value);
  }

  IsEmail(value) {
    return !EmailRegx.test(value);
  }

  SetEmail(value) {
    if (typeof window !== "undefined") {
      sessionStorage.setItem("email", value);
    }
  }

  GetEmail() {
    if (typeof window !== "undefined") {
      return sessionStorage.getItem("email");
    }
    return "";
  }

  SetOTP(value) {
    if (typeof window !== "undefined") {
      sessionStorage.setItem("otp", value);
    }
  }

  GetOTP() {
    if (typeof window !== "undefined") {
      return sessionStorage.getItem("otp");
    }
    return "";
  }

  ClearSession() {
    if (typeof window !== "undefined") {
      sessionStorage.clear();
    }
  }

  ErrorToast(msg) {
    toast.error(msg);
  }

  SuccessToast(msg) {
    toast.success(msg);
  }
}

export const {
  IsEmpty,
  SetEmail,
  GetEmail,
  SetOTP,
  GetOTP,
  ClearSession,
  IsMobile,
  IsEmail,
  ErrorToast,
  SuccessToast,
} = new FormHelper();
