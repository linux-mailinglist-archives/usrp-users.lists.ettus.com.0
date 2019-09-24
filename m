Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3714BCC2A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Sep 2019 18:14:26 +0200 (CEST)
Received: from [::1] (port=45512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCnSK-0004C5-R2; Tue, 24 Sep 2019 12:14:24 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:46128)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ryan@lmarlow.com>) id 1iCnSH-00044c-3V
 for usrp-users@lists.ettus.com; Tue, 24 Sep 2019 12:14:21 -0400
Received: by mail-qk1-f179.google.com with SMTP id 201so2312407qkd.13
 for <usrp-users@lists.ettus.com>; Tue, 24 Sep 2019 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lmarlow-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=xRvFO1VyS0R+ft0b5t63F100+0JL9u1l4jK8o1QpGaQ=;
 b=lC749CcAuXCbEzwzpH+5uCt/E2hAa+ZoFYmm3sFbJRmWmYbu3EefTqD+WnVen0x/jM
 hi9Xd949N+XcmBU5LT1dLZv+0ysx5Zmrhbem6o/dT9dVsK++L9L4mjTqXeA0tcZdxkoO
 G1gSvbtbkNvxJBEjL73Y86Pbbl4xR741hs6HDTjF0KQ/tts0zFR0Pv3F0XETabKwyQmj
 xHv7yvfqDkj90Y8OokDZgjWZ268GzsKm4KuFvTvXWOzldAvjKOv9tfOhOg05mwUDbXV5
 8B99/ilD9Yhg3Seb8oLxUrSKsHJ0Y7FdNOwxeEbPY6Ge9VaafCVBOWefVC6zkHObVpI3
 304A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xRvFO1VyS0R+ft0b5t63F100+0JL9u1l4jK8o1QpGaQ=;
 b=TL/n826MKMU+cTe2y/e1Yv30T1T+nZK/dA0voAOXfmdUk8Yl6vVzMRwg5OJlEzdLlP
 R7BjvylcSWI37QzXBNZfP/sPlkCHGGPUGLki2WIaeSCCRILYygaQmTirFa8Uz5a7GjNj
 w0rhXqjm2K7CCIFdT9WzuBCo5w1gFD2Onujo6M0PA5QxiMREnHmfq85ufOzwXNExHOA1
 7spEc+svP9wgqtGqq9/clsEHMPcn66/7+uKpLhKTttAA+7EJbkpJA9DTWTiwKG5JANHu
 tBH+mh8DjjU8JOeGtJc+hNrvckWDz4rVkgmMwOWV8LYH2cJSw2B8Ch5d5v1ebxUYYG05
 6v/Q==
X-Gm-Message-State: APjAAAUACQ8XDfIy3j5ZfWVIsun1/C9fxR8qr1QQohUh5DXviu7i6Ro7
 9w8L7S16capf96toHlfEJv2+Si6FvPDxskFsQXlx
X-Google-Smtp-Source: APXvYqwTXCKGfGXUHbo584hhXU4XZO8cfL4tSIxUvVD/yMr3o/L/1hHGNp5AUt9dVhGB2ZKCPBLOftsbOKTTKG5P1M4=
X-Received: by 2002:a37:4952:: with SMTP id w79mr3282975qka.59.1569341619423; 
 Tue, 24 Sep 2019 09:13:39 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 12:13:28 -0400
Message-ID: <CAOHuk9BA0NC=eWXzYLqBgCkeEKBfYDmxuuPHQHo56U8v4+dcDA@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Front Panel GPIO Question
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
From: Ryan Marlow via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ryan Marlow <ryan@lmarlow.com>
Content-Type: multipart/mixed; boundary="===============8236253838342258125=="
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

--===============8236253838342258125==
Content-Type: multipart/alternative; boundary="000000000000c1e1ec05934ed1fc"

--000000000000c1e1ec05934ed1fc
Content-Type: text/plain; charset="UTF-8"

Hey Bob,
Such a thing is possible but would require some slight modifications to the
device itself. I believe by default, RFA, channel 0 controls all the FP
GPIO. I believe it would be just a matter of modifying which fp control
ports are connected to the physical front panel pins. See this section of
x300_core.v.
https://github.com/EttusResearch/fpga/blob/master/usrp3/top/x300/x300_core.v#L780
Definitely a couple different ways you could go about having multiple
channels control the FP GPIO outputs.
Hope that helps,
Ryan

I have an X310 with 2 UBX cards.
>
> Is it possible to control one set of front panel GPIO pins from RFA and
> another set of front panel GPIO pins from RFB?
>
> Looking at the API, it just isn't clicking if that is possible?
>
> Thanks,
>

-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--000000000000c1e1ec05934ed1fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Bob,</div><div>Such a thing is possible but would=
 require some slight modifications to the device itself. I believe by defau=
lt, RFA, channel 0 controls all the FP GPIO. I believe it would be just a m=
atter of modifying which fp control ports are connected to the physical fro=
nt panel pins. See this section of x300_core.v. <a href=3D"https://github.c=
om/EttusResearch/fpga/blob/master/usrp3/top/x300/x300_core.v#L780">https://=
github.com/EttusResearch/fpga/blob/master/usrp3/top/x300/x300_core.v#L780</=
a> Definitely a couple different ways you could go about having multiple ch=
annels control the FP GPIO outputs. <br></div><div>Hope that helps,</div><d=
iv>Ryan<br></div><div><br> </div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div>I have an X310 with 2 UBX cards.<br>
<br>
Is it possible to control one set of front panel GPIO pins from RFA and ano=
ther set of front panel GPIO pins from RFB?<br>
<br>
Looking at the API, it just isn&#39;t clicking if that is possible?<br>
<br>
Thanks,</div></blockquote><br>-- <br><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Ryan L. Marlo=
w</div><div>R L Marlow Consulting LLC</div><div><a href=3D"http://rlmarlow.=
com" target=3D"_blank">rlmarlow.com</a><br></div></div></div></div>

--000000000000c1e1ec05934ed1fc--


--===============8236253838342258125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8236253838342258125==--

