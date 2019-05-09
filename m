Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAD118324
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 03:12:27 +0200 (CEST)
Received: from [::1] (port=55686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOXbj-0008Qm-7F; Wed, 08 May 2019 21:12:23 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:38744)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hOXbA-0008Io-Jb
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 21:12:18 -0400
Received: by mail-ot1-f52.google.com with SMTP id s19so742172otq.5
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 18:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5SUZ2OgwveAJ9c8/HsqL7x2nu1/3dYFB+TMCDeQ5oxg=;
 b=V1Pb4ftmut6SkrFDcH1GZk82MZDXLd1S47KcKdAdCtWanqa2dSPQ5GVdiyqGDSi/Ds
 XBrSkJeLbegFr8Qwj7DUyFSaMuGsl/gR41wf7q1VaR6iPS/PNBl52uoqLVNRMOIpP1th
 0B5qrXLFUQP75zs6Jhu2qRIiTDQ4Tg2MnvoLlHLEMQykmnG+RLzcbiyBb7yVyyqUanIw
 n+ibmiwqul9/giR3Q/9sWte21qaqJ1Db+6EPkIslY6vzdVJaQuPLnitUpDXvdM0art2k
 XyenUJvkuuD/obkc66kWlcUkW5eOzec8rgUCfU+M7z/YRDP5kyHma6J0XlKPJLeRcAkK
 1cOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5SUZ2OgwveAJ9c8/HsqL7x2nu1/3dYFB+TMCDeQ5oxg=;
 b=RMdLKdNRQYac7asweK8SZf4SboOcgPQAkaKRYfXfRmo7ObKnLYRwK5JNvN4xa1CP3v
 KVmOdwesEvVBQK+ehscBtjZVNHr9ZnPCiZfincB0R3XnbDVdl+AkVfTWPJaaT5n/dJaW
 9deeqe2VQSROPA/ge1uLun7EFLVKqINcEYa8aVp+iEk5U7dE8o6q0FTZJ0WXXvTBZdJn
 oYQCqOLpBXxgpBu5gNhn5QKPX0FmlEogm8O5SiTIJ4lytVUfhRXv4BxPa8fRdlyI79x2
 d66WDIv9UGvqTKVM2dYbfWaKS/jtBE9OVRZbvr5tZHF0Mve7+MgPbkALbBEmKtxmos2m
 oevA==
X-Gm-Message-State: APjAAAWCOdh7OoEx4D3qPeO0R69TIfE4UR7aKlwWjfV8rWqkg+xzDlId
 PnHaEII9s+k9Ohi0eS4lPctt5sdDSu6FmMBYarM4J3Me
X-Google-Smtp-Source: APXvYqyeVtKQtSWpP5bBE+u+DDCJruNeWyNsthBObByhploZxi0SDEOu8x6kA+h2Hv3aSZmq8fB8oj/kDFLdbkEfeJc=
X-Received: by 2002:a9d:3608:: with SMTP id w8mr483149otb.189.1557364267731;
 Wed, 08 May 2019 18:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
 <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
 <004a01d505f9$c7b437d0$571ca770$@sysware.com>
In-Reply-To: <004a01d505f9$c7b437d0$571ca770$@sysware.com>
Date: Wed, 8 May 2019 21:10:55 -0400
Message-ID: <CAEXYVK6A1rF0xvNNAi5HsBjpVFdfQw=aekVP4OU++Zby9+ov=g@mail.gmail.com>
To: Michael Deacon <michaeld@sysware.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3079858412587933507=="
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

--===============3079858412587933507==
Content-Type: multipart/alternative; boundary="000000000000f6ce9d05886a1fee"

--000000000000f6ce9d05886a1fee
Content-Type: text/plain; charset="UTF-8"

What does the signal look like in the time domain?

Is it driving the amplifier on the B205mini into saturation?

Brian

On Wed, May 8, 2019 at 7:57 PM Michael Deacon <michaeld@sysware.com> wrote:

> I added some attenuation. The overload is gone but the condition persists.
>
>
>
> Thanks,
>
>
>
> Mike
>
>
>
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Wednesday, May 8, 2019 4:37 PM
> *To:* Michael Deacon <michaeld@sysware.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Relationship between IQ values, gain and
> noise on B205mini transmitter
>
>
>
> On Wed, May 8, 2019 at 7:28 PM Michael Deacon via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello,
>
>
>
> I have a simple transmitter consisting of a file source connected to a
> USRP sink (attached image radio.png). The file contains interleaved
> floating point IQ representing a few seconds of LTE. The IQ amplitude
> values are normalized between +1.0 and -1.0. The sink is configured to
> 60db, 7.5MHz sample rate, 385MHz center frequency and 5MHz bandwidth. The
> output looks exactly like the original on a spectrum analyzer (see attached
> good.jpg). If I turn up the gain on the sink or increase the amplitude of
> the IQ data I get what looks to be noise on either side of the signal
> spectrum (see attached bad.jpg). Any idea what is going on here?
>
>
>
> Your bad.jpg picture has the spectrum analyzer saying OLVD.  Try changing
> your reference level of the spectrum analyzer to be higher so you don't
> saturate the input of the spectrum analyzer.
>
>
>
> Tell us if that fixes it for you.
>
>
>
> Brian
>

--000000000000f6ce9d05886a1fee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What does the signal look like in the time domain?<div><br=
></div><div>Is it driving the amplifier on the B205mini into saturation?</d=
iv><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 7:57 PM Michael De=
acon &lt;<a href=3D"mailto:michaeld@sysware.com">michaeld@sysware.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div l=
ang=3D"EN-US"><div class=3D"gmail-m_7608036553212458599WordSection1"><p cla=
ss=3D"MsoNormal">I added some attenuation. The overload is gone but the con=
dition persists.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal">Thanks,<u></u><u></u></p><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Mike<u></u><u></u></p><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><b>From:<=
/b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_bl=
ank">bpadalino@gmail.com</a>&gt; <br><b>Sent:</b> Wednesday, May 8, 2019 4:=
37 PM<br><b>To:</b> Michael Deacon &lt;<a href=3D"mailto:michaeld@sysware.c=
om" target=3D"_blank">michaeld@sysware.com</a>&gt;<br><b>Cc:</b> <a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a><br><b>Subject:</b> Re: [USRP-users] Relationship between IQ value=
s, gain and noise on B205mini transmitter<u></u><u></u></p><p class=3D"MsoN=
ormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Wed, May=
 8, 2019 at 7:28 PM Michael Deacon via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<u></u><u></u></p></div><div><blockquote style=3D"border-top:none;=
border-right:none;border-bottom:none;border-left:1pt solid rgb(204,204,204)=
;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><div><div><p c=
lass=3D"MsoNormal">Hello,<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal">I have a simple transmitter consistin=
g of a file source connected to a USRP sink (attached image radio.png). The=
 file contains interleaved floating point IQ representing a few seconds of =
LTE. The IQ amplitude values are normalized between +1.0 and -1.0. The sink=
 is configured to 60db, 7.5MHz sample rate, 385MHz center frequency and 5MH=
z bandwidth. The output looks exactly like the original on a spectrum analy=
zer (see attached good.jpg). If I turn up the gain on the sink or increase =
the amplitude of the IQ data I get what looks to be noise on either side of=
 the signal spectrum (see attached bad.jpg). Any idea what is going on here=
?<u></u><u></u></p></div></div></blockquote><div><p class=3D"MsoNormal"><u>=
</u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Your bad.jpg picture=
 has the spectrum analyzer saying OLVD.=C2=A0 Try changing your reference l=
evel of the spectrum analyzer to be higher so you don&#39;t saturate the in=
put of the spectrum analyzer.<u></u><u></u></p></div><div><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Tell us if =
that fixes it for you.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Brian<u></u><u></u=
></p></div></div></div></div></div></blockquote></div>

--000000000000f6ce9d05886a1fee--


--===============3079858412587933507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3079858412587933507==--

