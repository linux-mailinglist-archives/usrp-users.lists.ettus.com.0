Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F8D2D1DA2
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 23:46:46 +0100 (CET)
Received: from [::1] (port=40370 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmPHI-0006uo-7A; Mon, 07 Dec 2020 17:46:44 -0500
Received: from mail-ua1-f44.google.com ([209.85.222.44]:43282)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kmPHE-0006of-Dh
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 17:46:40 -0500
Received: by mail-ua1-f44.google.com with SMTP id s23so2177571uaq.10
 for <usrp-users@lists.ettus.com>; Mon, 07 Dec 2020 14:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YLzcWqDw2OYC9Jy3xK6tlYjRZ/pduY+ksewtjO0peHk=;
 b=cygU5BSt1HbR8HKK1WbirrdoLdm+DykdeTKn4Ol8gSaEQceLjSXq25i5n8PHOl484/
 zRjppo6p8TOi+j6ENBWQX+apM6J+trTz+VtLHIc3hQs4dOBvCeCVQn9PdzgIldRofstw
 CXqOaRUPBYtL8ZaI14Vio8GEARIABmlzwsH7+58seusB8/63UOL1XGCFVjYygp4hBrLf
 wPCWDBReZmHqFh677ORpO+JTuakf6dLbIH1J2znaL+bSEJmb9Y10Tx+rnxAU85j3unvc
 GzRKT6IEbw4Y8Bco4nwgM9JPom7Rg9nk3woAJ5TOWr0xSs64Bi7HB/6qlwGxZavIdvLg
 0ofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YLzcWqDw2OYC9Jy3xK6tlYjRZ/pduY+ksewtjO0peHk=;
 b=o4A6DwuPAg5EohURl5b5qjStHxI9FzWTWl7QavGyL5hG132K2RpJCbBRAOpzxcDfDY
 sI6bb+tjQhORTsJFGgmy3wbCu8jAu6lXCwlsNV/vKFBZevqTC0LzkwOzNbAXMcfTP08F
 wXKJw/sIE4bJbOHQXZAC3og6vTfFQPRgmJrAzxuKviY0uFhizWFD03ecMlTaLD7osr9J
 a6u/UQRM2sCd8oRNl28DXNOxWP8xSx20Cxoe2zk3xqGVJ5V6reMdv8S5pkD0LJe3+EB7
 lDydkBbcp/xcsZkW3hEWTolyYHBQX+yFu/AiBF+1ye67fbMcVyE6Ln2/xoCY49Z94fE8
 8WjA==
X-Gm-Message-State: AOAM531bFT5RmsOcbK85RwicrSGA3rb2Ywr3ZCTk8v+fKLjJqxOUVyEQ
 heuBgXx54V0jUrVPWOCt9ZFZP6ClK2cRrB4+WsxLqMBx
X-Google-Smtp-Source: ABdhPJwvnbfAaPMn++gTbQvkqQjB0hAmPBo8KIGWGOCLgPqSCrbZbOf1N7C8bIl7bMvSXlN1bUbnproCQE6Pir6j5fY=
X-Received: by 2002:a9f:2d96:: with SMTP id v22mr13364357uaj.44.1607381159684; 
 Mon, 07 Dec 2020 14:45:59 -0800 (PST)
MIME-Version: 1.0
References: <988BF083-D469-4DFB-BDDB-68CF5C4873E0@gmail.com>
 <4948EA29-AD3C-4ACE-8E40-B262B20319FA@yahoo.com>
In-Reply-To: <4948EA29-AD3C-4ACE-8E40-B262B20319FA@yahoo.com>
Date: Mon, 7 Dec 2020 17:45:49 -0500
Message-ID: <CAL7q81vTcBXp2T8kt1TNmNCjK4ZJiDUgntDx54uuL=cxmpn7mA@mail.gmail.com>
To: Mark McAllister <bassecho21@yahoo.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============0358488346631840873=="
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

--===============0358488346631840873==
Content-Type: multipart/alternative; boundary="0000000000000ac0ac05b5e7972e"

--0000000000000ac0ac05b5e7972e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In case you don't know, N210s are still available for purchase on ettus.com=
.

On Mon, Dec 7, 2020, 17:30 Mark McAllister via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000ac0ac05b5e7972e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>In case you don&#39;t know, N210s are still availabl=
e for purchase on <a href=3D"http://ettus.com">ettus.com</a>.</div><div dir=
=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Dec 7, 2020, 17:30 Mark McAllister via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">=
Hmmm. It seems that using the B2xx series would cause us to make serious ch=
anges to a system that none of our current members have a good handle on ho=
w to adjust.=C2=A0<div><br></div><div>Does anyone happen to have any sugges=
tions for a proper ethernet compatible USRP that could act as a substitute =
for an N210 operating as a local oscillator?</div><div><br></div><div>Pardo=
n my ignorance with the topic, its not exactly my area of expertise.=C2=A0<=
/div><div><br></div><div>Mark McAllister<br><br><div dir=3D"ltr">Sent from =
my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 7, 202=
0, at 11:21 AM, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; wro=
te:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BFSimilarly it=E2=80=99s easy to get B2xx working with a super cheap=
 SBC like the rPi boards or Odroids etc.=C2=A0<br><br><div dir=3D"ltr">Sent=
 from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec =
7, 2020, at 2:16 PM, Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"ci=
te"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Mark,<div>Just this past Fri=
day, I had success controlling a B200mini directly from an N310 using the U=
SB2 port on the N310.=C2=A0 Such a use case limits you to USB2 streaming fo=
r the B2xx and it also hogs CPU cycles from the N310.=C2=A0 Let me know if =
this is of interest to you I can can provide more info.</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div><div style=3D"font-family:&quot;Helvetica N=
eue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div dir=3D"ltr">My se=
nior design team at California State University Northridge is current using=
 a USRP N210 as a=C2=A0 local oscillator for a smart antenna array. <br><br=
><div>We&#39;re considering purchasing something from the B200 series in or=
der to replace it since we are current borrowing our N210. <br></div><div><=
br></div><div dir=3D"ltr">Our concern is that the B200 specifies the use of=
 USB 3.0 for connecting to a host computer, and we are currently connecting=
 both an N210 and N310 to a router which connects all signals to a host com=
puter.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">My main questio=
n is whether or not the B200 series will run properly using a USB to Ethern=
et adapter or if the device MUST be connected directly to the host computer=
 via USB. <br><br><div>Thank you for your time, <br></div><div dir=3D"ltr">=
Mark McAllister<br></div></div></div></div></div>__________________________=
_____________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettus.com</a></=
span><br><span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br></div></block=
quote></div></blockquote></div></div>______________________________________=
_________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--0000000000000ac0ac05b5e7972e--


--===============0358488346631840873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0358488346631840873==--

