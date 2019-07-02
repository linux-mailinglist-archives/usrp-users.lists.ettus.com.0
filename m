Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E38A95D634
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 20:36:08 +0200 (CEST)
Received: from [::1] (port=53232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiNdP-00060e-Py; Tue, 02 Jul 2019 14:36:07 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:46027)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hiNdL-0005rJ-Qb
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 14:36:03 -0400
Received: by mail-oi1-f173.google.com with SMTP id m206so13914493oib.12
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 11:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PwJl6LxZSDHKCtaB+pa20UVz7dRfwtYVBHcNTPnaOA4=;
 b=RmIwgNnot3cyXqQwgF+e/OnxEA2FpUPtaK4iQ4Gl3a9f61U8iH+Ds+fmYHR0/2f+E3
 tKmmqLb34pHzVKIxAmgaempFSrODP2y1L44EXlYZ7pHcTk7TrUvGd22YagCvM1LAlskB
 yMo9mZ8vdUyy32yrnL+iwO+k6ss33rRSPJIiFpKYz3Q36gFyiRVPQLvDeo3SE3Kh/TLK
 k+7VnQcVKBbOObAxug9EUGLLYZQfRbPY6owGbloxDZfT2ajBUlmde6Hp1hKYofG7/PjR
 IRiRZYEWeSqh8+Czj3itQNCJqNi3nXKj6VTBlZjtJy9F+k6tQX0caSKDBU9ZC4WZT+x/
 oAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwJl6LxZSDHKCtaB+pa20UVz7dRfwtYVBHcNTPnaOA4=;
 b=prEy/nYRMj5T0k2zISE0PNRbCg05elVof5u7VFwAbCn+7vixBFIHqDG1yZPihA7jVv
 ClM4LSzN48hCGpgd+q+Q+DzqP38X0hN+SPVNDyKvGU177moHVkqyxR13Ab3oZyHmrSF3
 ZntLZ6aBN13MxBR3+iWprIvYefdXrWqN5L4nyEEZEEIFyQtJbo8IZ9Z8iCxMJEty6tTP
 V7K1yMi0b8D8UdrMYaKRrEpZpJBUL3dbC0fvNihf3CmNgpkQem89pI/qRqxzF+B7XuCt
 svljSVtTmXos6B3Pa/iIPAiSCOZibrw/6P8AWV3t5W8lMs/pt58BoocBXzOMsDTW/pNg
 LbIg==
X-Gm-Message-State: APjAAAUuMvDTtf9zH3hMr1ybYPcTPaOd2vs1XlaQoZ3BHyEMn1VeuXXt
 0oVf0MwGLZzelhQ6hW6MSHQ24B4iTS8s8BBiw49MQZL1
X-Google-Smtp-Source: APXvYqzDjaWNXty1378oyeBJgyderjWrbJ17ZjCOB0SEBqY14G2R9BJuxn3MISXoZutsUuT4jt92vQTgmraqfP6KMMg=
X-Received: by 2002:aca:4a4e:: with SMTP id x75mr3844819oia.154.1562092523238; 
 Tue, 02 Jul 2019 11:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAPkENw_ZqqrYix4Wci0b6=57vvMgSzcAmQJOMcLBfqwt89k8_A@mail.gmail.com>
In-Reply-To: <CAPkENw_ZqqrYix4Wci0b6=57vvMgSzcAmQJOMcLBfqwt89k8_A@mail.gmail.com>
Date: Tue, 2 Jul 2019 11:35:56 -0700
Message-ID: <CAL263ixDeShrtbxXqRU5rYi_t7RduPenH8-2aTTa58A8yDWgmw@mail.gmail.com>
To: Alex Roberts <alex.roberts@ieee.org>
Subject: Re: [USRP-users] Meaning of "S" output
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2348049465493270295=="
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

--===============2348049465493270295==
Content-Type: multipart/alternative; boundary="000000000000f44ecf058cb7015f"

--000000000000f44ecf058cb7015f
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

The S is for a sequence error, which are generally a bad thing to observe.

What version of UHD are you using?

Do you have the N210 directly connected to your host? Do you have any other
networking gear in between (switch/router/hubs?)

What NIC do you have on your host machine?




Regards,
Nate Temple

On Tue, Jul 2, 2019 at 11:11 AM Alex Roberts via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have N210 device that outputs a stream of a couple dozen "S" to the
> console before it stops processing samples. I say "stops processing
> samples" because when I use a GUI sink in gnuradio-companion to look at
> complex values being sent to the USRP, it updates once or twice, then goes
> static after the stream of "S" is complete. What does "S" mean? I can't
> find any documentation on it.
>
> Thanks!
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f44ecf058cb7015f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Alex,<br><br>The S is for a sequence error, which ar=
e generally a bad thing to observe.<br><br>What version of UHD are you usin=
g?<br><br>Do you have the N210 directly connected to your host? Do you have=
 any other networking gear in between (switch/router/hubs?)<br><br>What NIC=
 do you have on your host machine?<br><br><br><br><br>Regards,<br>Nate Temp=
le<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jul 2, 2019 at 11:11 AM Alex Roberts via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have N210 device that=
 outputs a stream of a couple dozen &quot;S&quot; to the console before it =
stops processing samples. I say &quot;stops processing samples&quot; becaus=
e when I use a GUI sink in gnuradio-companion to look at complex values bei=
ng sent to the USRP, it updates once or twice, then goes static after the s=
tream of &quot;S&quot; is complete. What does &quot;S&quot; mean? I can&#39=
;t find any documentation on it.=C2=A0</div><div><br></div><div>Thanks!</di=
v></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f44ecf058cb7015f--


--===============2348049465493270295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2348049465493270295==--

