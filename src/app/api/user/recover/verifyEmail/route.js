import { PrismaClient } from "@/generated/prisma";
import { NextResponse } from "next/server";
import { SendEmail } from "@/utility/EmailUtility";

export async function GET(req, res) {
  try {
    const prisma = new PrismaClient();
    let { searchParams } = new URL(req.url);
    let email = searchParams.get("email");

    const user = await prisma.users.count({
      where: { email: email },
    });
    if (!user) {
      return NextResponse.json({ status: "fail", data: "No user found" });
    } else {
      let code = Math.floor(100000 + Math.random() * 900000);
      let EmailText = `Your OTP Code is=${code}`;
      let EmailSubject = "Next News Verification Code";
      await SendEmail(email, EmailText, EmailSubject);

      let result = await prisma.users.update({
        where: { email: email },
        data: { otp: code.toString() },
      });
      return NextResponse.json({
        status: "success",
        data: "6 Digit OTP Code has been sent to your email",
      });
    }
  } catch (e) {
    return NextResponse.json({ status: "fail", data: e });
  }
}
