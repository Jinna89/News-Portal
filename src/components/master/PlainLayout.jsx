import React from 'react'
import AppNavBar from './AppNavBar'
import Footer from './Footer'

import { Toaster } from 'react-hot-toast';
import { cookies } from 'next/headers';

async function getData() {
  try {
    const socialRes = await fetch(`${process.env.HOST}/api/social`);
    const categoryRes = await fetch(`${process.env.HOST}/api/category`);

    const socialData = await socialRes.json();
    const categoryData = await categoryRes.json();

    return {
      social: socialData?.data || [],
      categories: categoryData?.data || []
    };
  } catch (error) {
    console.error("Data fetch error:", error);
    return { social: [], categories: [] };
  }
}

const PlainLayout = async (props) => {
  const data = await getData();

  const cookieStore = await cookies();
  const token = cookieStore.get('token');
  let isLogin = false;
  isLogin = typeof token !== 'undefined';
  return (
    <div>
      <AppNavBar data={data} isLogin={isLogin} />
      {props.children}
      <Toaster position="bottom-center"/>
      <Footer data={data} />
    </div>
  )
}

export default PlainLayout
