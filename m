Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B8D121AD9
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2019 21:26:19 +0100 (CET)
Received: from [::1] (port=57736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1igwwa-0003Tt-U9; Mon, 16 Dec 2019 15:26:16 -0500
Received: from mail-ed1-f51.google.com ([209.85.208.51]:38356)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1igwwX-0003PJ-Bj
 for usrp-users@lists.ettus.com; Mon, 16 Dec 2019 15:26:13 -0500
Received: by mail-ed1-f51.google.com with SMTP id i16so5108971edr.5
 for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2019 12:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=09DrCa4eyJGzCCOUMW2FfFV1juuImYsyoLQau0Vi+Xk=;
 b=RqQoliS8xRJn+Lui3CsTf42S5FzmZHvg5S3YFZqzX9J3/khJA2zfNyj7Oek2Xwcxng
 PPmIILdF5t1HCQtotJOKgX1+AaW2rZBm6qfL+iK5YOEJAhLzEoqQUKmrD2/4Y73l2nkG
 NTwQu3YdXCAuyvHXWq9w3yYaLPvf1iX/uDmA0EAcD2wQhM2M6FpG4Ht/WpZJl9Y6Bu9+
 pJ7Qe+l90iVbuDxI3g/bvQI2UnwoLuSTlj1CJx0r0s2o6P1u6P+e82HSu7QMrBo2WrXV
 YANPdz7c44P1C1q7NK524P+VRly6pd5VSFpkZvKRUzGzaFbHingYU4EKKDYOuFzO97jc
 RdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=09DrCa4eyJGzCCOUMW2FfFV1juuImYsyoLQau0Vi+Xk=;
 b=UuJ5HkmHrGCg12NVHjjHjZHe1goziUoLUVuALd0QNYxFV8E2vx58iMt0geM5oKOfvj
 OlxIzlEC5xnJ0b0SGuII80XnBJf+bsAHfKuYjkf4FQKRObQ2FN0PvAnocRoxuVhUwr5B
 xYbhNsvu1Xjqm4aPVI5ntt8BaMcI7KfRTMx5cREzOC7LM8sm5pUIJf3x+8zauqI3iksq
 DpTymsPpaPnHRgVQ7c+fH9pgGUTJSLZmy5tXueseXwEp+sevSgigpxDd8yeP8XcAf6xA
 aXm7uCjM4GXTE+TO3jIhVM6+f0RWq0aQbX30XqCp23fjuaSm7qHRmHwXCuwvdsYpZyb4
 +dCQ==
X-Gm-Message-State: APjAAAWbT57mSjz8VNHmKlYzv+54r26TdoV9DQEAQAep4d6D4I2yz9ev
 +1vKGzslNx3Guf/tAB348mgt0hVx8S5rDZ65/1KlU4BPiHS0Nw==
X-Google-Smtp-Source: APXvYqz3Hw3SusA0mcnoLUMb41aIA4d45dksI3YqB0Sar51Udi/UNpk1gdhF5+mDUmcjpGrA6CkAuawdX85CQI3wVQw=
X-Received: by 2002:a17:906:1354:: with SMTP id
 x20mr908337ejb.279.1576527932243; 
 Mon, 16 Dec 2019 12:25:32 -0800 (PST)
MIME-Version: 1.0
References: <a343ea0c848d44c6bbaaab53bd80a4c1@heig-vd.ch>
In-Reply-To: <a343ea0c848d44c6bbaaab53bd80a4c1@heig-vd.ch>
Date: Mon, 16 Dec 2019 14:25:19 -0600
Message-ID: <CA+Zwmn7rDB6ghMTiLkvt1LhYM0E9Y8KYpKNtqJ5SGODazU1NtA@mail.gmail.com>
To: Truan David <david.truan@heig-vd.ch>
Subject: Re: [USRP-users] N320: XQ image issue using sfp0 as time_source
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
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7970896730843751715=="
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

--===============7970896730843751715==
Content-Type: multipart/alternative; boundary="000000000000615de40599d80339"

--000000000000615de40599d80339
Content-Type: text/plain; charset="UTF-8"

Hi David,

Indeed, this sounds like a bug, and I believe you have the correct solution
identified. We will begin validating the fix on our side, but you can try
adding `XQ` to the list here: sfp_time_source_images = ('WX',) and then
recompiling. You should be able to just modify the installed file directly
on your N320 and then reboot to restart MPM.

Just keep in mind I haven't tested this yet, but it seems like it's the
right way to go!

-Daniel


On Tue, Dec 10, 2019 at 9:41 AM Truan David via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi!
>
> We are using multiples N320 (UHD 3.14) and we want to synchronize our
> setup using the White Rabbit protocol and using the N320 as the WR Slave
> and the Master being an OPNT Switch.
>
> We have to be able to stream the IQ over the QSFP+ port (seen as sfp0) and
> use the SFP0 as the WR input so we have the XQ image loaded.
>
> However, when setting sfp0 as the time_source, I get an error saying I
> need the WX image. I checked the "MPM/periph_manager/n3xx" python code and
> saw it only checks for the WX (line 692 of the 3.14 UHD on github). Is this
> normal?
>
> If not, can I patch it by adding the XQ string to the
> "sfp_time_source_images", pack it and only replace the MPM package or
> should I totally rebuild UHD and flash my SD?
>
>
> Thank you in advance for your answer!
>
>
> David Truan
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--000000000000615de40599d80339
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi David,<div><br></div><div>Indeed, this=
 sounds like a bug, and I believe you have the correct solution identified.=
 We will begin validating the fix on our side, but you can try adding `XQ` =
to the list here:=C2=A0<span style=3D"color:rgb(36,41,46);font-family:SFMon=
o-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12=
px;white-space:pre;background-color:rgb(255,251,221)">sfp_time_source_image=
s </span><span class=3D"gmail-pl-k" style=3D"box-sizing:border-box;color:rg=
b(215,58,73);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot=
;,Menlo,monospace;font-size:12px;white-space:pre">=3D</span><span style=3D"=
color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mo=
no&quot;,Menlo,monospace;font-size:12px;white-space:pre;background-color:rg=
b(255,251,221)"> (</span><span class=3D"gmail-pl-s" style=3D"box-sizing:bor=
der-box;color:rgb(3,47,98);font-family:SFMono-Regular,Consolas,&quot;Libera=
tion Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre"><span class=
=3D"gmail-pl-pds" style=3D"box-sizing:border-box">&#39;</span>WX<span class=
=3D"gmail-pl-pds" style=3D"box-sizing:border-box">&#39;</span></span><span =
style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Libe=
ration Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre;background=
-color:rgb(255,251,221)">,) </span>and then recompiling. You should be able=
 to just modify the installed file directly on your N320 and then reboot to=
 restart MPM.=C2=A0</div><div><br></div><div>Just keep in mind I haven&#39;=
t tested this yet, but it seems like it&#39;s the right way to go!</div><di=
v><br></div><div>-Daniel</div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 10, 2019 at 9:41 A=
M Truan David via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi!<br>
<br>
We are using multiples N320 (UHD 3.14) and we want to synchronize our setup=
 using the White Rabbit protocol and using the N320 as the WR Slave and the=
 Master being an OPNT Switch.<br>
<br>
We have to be able to stream the IQ over the QSFP+ port (seen as sfp0) and =
use the SFP0 as the WR input so we have the XQ image loaded.<br>
<br>
However, when setting sfp0 as the time_source, I get an error saying I need=
 the WX image. I checked the &quot;MPM/periph_manager/n3xx&quot; python cod=
e and saw it only checks for the WX (line 692 of the 3.14 UHD on github). I=
s this normal?<br>
<br>
If not, can I patch it by adding the XQ string to the &quot;sfp_time_source=
_images&quot;, pack it and only replace the MPM package or should I totally=
 rebuild UHD and flash my SD?<br>
<br>
<br>
Thank you in advance for your answer!<br>
<br>
<br>
David Truan<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div></div>

--000000000000615de40599d80339--


--===============7970896730843751715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7970896730843751715==--

