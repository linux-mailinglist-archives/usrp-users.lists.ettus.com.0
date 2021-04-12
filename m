Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA22F35CDB6
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 18:49:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D9AB384CE9
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 12:49:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="FnexUj+Y";
	dkim-atps=neutral
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 06266384BD4
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 12:48:34 -0400 (EDT)
Received: by mail-io1-f46.google.com with SMTP id e186so14122714iof.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 09:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2ZyIdGHQpIS3pblyUYF4p686p13iKWXh5HKJuCIvgkA=;
        b=FnexUj+Y35Gsq/ZZi5qZEKIQZoZTnOqeYETd45ijBpZpbB8a74rbUxl91uJaJxVPlY
         fOiBjfiESkbr0+hi8kYieFAGPtpGya9WKOI2lo0sDEmbHRPIqaqmPHcmULWJsF+iBgQt
         hgZZ8QOriSHMwFphaCs4ZDGRsoDs+OlgA0XAAkg9h7tYZH9b2C4boVD5qaKjL4dJaEJz
         MGm+/5CFIc5rfHpHGj1V2DcTsdGxTGTCODPPp3QS5JdjJDA8F8iLNO+i/7Vw6GUPvaL1
         l3N93JvLccobO1XABsL4zv3v9k6fiBD4xjNnTf6xRj60p5bxeShUUJf+8NeopVwGXMrE
         YQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2ZyIdGHQpIS3pblyUYF4p686p13iKWXh5HKJuCIvgkA=;
        b=NrzlGy5GKsUybMKYJM7wtM6cCkkLULK7izVyC11v0x4uCNxBvpy/9royOuTkk4SYpu
         4Bx3MDvJ1+y4FzYhtMGTKU78ySRl4E6k5eJjoOC9I+lvNhfxge+alZgdDmT7GkYlAOe2
         gmgXatW7YjT44+TosjooXq7nl8t1UazdUkM/c3JyT1zjXLm7BKjYs2IsNkRBhYVyXvq9
         rV46ptMxsSbHtmzeDQwBRvjp9ye51fJavDX9jczYdFuifA984rxRU5CGM0niBD9Lffb1
         y5EjG7AUyT/MwbTjtmuQe4hnfdXTq0Bqu2XCQie9rSR7zddBteuXFLkCqPTrVWGhniV8
         O/1Q==
X-Gm-Message-State: AOAM530Jo9OWpZi21wstO6rDb+lkRj0g86ONKAuXCMp4rGeTJdKfour2
	0PzgAV5SaE1Usbmd7WRlvztQ9HMVgOum0guVmO6oCELiqm/uXg==
X-Google-Smtp-Source: ABdhPJwbI0dkEU7tT4uxNlIFD1W7RsQADIZyXeOl5+1hvq3U63D0guZEJAXMAWi8PszhNDbxNjKYdwmxUhRueQQN7bA=
X-Received: by 2002:a02:7b26:: with SMTP id q38mr19996788jac.56.1618246113959;
 Mon, 12 Apr 2021 09:48:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNeaqE-mLR7TboX=zdGbF59wiKOc3RdUO93EidTnW=AmWRvQ@mail.gmail.com>
In-Reply-To: <CANsNeaqE-mLR7TboX=zdGbF59wiKOc3RdUO93EidTnW=AmWRvQ@mail.gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Mon, 12 Apr 2021 12:48:22 -0400
Message-ID: <CANsNearZnpjrmq4e0V+_ARobtJHs36EPtN=S6aXtwKee=LS1qg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: IR5NYTVJ2MTHLYTQDJM3TVH6XQ6X7R5Z
X-Message-ID-Hash: IR5NYTVJ2MTHLYTQDJM3TVH6XQ6X7R5Z
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help enabling CAN0 on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IR5NYTVJ2MTHLYTQDJM3TVH6XQ6X7R5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8912192811096345925=="

--===============8912192811096345925==
Content-Type: multipart/alternative; boundary="000000000000c836a305bfc94852"

--000000000000c836a305bfc94852
Content-Type: text/plain; charset="UTF-8"

Can anyone offer any suggestions?  I've been digging through TCL files
looking for where I could enable the CAN0 controller, but nothing has
worked so far.

Thanks.
Rich


On Tue, Apr 6, 2021 at 10:00 AM Rich Gopstein <rich@ourowndomain.com> wrote:

> I have an E310 (sg3) that I need to enable the CAN controller on and route
> the signals out to the GPIO connector.  After that, I'll work on the Linux
> driver.
>
> I'm a newbie to Vivado, so I could use some detailed help.  What I've done
> so far:
>
>    - Built an Ubuntu 18.04 system
>    - Installed Vivado 2018.3.1
>    - Downloaded the EttusResearch/fpga.git repo
>    - Tested "make E310_sg3" both with and without the "GUI=1" setting.
>
>
> I tried going in to Vivado and enabling the CAN0 controller, but I wasn't
> able to figure out how to rebuild the design (or route the signals to the
> GPIO connector)
>
> Any help would be appreciated.
>
> Rich
>
>

--000000000000c836a305bfc94852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone offer any suggestions?=C2=A0 I&#39;ve been digg=
ing through TCL files looking for where I could enable the CAN0 controller,=
 but nothing has worked so far.<div><br></div><div>Thanks.</div><div>Rich</=
div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Apr 6, 2021 at 10:00 AM Rich Gopstein &lt;<a hre=
f=3D"mailto:rich@ourowndomain.com">rich@ourowndomain.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I =
have an E310 (sg3) that I need to enable the CAN controller on and route th=
e signals out to the GPIO connector.=C2=A0 After that, I&#39;ll work on the=
 Linux driver.<div><br></div><div>I&#39;m a newbie to Vivado, so I could us=
e some detailed help.=C2=A0 What I&#39;ve done so far:</div><div><ul><li>Bu=
ilt an Ubuntu 18.04 system</li><li>Installed Vivado 2018.3.1</li><li>Downlo=
aded the=C2=A0EttusResearch/fpga.git repo</li><li>Tested &quot;make E310_sg=
3&quot; both with and without the &quot;GUI=3D1&quot; setting.</li></ul></d=
iv><div><br></div><div>I tried going in to Vivado and enabling the CAN0 con=
troller, but I wasn&#39;t able to figure out how to rebuild the design (or =
route the signals to the GPIO connector)</div><div><br></div><div>Any help =
would be appreciated.</div><div><br></div><div>Rich</div><div><br></div></d=
iv>
</blockquote></div>

--000000000000c836a305bfc94852--

--===============8912192811096345925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8912192811096345925==--
