Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AF12D1DAD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 23:47:57 +0100 (CET)
Received: from [::1] (port=40380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmPIS-0007BY-Dj; Mon, 07 Dec 2020 17:47:56 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:36843)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kmPIO-00074V-Vr
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 17:47:53 -0500
Received: by mail-oi1-f181.google.com with SMTP id x16so17368384oic.3
 for <usrp-users@lists.ettus.com>; Mon, 07 Dec 2020 14:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oUIzcYyEpmYWxPjP559+vqokht3QelY5eiJMCHU8ZeA=;
 b=jZ6LVcGHH3eLFrbGtTX0wWnhkEraZNb/jDNu0HTAjA0+Bgd/3oCKeVqlD3xHcLXNbq
 GCly/mHzt7eCYv7ykNphfNnGgE16vrHU7n6nyCvOylxYtvSpwIr5rEj+joSX17gBvBIV
 pA89IRtg27dHPR+jS+oPdEBFgcvA0/sYKEu1q59FR0OicOa5EhftPSLJbR+vssqiq0qo
 zMDwK6R0KB6B0QfJ9+LxyWiiNy31eRgQxSCf+j1U8H+roeMVga6zUVxNte35geSZ8roJ
 LXVSEoAP8XCUw7qL0B/SMnaGWqyd9jb3NxZKPRcSLEmr/U12JpJVMX/Fg/hS9ZOzixcw
 2B6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oUIzcYyEpmYWxPjP559+vqokht3QelY5eiJMCHU8ZeA=;
 b=GhZAxaeV5TMlSqFQM4623+KDdBpgaRvcRlXDqifquR+WLZaYldr67sC0HrNk/kUffv
 xG+5cCSSKjk62XcO6acBQu91kdIjtszvnZyUyDN6bgxOUDV4o6IWa7dz0kyzkUTRoINR
 PNL7xtcM+LiseNxMlLgClfYOQiIVniTpSUC6OnEAd2R4tE+z2IuDciVlpTNteybeYLh1
 7uT8C2ek0FyMY9aAgvgHaJgwBTfChZGjd4E4p7n+VI3BYHwiC+ZIp7DO9ua3hhmOSLZC
 8UZQRMxYAZ2scBlNDhCTFCdNSvAbXGvHfbyvBmHruytEuBZNGb/hUCEbtJ6n2hKDLWU0
 0T2w==
X-Gm-Message-State: AOAM531vFp9Y1GBE9hGlVL9FwL+CwA8txWrOlxXB0jDo4scadEPk4OEE
 YjolaYep59eccU5g2GESAE9eibYRF145hGCYziCl1Q==
X-Google-Smtp-Source: ABdhPJwWsh4vX7pnjNlse7YXQwKlUtyX3ceHJnhXwdUVUQWz4RAtACLySt/d9n4C3g7u1S8SRzoeAIrhPNRbJQGotIc=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr791230oic.124.1607381231906; 
 Mon, 07 Dec 2020 14:47:11 -0800 (PST)
MIME-Version: 1.0
References: <988BF083-D469-4DFB-BDDB-68CF5C4873E0@gmail.com>
 <4948EA29-AD3C-4ACE-8E40-B262B20319FA@yahoo.com>
In-Reply-To: <4948EA29-AD3C-4ACE-8E40-B262B20319FA@yahoo.com>
Date: Mon, 7 Dec 2020 17:47:01 -0500
Message-ID: <CAB__hTTEK1145D=RaXFH_XrjEeVqW0vnky38DB2i0=Z-_JaWHg@mail.gmail.com>
To: Mark McAllister <bassecho21@yahoo.com>
Subject: Re: [USRP-users] USRP B200 Function Question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7652251859281186730=="
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

--===============7652251859281186730==
Content-Type: multipart/alternative; boundary="00000000000058fbe305b5e79b20"

--00000000000058fbe305b5e79b20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A couple of questions:
- why not just buy a new N210?
- why not just run a USB cable to a B2xx?

Perhaps you could provide more info on your overall setup.  Are the USRPS
nearby the host PC?  Is there a reason they have to be Ethernet?  What
sample rate are you using on the N210?
Rob

On Mon, Dec 7, 2020 at 5:30 PM Mark McAllister <bassecho21@yahoo.com> wrote=
:

> Hmmm. It seems that using the B2xx series would cause us to make serious
> changes to a system that none of our current members have a good handle o=
n
> how to adjust.
>
> Does anyone happen to have any suggestions for a proper ethernet
> compatible USRP that could act as a substitute for an N210 operating as a
> local oscillator?
>
> Pardon my ignorance with the topic, its not exactly my area of expertise.
>
> Mark McAllister
>
> Sent from my iPhone
>
> On Dec 7, 2020, at 11:21 AM, Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
> =EF=BB=BFSimilarly it=E2=80=99s easy to get B2xx working with a super che=
ap SBC like the
> rPi boards or Odroids etc.
>
> Sent from my iPhone
>
> On Dec 7, 2020, at 2:16 PM, Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Mark,
> Just this past Friday, I had success controlling a B200mini directly from
> an N310 using the USB2 port on the N310.  Such a use case limits you to
> USB2 streaming for the B2xx and it also hogs CPU cycles from the N310.  L=
et
> me know if this is of interest to you I can can provide more info.
> Rob
>
> On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> My senior design team at California State University Northridge is
>> current using a USRP N210 as a  local oscillator for a smart antenna arr=
ay.
>>
>> We're considering purchasing something from the B200 series in order to
>> replace it since we are current borrowing our N210.
>>
>> Our concern is that the B200 specifies the use of USB 3.0 for connecting
>> to a host computer, and we are currently connecting both an N210 and N31=
0
>> to a router which connects all signals to a host computer.
>>
>> My main question is whether or not the B200 series will run properly
>> using a USB to Ethernet adapter or if the device MUST be connected direc=
tly
>> to the host computer via USB.
>>
>> Thank you for your time,
>> Mark McAllister
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000058fbe305b5e79b20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A couple of questions:<div>- why not just buy a new N210?<=
/div><div>- why not just run a USB cable to a B2xx?</div><div><br></div><di=
v>Perhaps you could provide more info on your overall setup.=C2=A0 Are the =
USRPS nearby the host PC?=C2=A0 Is there a reason they have to be Ethernet?=
=C2=A0 What sample rate are you using on the N210?</div><div>Rob</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Dec 7, 2020 at 5:30 PM Mark McAllister &lt;<a href=3D"mailto:bassecho21@=
yahoo.com" target=3D"_blank">bassecho21@yahoo.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hmmm. It=
 seems that using the B2xx series would cause us to make serious changes to=
 a system that none of our current members have a good handle on how to adj=
ust.=C2=A0<div><br></div><div>Does anyone happen to have any suggestions fo=
r a proper ethernet compatible USRP that could act as a substitute for an N=
210 operating as a local oscillator?</div><div><br></div><div>Pardon my ign=
orance with the topic, its not exactly my area of expertise.=C2=A0</div><di=
v><br></div><div>Mark McAllister<br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 7, 2020, at 11=
:21 AM, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BFSimilarly it=E2=80=
=99s easy to get B2xx working with a super cheap SBC like the rPi boards or=
 Odroids etc.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Dec 7, 2020, at 2:16 PM, Rob Ko=
ssler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blockquote=
></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"=
>Mark,<div>Just this past Friday, I had success controlling a B200mini dire=
ctly from an N310 using the USB2 port on the N310.=C2=A0 Such a use case li=
mits you to USB2 streaming for the B2xx and it also hogs CPU cycles from th=
e N310.=C2=A0 Let me know if this is of interest to you I can can provide m=
ore info.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Dec 7, 2020 at 1:56 PM Mark McAlliste=
r via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:&quot;=
Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div dir=3D=
"ltr">My senior design team at California State University Northridge is cu=
rrent using a USRP N210 as a=C2=A0 local oscillator for a smart antenna arr=
ay. <br><br><div>We&#39;re considering purchasing something from the B200 s=
eries in order to replace it since we are current borrowing our N210. <br><=
/div><div><br></div><div dir=3D"ltr">Our concern is that the B200 specifies=
 the use of USB 3.0 for connecting to a host computer, and we are currently=
 connecting both an N210 and N310 to a router which connects all signals to=
 a host computer.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">My m=
ain question is whether or not the B200 series will run properly using a US=
B to Ethernet adapter or if the device MUST be connected directly to the ho=
st computer via USB. <br><br><div>Thank you for your time, <br></div><div d=
ir=3D"ltr">Mark McAllister<br></div></div></div></div></div>_______________=
________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></blockquote></div></div><=
/blockquote></div>

--00000000000058fbe305b5e79b20--


--===============7652251859281186730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7652251859281186730==--

