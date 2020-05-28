Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7981E5C71
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 11:52:25 +0200 (CEST)
Received: from [::1] (port=48284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeFD4-0008Hj-Hz; Thu, 28 May 2020 05:52:22 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:39765)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1jeFD0-0008CC-3y
 for usrp-users@lists.ettus.com; Thu, 28 May 2020 05:52:18 -0400
Received: by mail-wm1-f44.google.com with SMTP id k26so2465238wmi.4
 for <usrp-users@lists.ettus.com>; Thu, 28 May 2020 02:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1JWPRgR0eNmkGVdaQG/GWeUouk4EhpXBxUYWsTSQ9cQ=;
 b=o5vr5S4TwMSk26LFCMH2agORX775ri88lxHFr9nEORxFl3W6CjyU9mhXCyokdkM8DW
 CL3jI/LGc3njHWpCnuThHdz+tKk1wlmqbCSahe42kqMUnGAjQNUX3yL3/B9HcsJgim8F
 X2LKcy+xGFBT8ls/O399iAv0ItJ9FQK9gjYw7WHavtlJprE0qLjOH2HntN5CDVFgHmX+
 Dvh3rhs6wdhKwM1h/ePxrvY5qadHRwKl3kuzo4TNrpmEPzj7mxqbd2xjZClTCwgh4t0Z
 RWE6TuPziAasy3RztSm2MzUBL/oHbH1IreIG+HJ8x+ioCriZDQDxHmTX2BhSFfFLv9ud
 5DJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1JWPRgR0eNmkGVdaQG/GWeUouk4EhpXBxUYWsTSQ9cQ=;
 b=qPthzARI1qtXGduwuNA94cWFAFM/I6twjpk7DBYT/DZemWRYSJLnGlnTRo3An5Um4U
 OkBdK2qq4ybtefdpKXHgVwNOH7eKj7ldoAh7mGFsG9/nDDykbyofejAaehveEQurCU8p
 HoGxbWNuGr5FP53xSBpenTFa/rqRviPog6PM05SHMHcrrd6D7FqKggmIgZxb3WvRTFIy
 ZEK0I+OfE6o7ffSZrJOtCbTjhxxXIAsf2GioP5NwB3J5bQjw7PBPnrXkYV3IHlCtgzi2
 ke6/M2yGXuFDRfBkChvbntYhtfH4OkF3sh9kJGHP//CBbGJV9fcQ1U+sfyZKS+OssZDB
 rwgg==
X-Gm-Message-State: AOAM5335hOLvYoEy1SrXfNE2KQQtdwYFglBEBfS93M86R4xgCwGoDDg8
 DcW8/yPl3ecE4YAm2Ms5ywujJQjzq5pRnb8ucb+qE1wz
X-Google-Smtp-Source: ABdhPJy0LybLyQlzqfIvY+++WfxyA5k7MKdRssTJUTZYym/GEh9bsxdWz6THobSL5YRLZ/jf4o+DAD+L3JBh+Lk3GDo=
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr2571816wmj.8.1590659496931;
 Thu, 28 May 2020 02:51:36 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 28 May 2020 11:51:26 +0200
Message-ID: <CADrptxVyyurf9m30FocbfK0N+9rtrD_qQvRee8d3_rz9N5r-Hg@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC Replay Bloch timmed commands
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============5594777709226141147=="
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

--===============5594777709226141147==
Content-Type: multipart/alternative; boundary="00000000000045f5a005a6b246b9"

--00000000000045f5a005a6b246b9
Content-Type: text/plain; charset="UTF-8"

Hello All,

I would like to use RFNoC Replay Block with timed commands, in order to
transmit
waveform at allocated time slots.

I see relatively new post and Ettus wiki (
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD)
which mentions that Replay Block can be used with timed commands. (see line
"Using RFNoC blocks like the Replay Block to transmit phase coherent
bursts").

In same time I have found an earlier post (
http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td11818.html
)
where it is mentioned that Replay Block does not support timed commands.

I am wondering what is current status related to support of timed commands
with Replay Block?

Kind Regards,

Tarik

--00000000000045f5a005a6b246b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I would like to use RFNoC Re=
play Block=C2=A0with timed commands, in order to transmit=C2=A0</div><div>w=
aveform at allocated=C2=A0time slots.=C2=A0</div><div><br></div><div>I see =
relatively new post and Ettus wiki (<a href=3D"https://kb.ettus.com/Synchro=
nizing_USRP_Events_Using_Timed_Commands_in_UHD">https://kb.ettus.com/Synchr=
onizing_USRP_Events_Using_Timed_Commands_in_UHD</a>)</div><div>which mentio=
ns that Replay Block can be used with timed commands. (see line &quot;<span=
 style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,&quo=
t;Lucida Grande&quot;,sans-serif;font-size:14px">Using RFNoC blocks like th=
e Replay Block to transmit phase coherent bursts&quot;).</span></div><div><=
span style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;,=
&quot;Lucida Grande&quot;,sans-serif;font-size:14px"><br></span></div><div>=
<span style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;=
,&quot;Lucida Grande&quot;,sans-serif;font-size:14px">In same time I have f=
ound an earlier post (</span><a href=3D"http://ettus.80997.x6.nabble.com/US=
RP-users-X310-Replay-Block-and-receiver-timming-td11818.html">http://ettus.=
80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td118=
18.html</a>)</div><div>where it is mentioned that Replay Block does not sup=
port timed commands.</div><div><br></div><div>I am wondering what is curren=
t status related=C2=A0to support of timed commands with Replay Block?</div>=
<div><br></div><div>Kind Regards,</div><div><br></div><div>Tarik</div><div>=
<span style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot;=
,&quot;Lucida Grande&quot;,sans-serif;font-size:14px"><br></span></div><div=
><span style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&quot=
;,&quot;Lucida Grande&quot;,sans-serif;font-size:14px"><br></span></div></d=
iv>

--00000000000045f5a005a6b246b9--


--===============5594777709226141147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5594777709226141147==--

