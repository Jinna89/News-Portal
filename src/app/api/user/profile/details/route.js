import { NextResponse } from "next/server";
import { PrismaClient } from "@/generated/prisma";
import { headers } from "next/headers";

export async function GET(req) {
  try {
    const headerList = await headers();
    const id = parseInt(headerList.get("id"));
    const prisma = new PrismaClient();
    const result = await prisma.users.findUnique({
      where: { id: id },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    return NextResponse.json({ status: "fail", data: e.message });
  }
}
