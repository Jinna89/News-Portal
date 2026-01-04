import PlainLayout from '@/components/master/PlainLayout'
import React from 'react'
import { cookies } from 'next/headers'
import UserCommentsList from '@/components/comments/UserCommentsList';

async function getData(cookieStore) {
  const options = {
    method: "GET",
    headers: {
      Cookie: cookieStore.toString(), // ✅ MUST be string
    },
    cache: "no-store",
  };

  const res = await fetch(
    `${process.env.HOST}/api/comments/manage`,
    options
  );

  const json = await res.json();
  return { Comments: json.data || [] };
}


const Page =async () => {

    const cookieStore = cookies()
    let data=await getData(cookieStore);

    return (
        <PlainLayout>
            <UserCommentsList data={data['Comments']}/>
        </PlainLayout>
    );
};

export default Page;