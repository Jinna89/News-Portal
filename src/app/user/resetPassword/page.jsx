import React from 'react'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'

import PlainLayout from '@/components/master/PlainLayout'
import SatPasswordForm from '@/components/user/SatPasswordForm'

const page = () => {
  const cookieStore = cookies()
  const token = cookieStore.get('token')

  if (token) {
    redirect('/')
  }

  return (
    <PlainLayout>
      <SatPasswordForm />
    </PlainLayout>
  )
}

export default page
