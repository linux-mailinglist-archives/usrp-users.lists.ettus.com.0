Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA6823DD79
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 19:10:11 +0200 (CEST)
Received: from [::1] (port=52980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3jP7-0001b1-Aj; Thu, 06 Aug 2020 13:10:09 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:42697)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1k3jP3-0001RH-AI
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 13:10:05 -0400
Received: by mail-oi1-f178.google.com with SMTP id j7so27149847oij.9
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 10:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bnZL26arhwoqBy4oJ5PL4qmKITmna4FXaUJcCUc0kmE=;
 b=y1zQrC8eyRMQy6FiUJU4y1DvZW8HyMfzHvvaQnBLkyPdWn/yZVOnrptmFOvJeRGOpQ
 PEtczniiXbXfaEVmEiBEAWfmnxeW9MTNSpKBBHCBzeh2Bj31EOPGauSznou90WtebEzb
 MIhn6sQ2KF2ZepzGyI5UeeO5zWVwyjPhJq//269ZgraIuWcy97TrCNMRvYo9SvXTSgwj
 k5iOrs5B0RaW+mfwbfLkKSR/Eq9R9r5s/zS+TGj6/gf+6oQukNOWWkikOVFSrwqBoGgC
 Gfzt0nMYNQVd0GhEnru+63EZFoYf9hL4hz1IW46ftGNA4BX5hiAQm6YldB/rqILLWWeW
 9CCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bnZL26arhwoqBy4oJ5PL4qmKITmna4FXaUJcCUc0kmE=;
 b=EhI2hD1ikWNxlD2MgmhfiFeFvmIN05Rx/xQ4eVNSzhmykYJ6pmyPp6fhf5X7zWlv2O
 4ddgl2RoExF4PpqPcFn59x9urzSu2fGdW13WwgEQAVtgQgbC6bhpSJjtiUk+D4PEpCt7
 v5AmB3P2To8v93eEn5n5JQ3tfw3VQCy1M/U5fi1FQDpQyU1Rx/vzbwuJcbY7o4jJk8/+
 +AgID1zA6rGAvUGLoq0wEJQAY1OA6jHA2FtgigX3zvRiKhskc1GofHrwI/LsdZHaxrGW
 WkUrNDyJSY1hL2911JiKFSehrNdyIsJ0R5OtLNhih6BEVw4KJwpibyw/V6Kl9kuG/mEA
 gW4Q==
X-Gm-Message-State: AOAM530CPqNAVfk29OFD94/piMWKhl2UM+e+BL9gUvHyas39MMKxUa5K
 6AyB/Enoo/LEAA/PH+0nTnD6rbg+zbvOuNh/PGWVKy+u
X-Google-Smtp-Source: ABdhPJxSjd/0+sbm3XU+1BUAcTa0+hE8rBY0fRSHlbop/RQG90zKrzaDGk5PxMItrvdJaKV5gOA/I8a6aX4JvZ7iZWQ=
X-Received: by 2002:a54:4817:: with SMTP id j23mr7955087oij.140.1596733764543; 
 Thu, 06 Aug 2020 10:09:24 -0700 (PDT)
MIME-Version: 1.0
References: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
 <838FBFE1-52F7-445B-B841-E05F0B7FEA31@gmail.com>
 <PN1PR0101MB1888C69D81516A613A69241E8B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR0101MB1888C69D81516A613A69241E8B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 6 Aug 2020 12:08:47 -0500
Message-ID: <CACaXmv-ibAFFSg=ivd4bhsejqn1b9fGO4c-BVVJvzGMERYhZVw@mail.gmail.com>
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
Subject: Re: [USRP-users] USRP not receiving data from two antennas using
 PCI card
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9090028886637608999=="
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

--===============9090028886637608999==
Content-Type: multipart/alternative; boundary="000000000000d65fc605ac388c68"

--000000000000d65fc605ac388c68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Sourin:

Could you share your C++ program, so that we might try to reproduce the
problem here?

Which version of Linux / Ubuntu are you running?

--Neel Pandeya



On Thu, 6 Aug 2020 at 11:51, Sourin Mondal (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am using UHD-3.14.1.0
> I am not using gnuradio now. I used that one year back and faced the
> mentioned problem. Now I am using c++ code and am facing the same issue o=
f
> not able to stream two channels simultaneously.
> From,
> Sourin
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, August 6, 2020 9:23 PM
> *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] USRP not receiving data from two antennas
> using PCI card
>
> What version of UHD?
>
> Could you share the flow graph you=E2=80=99re using?
>
>
>
> Sent from my iPhone
>
> On Aug 6, 2020, at 11:47 AM, Sourin Mondal (Vehere) via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Hi,
>
> I am using USRP 2955 and want to receive two channels at 100 MSPS each
> simultaneously. I have connected usrp with PCIe. I am running my code but
> only one channel is getting received. Other channel is sending zeros only=
.
> I am using Ubuntu 18.04. Previously one year back I faced the same proble=
m
> using USRP 2955 along with PCIe and running gnu radio. Only one channel
> popped up in the frequency sink graph and second graph was static with no
> signal. However, 2954 was giving both channels. Where is the problem? How
> can I correct that to stream two channels simultaneously using usrp 2955
> and PCIe? Please help.
>
> Regards,
> Sourin
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

--000000000000d65fc605ac388c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Sourin:</div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif">Could you share your C++ program, so that we=
 might try to reproduce the problem here?</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">Which version of Linux / Ubu=
ntu are you running?<br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">--Neel Pandeya</div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif"><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 6 Aug 2=
020 at 11:51, Sourin Mondal (Vehere) via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Hi,</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
I am using UHD-3.14.1.0=C2=A0</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
<div style=3D"margin:0px;font-size:14px;font-family:&quot;Segoe UI&quot;,sy=
stem-ui,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,sans-serif=
;box-sizing:border-box">
I am not using gnuradio now. I used that one year back and faced the mentio=
ned problem. Now I am using c++ code and am facing the same issue of not ab=
le to stream two channels simultaneously.</div>
From,</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
Sourin</div>
<br>
</div>
<div id=3D"gmail-m_-4184039363114880486appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4184039363114880486divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, August 6, 2020 9:23 PM<br>
<b>To:</b> Sourin Mondal (Vehere) &lt;<a href=3D"mailto:sourin.mondal@veher=
e.com" target=3D"_blank">sourin.mondal@vehere.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] USRP not receiving data from two antennas =
using PCI card</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto">What version of UHD?
<div><br>
</div>
<div>Could you share the flow graph you=E2=80=99re using?</div>
<div><br>
</div>
<div><br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Aug 6, 2020, at 11:47 AM, Sourin Mondal (Veher=
e) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div dir=3D"ltr" style=3D"margin:0px;font-size:15px;background-color:rgb(25=
5,255,255)">
I am using USRP 2955 and want to receive two channels at 100 MSPS each simu=
ltaneously. I have connected usrp with PCIe. I am running my code but only =
one channel is getting received. Other channel is sending zeros only. I am =
using Ubuntu 18.04. Previously one
 year back I faced the same problem using USRP 2955 along with PCIe and run=
ning gnu radio. Only one channel popped up in the frequency sink graph and =
second graph was static with no signal. However, 2954 was giving both chann=
els. Where is the problem? How can
 I correct that to stream two channels simultaneously using usrp 2955 and P=
CIe? Please help.</div>
<div dir=3D"ltr" style=3D"margin:0px;font-size:15px;background-color:rgb(25=
5,255,255)">
<br>
</div>
<div dir=3D"ltr" style=3D"margin:0px;font-size:15px;background-color:rgb(25=
5,255,255)">
Regards,</div>
<div dir=3D"ltr" style=3D"margin:0px;font-size:15px;background-color:rgb(25=
5,255,255)">
Sourin</div>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-=
users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d65fc605ac388c68--


--===============9090028886637608999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9090028886637608999==--

