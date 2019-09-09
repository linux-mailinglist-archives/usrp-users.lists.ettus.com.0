Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5ECAD9F9
	for <lists+usrp-users@lfdr.de>; Mon,  9 Sep 2019 15:28:07 +0200 (CEST)
Received: from [::1] (port=42942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7Ji8-0006QZ-BZ; Mon, 09 Sep 2019 09:28:04 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:35721)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saimanoj.katta@cumucore.com>)
 id 1i7Ji3-0006L7-MA
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 09:27:59 -0400
Received: by mail-qk1-f173.google.com with SMTP id d26so13070513qkk.2
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 06:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumucore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j210nmLhi2EH+DzKGw7gZt2is2Mim1m/RbXGp6tmP5U=;
 b=estkYLp2LeFqrDCcC7U2TPkrV+Crc4Ell5plvXtYzBCOXl8aprutVs2LNI0yXSODaK
 g+0yn++e+cMwLjl3oifgzNcx48wIoj3/of2U0CQezzHDTVEnZ+ZLnQfb+F6X9MqZlmCX
 WO72V+L8ges6FPgCLTAGkTYNG8eUndvbW8NuNnnEgjoI+Y0ambapDMDMPecixYuu6SH9
 abbb8KJYPNnfG6oLEX1upTLoOwZROBUPCvuQrvLuEJ4a9eJahi5ZNxqhTzDKeeiOVTUo
 ZQ2m5l25f7NpZrLtnmwUonQSXiSA1TlgGBXSZlWkiOy/wyN4d1R4AjMwuZoFxgji90dg
 sKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j210nmLhi2EH+DzKGw7gZt2is2Mim1m/RbXGp6tmP5U=;
 b=Eky5bbdIy9zV3kd6635/rVw34ijbYbx2gyAwkSKYnyWutf9lj4abJ8zmAyv1FaQg5K
 5cFfQEKPugGje0HDptwXGNwt3N/kUokjD6eWkjRNFbxcrsLAvMqPNdYSXDd+N32PDByH
 C5WELZn2JkG/sH73WKCuOMxPXlEj2H51i3pGKiGBMTDRPaKYkiez5s5Y69/FIjCKBvJN
 m4svKlev4L8RhK37W+/X8D1szHMDnIRCOeLjeD8WiMRwmdUoYQUqmVEWffyuIzRgW7PS
 KhERsmmTm8RY/ZkEUEBzDQJjus+3PuyzPM46R9FB91WDuvgmS/sJur7OfRced81AUNoc
 pPnA==
X-Gm-Message-State: APjAAAUbVJEMcS2AOKPYIGs9+spJnixzi8KHMhLE/sHP0LLjkM9S+ySa
 naz4ZgPMIOzSnFTugTyX8p9AD1W8FjbhD5HRHC5PmA==
X-Google-Smtp-Source: APXvYqyJ/NV9JAxbVRomr4CZ0g13RwdbIFf5V33LHNvZtP4xac/Q/6igBhFiCQCW7J8FW8tuovDKRbbbUAOgZ8gmMAc=
X-Received: by 2002:a37:4986:: with SMTP id
 w128mr22227981qka.417.1568035638909; 
 Mon, 09 Sep 2019 06:27:18 -0700 (PDT)
MIME-Version: 1.0
References: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
 <CANf970Y19wuC4PdsV8+tUJE=3c6E-SwmnxqzJ2KRrPLXNLuFtA@mail.gmail.com>
 <CABO=5RqM9LMP8Mo8WGQU0ApJTiDkAyyNzF8CuwjXoRFpFJ6P4w@mail.gmail.com>
 <CANf970b9wTdfsEMfvcuLHiCGKnM_ony0joPTo87WchfnGTYHTA@mail.gmail.com>
In-Reply-To: <CANf970b9wTdfsEMfvcuLHiCGKnM_ony0joPTo87WchfnGTYHTA@mail.gmail.com>
Date: Mon, 9 Sep 2019 16:27:07 +0300
Message-ID: <CABO=5RqiNqtYSRHw4qYwFvQT71CyQmvMX+GgNGC4owZ=zan6wA@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] Detection of USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Saimanoj Katta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saimanoj Katta <saimanoj.katta@cumucore.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2313242460485989626=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2313242460485989626==
Content-Type: multipart/alternative; boundary="00000000000040ae5f05921ebfae"

--00000000000040ae5f05921ebfae
Content-Type: text/plain; charset="UTF-8"

Hi Sam,

Thanks for your kind words.

Firstly, it had detection problems. Even, after writing FPGA image nothing
happened. There were no indications, that it failed. I assumed it is dead,
since after successful image writing, nothing happened. I waited for
sometime, maybe after I wrote email, I tried one more time. It successfully
loaded the image and usrp was back to life.

But, I am still wondering, if this has impacted USRP(Which is presumably
problematic). I am trying to emulate it via Open source LTE software and I
see from logs, that the software sends signal to the radio via physical
layer. But, there is no wireless network created. Multiple COTS devices
didn't detect it, in spite of all the correct configurations (After the
first failure, I am not able to get the network somehow).

Summarizing, does device recovery affect the working of device? If multiple
times, it's recovered, what impact or implications, it might have? This is
a good starting point to analyze, in my opinion.

Regards,
Saimanoj

On Thu, Sep 5, 2019 at 11:03 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Saimanoj,
>
> Depending on which red lights you're talking about, that's not necessarily
> indicative of an issue.
>
> Can you tell me a bit more about what was going on when you had the issue?
> Were you trying to write an FPGA image to the device, or did it just die
> out of nowhere?
>
> Additionally, I'd like to know if you experience any issues during the
> jtag process. Screenshots are always helpful.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
>
> On Tue, Sep 3, 2019 at 2:52 AM Saimanoj Katta <saimanoj.katta@cumucore.com>
> wrote:
>
>> Hi Sam,
>>
>> Thank you for the information. Yes, you were right. I didn't see the LEDs
>> on the SFP port illuminating. I followed your instructions and the USRP
>> worked like a charm for all these days.
>>
>> However, I didn't have any issues until yesterday. Yesterday, it suddenly
>> stopped working. I could see the Red LED lights from the side and from my
>> earlier observation(as LEDs were not illuminating in SFP port), I concluded
>> it to be in the earlier state. I tried reprogramming the same way and it
>> doesn't work now. Any further points on how to bring back the device to the
>> normal state?  I am still hopeful of it getting fixed.
>>
>> Looking forward to your reply. Thank you for your time and consideration.
>>
>> Regards,
>> Saimanoj
>>
>> On Tue, Jul 23, 2019 at 11:59 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>>
>>> When you plug in either link, do you see the LEDs on the SFP ports
>>> illuminate? You may have bricked the X310 if these ports are unresponsive.
>>>
>>> Here's a *discovery* guide that might be helpful:
>>> https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues
>>>
>>> Here's a *recovery* guide if that fails:
>>> https://kb.ettus.com/X300/X310_Device_Recovery
>>>
>>> Best,
>>>
>>> Sam Reiter
>>> SDR Support Engineer
>>> Ettus Research
>>>
>>>
>>> On Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> I was previously working with the USRP X310. I wanted to enable Dual
>>>> Connectivity mode for enabling two ports with 10 Giga bit connectivity. I
>>>> ran the update:  uhd_image_loader --args "type=x300,addr=192.168.50.2,
>>>> fpga=XG". Since this, I have not been able to detect my USRP.
>>>>
>>>> *My setup: * Ubuntu is 18.04 and the UHD version is
>>>> UHD_3.14.1.0-0-gbfb9c1c7
>>>> I have connected to the laptop via thunderbolt port which is equivalent
>>>> to USB-3.0. Firewall is disabled. It is not behind a router/switch. Host
>>>> interface IP address is 192.168.10.3 and subnet is 255.255.255.0
>>>>
>>>> I have tried the following:
>>>>
>>>> 1) Ran as root user - uhd_find_devices, uhd_usrp_probe and
>>>> uhd_images_downloader.
>>>> Device is not found in first two options. And, the fpga_default images
>>>> seem to be up to date.
>>>> 2) By default, USRPs have addresses from the 192.168.10.XXX range (
>>>> XXX=2 in factory settings). I searched addresses in this range, but
>>>> still USRP not detected. Ping to the address also fails.
>>>>
>>>> Any suggestions would be appreciated to detect the device! Many thanks
>>>> in advance.
>>>>
>>>> Regards,
>>>> Saimanoj
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--00000000000040ae5f05921ebfae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Sam, <br></div><div><br></div><div>Thanks for your=
 kind words. <br></div><div><br></div><div>Firstly, it had detection proble=
ms. Even, after writing FPGA image nothing happened. There were no indicati=
ons, that it failed. I assumed it is dead, since after successful image wri=
ting, nothing happened. I waited for sometime, maybe after I wrote email, I=
 tried one more time. It successfully loaded the image and usrp was back to=
 life. <br></div><div><br></div><div>But, I am still wondering, if this has=
 impacted USRP(Which is presumably problematic). I am trying to emulate it =
via Open source LTE software and I see from logs, that the software sends s=
ignal to the radio via physical layer. But, there is no wireless network cr=
eated. Multiple COTS devices didn&#39;t detect it, in spite of all the corr=
ect configurations (After the first failure, I am not able to get the netwo=
rk somehow).=C2=A0 <br></div><div><br></div><div>Summarizing, does device r=
ecovery affect the working of device? If multiple times, it&#39;s recovered=
, what impact or implications, it might have? This is a good starting point=
 to analyze, in my opinion. <br></div><div><br></div><div>Regards, <br></di=
v><div>Saimanoj<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at 11:03 PM Sam Reiter &lt;<a =
href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Saimanoj,</div><div><br></div><div>Depending on which red lights you&#3=
9;re talking about, that&#39;s not necessarily indicative of an issue. <br>=
</div><div><br></div><div>Can you tell me a bit more about what was going o=
n when you had the issue? Were you trying to write an FPGA image to the dev=
ice, or did it just die out of nowhere?</div><div><br></div><div>Additional=
ly, I&#39;d like to know if you experience any issues during the jtag proce=
ss. Screenshots are always helpful. <br></div><div><br></div><div><div dir=
=3D"ltr" class=3D"gmail-m_-6229599093897679012gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR Support Engineer</div><=
div>Ettus Research<br></div></div></div></div></div></div><br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3=
, 2019 at 2:52 AM Saimanoj Katta &lt;<a href=3D"mailto:saimanoj.katta@cumuc=
ore.com" target=3D"_blank">saimanoj.katta@cumucore.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hi Sam, <br></div><div><br></div><div>Thank you for the information. Yes, =
you were right. I didn&#39;t see the LEDs on the SFP port illuminating. I f=
ollowed your instructions and the USRP worked like a charm for all these da=
ys.</div><div><br></div><div>However, I didn&#39;t have any issues until ye=
sterday. Yesterday, it suddenly stopped working. I could see the Red LED li=
ghts from the side and from my earlier observation(as LEDs were not illumin=
ating in SFP port), I concluded it to be in the earlier state. I tried repr=
ogramming the same way and it doesn&#39;t work now. Any further points on h=
ow to bring back the device to the normal state?=C2=A0 I am still hopeful o=
f it getting fixed. <br></div><div><br></div><div>Looking forward to your r=
eply. Thank you for your time and consideration. <br></div><div><br></div><=
div>Regards,</div><div>Saimanoj<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2019 at 11:59 PM S=
am Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam=
.reiter@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">When you plug in either link, do you see =
the LEDs on the SFP ports illuminate? You may have bricked the X310 if thes=
e ports are unresponsive.=C2=A0<div><br></div><div>Here&#39;s a <b>discover=
y</b> guide that might be helpful:=C2=A0<a href=3D"https://kb.ettus.com/Tro=
ubleshooting_X300/X310_Device_Discovery_Issues" target=3D"_blank">https://k=
b.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues</a></div><div=
><br></div><div>Here&#39;s a <b>recovery</b> guide if that fails:=C2=A0<a h=
ref=3D"https://kb.ettus.com/X300/X310_Device_Recovery" target=3D"_blank">ht=
tps://kb.ettus.com/X300/X310_Device_Recovery</a></div><div><br></div><div>B=
est,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail-m_-62=
29599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR=
 Support Engineer</div><div>Ettus Research<br></div></div></div></div></div=
></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><=
div>I was previously working with the USRP X310. I wanted to enable Dual Co=
nnectivity mode for enabling two ports with 10 Giga bit connectivity. I ran=
 the update:=C2=A0 <span style=3D"font-size:11pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638984gmail-=
m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-guid-3=
8792c7d-7fff-6350-996e-1ea2104ef635">uhd_image_loader --args &quot;type=3Dx=
300,addr=3D192.168.50.2, fpga=3DXG&quot;.</span><span style=3D"font-size:11=
pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-wei=
ght:400;font-style:normal;font-variant:normal;text-decoration:none;vertical=
-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gma=
il-m_748991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275=
503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">  Since t=
his, I have not been able to detect my USRP. <br></span></div><div><span st=
yle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:t=
ransparent;font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-622=
9599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail-=
m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2=
104ef635"><br></span></div><div><span style=3D"font-size:11pt;font-family:A=
rial;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_74899175963=
9638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-in=
ternal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><b>My setup: </b><span st=
yle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:t=
ransparent;font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-622=
9599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail-=
m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2=
104ef635"> Ubuntu is 18.04 and the UHD version is UHD_3.14.1.0-0-gbfb9c1c7<=
/span></span></div><div><span style=3D"font-size:11pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638984g=
mail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635"><span style=3D"font-size:11pt;fon=
t-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:40=
0;font-style:normal;font-variant:normal;text-decoration:none;vertical-align=
:baseline;white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_7=
48991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gma=
il-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">I have connecte=
d to the laptop via thunderbolt port which is equivalent to USB-3.0. Firewa=
ll is disabled. It is not behind a router/switch. Host interface IP address=
 is 192.168.10.3 and subnet is 255.255.255.0 </span></span></div><div><span=
 style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-weight:400;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-=
6229599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119gma=
il-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1=
ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;font-famil=
y:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_74899175=
9639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs=
-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">I have tried the follo=
wing: <br></span></div><div><span style=3D"font-size:11pt;font-family:Arial=
;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638=
984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-intern=
al-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><div><span s=
tyle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:=
transparent;font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-62=
29599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail=
-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea=
2104ef635">1) Ran as root user - uhd_find_devices, uhd_usrp_probe and uhd_i=
mages_downloader. <br></span></div><div><span style=3D"font-size:11pt;font-=
family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748=
991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail=
-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Device is not fou=
nd in first two options. And, the fpga_default images seem to be up to date=
. <br></span></div><div><span style=3D"font-size:11pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638984g=
mail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635">2) By default, USRPs have address=
es from the <code>192.168.10.XXX</code> range (<code>XXX=3D2</code> in fact=
ory settings). I searched addresses in this range, but still USRP not detec=
ted. Ping to the address also fails. <br></span></div><div><span style=3D"f=
ont-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-62295990938=
97679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765=
53911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635=
"><br></span></div><div><span style=3D"font-size:11pt;font-family:Arial;col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638984g=
mail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635">Any suggestions would be apprecia=
ted to detect the device! Many thanks in advance. <br></span></div><div><sp=
an style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-co=
lor:transparent;font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m=
_-6229599093897679012gmail-m_748991759639638984gmail-m_3596933906674759119g=
mail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e=
-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;font-fam=
ily:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap" id=3D"gmail-m_-6229599093897679012gmail-m_748991=
759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-do=
cs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Regards, <br></span>=
</div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0)=
;background-color:transparent;font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
 id=3D"gmail-m_-6229599093897679012gmail-m_748991759639638984gmail-m_359693=
3906674759119gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-=
7fff-6350-996e-1ea2104ef635">Saimanoj<br></span></div><div><span style=3D"f=
ont-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-62295990938=
97679012gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765=
53911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635=
"><br></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000040ae5f05921ebfae--


--===============2313242460485989626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2313242460485989626==--

