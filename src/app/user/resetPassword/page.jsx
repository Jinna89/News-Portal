import React from 'react'
import PlainLayout from '@/components/master/PlainLayout'
import SatPasswordForm from '@/components/user/SatPasswordForm'

const page = () => {
  const cookieStore = cookies();
  const token = cookieStore.get('token');
  if (typeof token !== 'undefined') {
    redirect('/');
  }
  return (
    <PlainLayout>
      <SatPasswordForm />
    </PlainLayout>
  )
}

export default page