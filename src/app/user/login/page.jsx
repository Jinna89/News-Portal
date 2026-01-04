
import React from 'react'
import PlainLayout from '@/components/master/PlainLayout'
import LoginForm from '@/components/user/LoginForm';
import { cookies } from 'next/headers'
import { redirect } from 'next/dist/server/api-utils'

const page = () => {
  const cookieStore = cookies();
  const token = cookieStore.get('token');
  if (typeof token !== 'undefined') {
    redirect('/');
  }
  return (
    <PlainLayout>
      <LoginForm />
    </PlainLayout>
  )
}

export default page