import nodemailer from 'nodemailer';
export async function SendEmail(EmailTo,EmailText,EmailSubject){
   let Transport= nodemailer.createTransport({
        host:"smtp.gmail.com",
        port:465,
        secure:true,
        auth:{user:"freelancerjinna@gmail.com", pass:"wjgf dyrk vyjv rmjc"},
        tls:{rejectUnauthorized:false}
    })
    let MailOption={
       from:"Next JS News Portal <info@teamrabbil.com>",
       to:EmailTo,
       subject:EmailSubject,
       text:EmailText
    }
    return await Transport.sendMail(MailOption)
}
