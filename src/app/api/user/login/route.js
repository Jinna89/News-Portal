import { NextResponse } from "next/server";
import { PrismaClient } from "@/generated/prisma";
import { CreateToken } from "@/utility/JWTTokenHelper";

const prisma = new PrismaClient();

/* ================= LOGIN ================= */
export async function POST(req) {
  try {
    const reqBody = await req.json();
    const { email, password } = reqBody;

    const user = await prisma.users.findUnique({
      where: { email: email },
    });

    if (!user || user.password !== password) {
      return NextResponse.json({ status: "fail" }, { status: 401 });
    }

    const token = await CreateToken(user.email, user.id);

    const response = NextResponse.json({ status: "success" }, { status: 200 });

    // ✅ Cookie SET
    response.cookies.set("token", token, {
      httpOnly: true,
      path: "/",
      maxAge: 60 * 60 * 24, // 1 day
      sameSite: "lax",
    });

    return response;
  } catch (e) {
    return NextResponse.json(
      { status: "fail", error: e.message },
      { status: 500 }
    );
  }
}

/* ================= LOGOUT ================= */
export async function GET(req) {
  const response = NextResponse.redirect(new URL("/", req.url));

  // ✅ Cookie DELETE
  response.cookies.set("token", "", {
    path: "/",
    expires: new Date(0),
  });

  return response;
}
