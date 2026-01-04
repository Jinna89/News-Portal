import { PrismaClient } from "@/generated/prisma";
import { NextResponse } from "next/server";
import { headers } from "next/headers";

const prisma = new PrismaClient();

export async function GET() {
  try {
    const headerList = headers();
    const userID = parseInt(headerList.get("id"));

    if (!userID) {
      return NextResponse.json({ status: "fail", data: [] });
    }

    const result = await prisma.comments.findMany({
      where: { userID },
      include: {
        news_list: { select: { title: true } },
      },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    return NextResponse.json({ status: "fail", data: [] });
  }
}

export async function POST(req) {
  try {
    const headerList = headers();
    const userID = parseInt(headerList.get("id"));

    const reqBody = await req.json();
    reqBody.userID = userID;

    const result = await prisma.comments.create({ data: reqBody });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    return NextResponse.json({ status: "fail", data: null });
  }
}

export async function DELETE(req) {
  try {
    const headerList = headers();
    const userID = parseInt(headerList.get("id"));
    const reqBody = await req.json();

    const result = await prisma.comments.deleteMany({
      where: {
        userID,
        id: parseInt(reqBody.id),
      },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    return NextResponse.json({ status: "fail", data: null });
  }
}
