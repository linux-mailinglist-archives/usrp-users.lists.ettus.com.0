Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 841C2376709
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 16:29:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85F92384179
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 10:29:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SQz+BHxt";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 86803383EDA
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 10:28:43 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id c11so6611317qth.2
        for <usrp-users@lists.ettus.com>; Fri, 07 May 2021 07:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=7VlNwHQC0dIKMTOlNN9+n7GHM3toWxXYEUxXaW7jxxU=;
        b=SQz+BHxtyy4JjEFD7stHq/2OQMJmLG48+8cXVEdDNZT6MUC/RHWxADBv0ISKz/DOEv
         GEAOq3bfdPxZLZjCGiHhRFbE+jhazYZxI9mLsiHAoozyVHNFOggD5DDRdBUy3St0Q7S5
         n7dyoCV2CVEUx2AWgRygwqz5gWgjnFrnJ0tALMShjKjlXPgg8SFzr5aJTOdVUyGjFxdG
         az628OpmRKxgFcqokNQOzskT0rf0qz63zu8IPrzBT1ME/RgIp2r4R0vZ+uOEJK04Aywf
         vOVRbLJ9IBGTUJDYKwqd3GpWxlrh/YBKA4CkSXRbMvRGXkzXBWJvWNPsPavDRJ2O1R8O
         2v1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=7VlNwHQC0dIKMTOlNN9+n7GHM3toWxXYEUxXaW7jxxU=;
        b=bMr6j8wr4cJo5XMHSzDLDurxBhuFphSANrhf07+QgQnGbCZNVR0928zDW9DKmG8b12
         EIl5UnFlY87VWdUhIrDPyuu34WX4hsmxfvyYJp2RhRIprSKUpVQy3OpnFkh0PPoJu10L
         Er8ZVk+JtVFpgq7kWTdKCHdFYB2sERcEwj4KSuYh83fywsHKDtsdpjcBgkEHhvp0kJkK
         U8K5/DuQBafHrtyfCZCAceg3LDA2qX0Hbs4AFRfmiZQnCb2KSDC4UMcfuNp95DhwEvpq
         EUHISmGwwF3yFyLYhmh6s3gq1IxfPsiIVE54jb4iC3YV26I4jZQ74+Qk2cdda9kdnx1K
         jzjg==
X-Gm-Message-State: AOAM532To5Sd+zC66a2hdaiLaLjO0jULP0b2qzuY68MDCcATKHva10i4
	9thk7jX1EsFKQCFJ56LYapg=
X-Google-Smtp-Source: ABdhPJyaOvY6z9d1obA2KAKiTJahHvqFWL9KWpjndyMHeAnAHH7hSrApYYSH2FKyy2OiSKy+HkBtRA==
X-Received: by 2002:a05:622a:1650:: with SMTP id y16mr3222868qtj.385.1620397722986;
        Fri, 07 May 2021 07:28:42 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id r9sm4995045qtf.62.2021.05.07.07.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 07:28:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 7 May 2021 10:28:41 -0400
Message-Id: <06FFA3A1-6602-4984-B024-5E82DB322D47@gmail.com>
References: <CAB__hTS1kbqivr5827StjRJBRVkdvD5FKvyLyZopL4Tnn4iQJw@mail.gmail.com>
In-Reply-To: <CAB__hTS1kbqivr5827StjRJBRVkdvD5FKvyLyZopL4Tnn4iQJw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 7ISS2VG4RQBHXV5KIDISTSDLEEREGQFQ
X-Message-ID-Hash: 7ISS2VG4RQBHXV5KIDISTSDLEEREGQFQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ISS2VG4RQBHXV5KIDISTSDLEEREGQFQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9036504606165765354=="


--===============9036504606165765354==
Content-Type: multipart/alternative; boundary=Apple-Mail-0A7D7794-A7E0-43E7-BD0E-3F13E2F866CB
Content-Transfer-Encoding: 7bit


--Apple-Mail-0A7D7794-A7E0-43E7-BD0E-3F13E2F866CB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Get a proper splitter.=20

Sent from my iPhone

> On May 7, 2021, at 8:52 AM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> This doesn't sound like a good idea to me.=20
>=20
>> On Thu, May 6, 2021 at 11:26 PM Zeng, Huacheng <huacheng.zeng@gmail.com> w=
rote:
>> Dear Rob and Marcus,=20
>>=20
>> Thank you for your response. I have a follow up question. Since I do not h=
ave an RF power splitter at hand for the external LO source, do you think it=
 is fine to use a 1-to-2 SMA cable to connect an N210's output port to N310'=
s TX and RX External LO ports? Thanks again.
>>=20
>> Best regards,
>> Hua
>>=20
>>=20
>>=20
>>> On Thu, May 6, 2021 at 10:58 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>>> This should work. Keep in mind that the mixers in the N310 are 2XLO so t=
he external LO has to be at twice the desired tuned frequency.=20
>>>=20
>>> Sent from my iPhone
>>>=20
>>> > On May 6, 2021, at 10:31 PM, Zeng, Huacheng <huacheng.zeng@gmail.com> w=
rote:
>>> >=20
>>> > =EF=BB=BF
>>> > Hello,
>>> >=20
>>> > I want to use an external LO for N310. I learned that a common case is=
 to use a signal generator to produce the external LO and feed it to N310. S=
ince I do not have a signal generator at the moment, I was wondering if it i=
s okay to use an N210 to generate the external LO for N310. I will adjust th=
e Tx gain of N210 so that the output power is in the range of 0 to 6 dBm.
>>> >=20
>>> > Regards,
>>> > Hua
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0A7D7794-A7E0-43E7-BD0E-3F13E2F866CB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Get a proper splitter.&nbsp;<br><br><div di=
r=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On May 7, 2021, at 8:52 AM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div>This doesn't sound like a good idea to me.&nbsp;</d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, May 6, 2021 at 11:26 PM Zeng, Huacheng &lt;<a href=3D"mailto:huacheng.ze=
ng@gmail.com">huacheng.zeng@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear Rob and Marcus,&nbsp=
;<div><br></div><div>Thank you&nbsp;for your response. I have a follow up qu=
estion. Since I do not have an RF power splitter at hand for the external LO=
 source, do you think it is fine to use a 1-to-2 SMA cable to connect an N21=
0's output port to N310's TX and RX External LO ports? Thanks again.</div><d=
iv><br></div><div>Best&nbsp;regards,</div><div>Hua</div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, May 6, 2021 at 10:58 PM Marcus D Leech &lt;<a href=3D"mailt=
o:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This shoul=
d work. Keep in mind that the mixers in the N310 are 2XLO so the external LO=
 has to be at twice the desired tuned frequency. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On May 6, 2021, at 10:31 PM, Zeng, Huacheng &lt;<a href=3D"mailto:huach=
eng.zeng@gmail.com" target=3D"_blank">huacheng.zeng@gmail.com</a>&gt; wrote:=
<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I want to use an external LO for N310. I learned that a common case is t=
o use a signal generator to produce the external LO and feed it to N310. Sin=
ce I do not have a signal generator at the moment, I was wondering if it is o=
kay to use an N210 to generate the external LO for N310. I will adjust the T=
x gain of N210 so that the output power is in the range of 0 to 6 dBm. <br>
&gt; <br>
&gt; Regards,<br>
&gt; Hua<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></body></html>=

--Apple-Mail-0A7D7794-A7E0-43E7-BD0E-3F13E2F866CB--

--===============9036504606165765354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9036504606165765354==--
