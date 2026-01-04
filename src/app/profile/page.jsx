import React, { cache } from "react";
import PlainLayout from "@/components/master/PlainLayout";
import { cookies } from "next/headers";
import ProfileForm from "@/components/profile/profile-form";

async function getData(cookies) {
  let option = {
    method : "GET",
    headers: {
      'Cookie': cookies || ''
    },
    cache: 'no-store'
  }
  let profile = (await (await fetch(`${process.env.HOST}/api/user/profile/details`,option)).json())['data']
    return { profile: profile };
}

const Page = async () => {

    const cookieStore = await cookies()
    let data=await getData(cookieStore);

    return (
        <PlainLayout>
            <ProfileForm data={data?.profile || null} />
        </PlainLayout>
    );
};

export default Page;
