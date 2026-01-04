import { PrismaClient } from "@/generated/prisma";
import { NextResponse } from "next/server";


export async function POST(req,res){
    try{
        let reqBody=await req.json();
        const prisma = new PrismaClient();
        const count=await prisma.users.count({where:reqBody});

        if(!count){
            return NextResponse.json({status:"fail", data:"Invalid OTP Code"})
        }else{
            return NextResponse.json({status:"success", data:"Valid OTP Code"})
        }
    }catch (e) {
        return  NextResponse.json({status:"fail",data:e})
    }
}