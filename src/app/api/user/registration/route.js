import { PrismaClient } from "@/generated/prisma";
import { NextResponse } from "next/server";



export async function POST(req) {
    try{
        let reqBody=await req.json();
        reqBody.otp="0";
        const prisma = new PrismaClient();
        const result = await prisma.users.create({
            data: reqBody
        })
        return NextResponse.json({ status: "success", data: result
        })

    }
    
    catch (e) {
        return NextResponse.json({ status: "fail", data: e })
    }
}