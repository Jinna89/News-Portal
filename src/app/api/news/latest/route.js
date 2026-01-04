import { PrismaClient } from "@/generated/prisma";
import { NextResponse } from "next/server";

export async function GET(req, res) {
  try {
    const prisma = new PrismaClient();

    const result = await prisma.news_list.findMany({
      take: 12, 
      orderBy: { createdAt: "desc" },
      select: {
        id: true,
        title: true,
        short_des: true,
        img1: true,
        img2: true,
        img3: true,
        img4: true,
        createdAt: true,
        categories: {
          select: { id: true, name: true },
        },
        authore: {
          select: { id: true, firstName: true, lastName: true},
        },
      },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    console.error("Error fetching latest news:", e);
    return NextResponse.json({ status: "fail", message: e.message });
  }
}
