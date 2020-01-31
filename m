Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D260C14F391
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 22:08:01 +0100 (CET)
Received: from [::1] (port=40276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixdW9-0004za-JX; Fri, 31 Jan 2020 16:07:57 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:41929)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1ixdW5-0004nU-PT
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 16:07:53 -0500
Received: by mail-ot1-f51.google.com with SMTP id r27so7907777otc.8
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 13:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bd66Epg4vYrbmi2O9fcgWe1Exb2r6wqSnuFs/jHrKuQ=;
 b=1NimKB/yypkpvm3pASR5ttcN40VRTlSz5w+IaDrhyKXrmNJ1TBeydAzT+RXoktIIPw
 sH9pG7Bqbqeh+DoUpllsh8LEbMePU3+JYl7fZoDJUpp2jZ7Z1jiOQ1W5TqR7+Q46s5sm
 Qu76KzY1wSN+FUAGkU1ltmBP4IfWIuimfaT1aI4B3UloKQw9HrWQCKlSejEeyz9eaiLz
 3KlJaLHm/oQjkAd+ayAbbFrjuxARuIpOLlrN7BUdmg4JxNU18tltMjnZYTam7/NW2/vl
 Mc7ipcf4xwRPvXEQZytyR8t1AVgTdoqeLC9qmkyHuJB8Di1DeG/FqLhdx7Q2wLwhW1Xv
 9pnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bd66Epg4vYrbmi2O9fcgWe1Exb2r6wqSnuFs/jHrKuQ=;
 b=QHFwj7ZJ0A5XsHvstu/bl9cuRodjbGTPMnWs3zEp4Bfyv9IjmdVfQj8/UhInOZ6KmA
 gWorw0niQ/8LwljM2Xb2neluHpogmBBueL9WYqxYuqnUnURmV0dtoC4pXdtYUmXkLMq3
 oUPuBI+JD2biwW8+Y4AZD1j36yjm/IWelxi3I5zlf8Cg4nxXv35/8CGr3/+NCzaF3C+V
 R7YnAPcpojZG+fQFQKtFfZRc1d9rgb9vFOqD0+f0WnJt/cMOBk5fpuj2t/9eGuX4k3of
 4pACR4EKLpSjsMLjiXcisoVxHEeJrvE1DsOdUffqkBSuZpx1sK9HzEGpvTH61oh94LiO
 9JEQ==
X-Gm-Message-State: APjAAAXFNaehfKCu2DpunKkoGdZQZ+UjeViSm1JZs/F8ShMHXBRDMuIv
 sTgmURyw61GSaymSCVpzaUGP9CxyVCccai+BMkM7m7JlN6d8ng==
X-Google-Smtp-Source: APXvYqyTzOVvCUiVh1nVUcIyNzVDWZ7/d7DAXIgl5KYVN4sNc8xr8ovKcc/qjRUSfbSfeb9IF5gmFQxgSUMXQVwe1Ao=
X-Received: by 2002:a05:6830:124b:: with SMTP id
 s11mr8914098otp.333.1580504832921; 
 Fri, 31 Jan 2020 13:07:12 -0800 (PST)
MIME-Version: 1.0
References: <b65b5225-ccee-4706-0ed1-fbf2c3992139@tkn.tu-berlin.de>
In-Reply-To: <b65b5225-ccee-4706-0ed1-fbf2c3992139@tkn.tu-berlin.de>
Date: Fri, 31 Jan 2020 16:07:02 -0500
Message-ID: <CAGNhwTMFf0namo8DbYHDL6sQSKnUaAnHfOMuYhgewrFB9OhAKQ@mail.gmail.com>
To: =?UTF-8?Q?Sebastian_Br=C3=A4uer?= <braeuer@tkn.tu-berlin.de>
Subject: Re: [USRP-users] E313 PoE requirements
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5305097841848875982=="
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

--===============5305097841848875982==
Content-Type: multipart/alternative; boundary="00000000000021e7d6059d75f555"

--00000000000021e7d6059d75f555
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sebastian - The power draw of the E313 in 2x2 MIMO is peak of about 9 W
and more typically averaging around 6 W. An injector meeting the original
PoE 802.3af standard at 12.95 W at the device should be plenty sufficient.
What PoE injector are you trying to use? Do you have any others to try out?
If PoE isn't working directly, you can always try a PoE splitter such as
the TRENDnet TPE-104GS. There are plenty of options for both injectors and
splitters. - MLD

On Fri, Jan 31, 2020 at 6:07 AM Sebastian Br=C3=A4uer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> just a quick questions: Which PoE standards are supported by the USRP
> E313? I have a 802.3at PoE injector (30W) but it does not seem to boot
> up (although the LED on the outside is on). Do I need more power?
>
> Thanks in advance!
>
> Sebastian
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--00000000000021e7d6059d75f555
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sebastian - The power draw of the E313 in 2x2 MIMO is p=
eak of about 9 W and more typically averaging around 6 W. An injector meeti=
ng the original PoE 802.3af standard at=C2=A012.95 W at the device should b=
e plenty sufficient. What PoE injector are you trying to use? Do you have a=
ny others to try out? If PoE isn&#39;t working directly, you can always try=
 a PoE splitter such as the=C2=A0TRENDnet TPE-104GS. There are plenty of op=
tions for both injectors and splitters. - MLD</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 31, 2020 at 6:07 A=
M Sebastian Br=C3=A4uer via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi everyone,<br>
<br>
just a quick questions: Which PoE standards are supported by the USRP <br>
E313? I have a 802.3at PoE injector (30W) but it does not seem to boot <br>
up (although the LED on the outside is on). Do I need more power?<br>
<br>
Thanks in advance!<br>
<br>
Sebastian<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>

--00000000000021e7d6059d75f555--


--===============5305097841848875982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5305097841848875982==--

