Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4503242FD
	for <lists+usrp-users@lfdr.de>; Wed, 24 Feb 2021 18:14:16 +0100 (CET)
Received: from [::1] (port=52834 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lExjo-0005Ky-4t; Wed, 24 Feb 2021 12:14:12 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:41675)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1lExjl-0005GA-6N
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 12:14:09 -0500
Received: by mail-ot1-f49.google.com with SMTP id s107so2839218otb.8
 for <usrp-users@lists.ettus.com>; Wed, 24 Feb 2021 09:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GFQc3lzTsBA6a51NvfVNQnONifwKKeX0pqnlq03whfE=;
 b=V0lm1bod0zKsXQkfbeP7Nqytm68yIm0W+yXsmmQFB3j7Xq3mpvuvSMAvOJNBLGYyeW
 smUykaJ6qvPRWSzy0mv7dqulHRF8ezFDxJ8ZMKcSueR4xm2fo3PH/uPXuyF049wTnYOk
 alXQseMT7GrsWtnMaYVwYjdQtYtHOnQLkVM5SgP+08Jrygt/5jibrxiN1c59FydrOlYu
 3232Y9Q2zDJoyPSKpdcrkCq+LQMx+fSvQR2wWFhBTwB9pQM7oOIJi2eu2hc1nqzVq0QF
 8fcd/He1fL6ykKnMtpP4P3+/L24EU7WgQp95qRbIIygYWezuLCyzV9eyzTriVFAGfNqz
 dZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GFQc3lzTsBA6a51NvfVNQnONifwKKeX0pqnlq03whfE=;
 b=bOtLLta4I+uDK534Mj4/GItTVhlB/RAjsMeQRRSshr56szvbCANN/xrY3v0cTdF/L1
 WyGmQPJGkBg9RsLI6xx/1CMpo38yWZsIqdPmJJP7QiNsY3nTAyAi2/wwekomtuKCkaR6
 JnIZDCEPDGsvzDf+nKQN5GodMn8kqSpSA2N8N7LO4vrd4S+A+3vvcpIv2atLvjRmrDWZ
 iyn4b503IaXX9B0XYausQ6tBJvYYutgXfo9dTDuYicUCqu9Yklgeg/4QAEvVfuoW6LxI
 KXaWDj0qDvArtyR+xA26UcWrbqqef9unA3RFVWo2bg2cQR51x5XYo+aKMcMFMGMZMRud
 59Lg==
X-Gm-Message-State: AOAM532WUDWaDleJpuTaNtWqC1Cog63YMA1oHx0XwPkh/QJiBfvnQEtZ
 d4Jdm8SWkCl+Ty2k4mvgK24X2b8ovZOUunD34IzDstyL
X-Google-Smtp-Source: ABdhPJxuuvj81G+RTWD28iIApY640vEULFqNenk+YuRwRyNxMWagMs8h07gtbW1Fd8qX1ZO/uXBoqxwSVgRzYwTiSMA=
X-Received: by 2002:a9d:2cf:: with SMTP id 73mr9115809otl.28.1614186808446;
 Wed, 24 Feb 2021 09:13:28 -0800 (PST)
MIME-Version: 1.0
References: <c1dbae1c7f4d42baa74dbf70030937cc@hhi.fraunhofer.de>
In-Reply-To: <c1dbae1c7f4d42baa74dbf70030937cc@hhi.fraunhofer.de>
Date: Wed, 24 Feb 2021 11:13:17 -0600
Message-ID: <CAFche=iLfFMUrA=8GEUh6ypcMUW===Aj0nj9KMsnknRKPHq8LQ@mail.gmail.com>
To: "Daube, Julian" <julian.daube@hhi.fraunhofer.de>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Interface AXI4-Lite to UHD 4.0 RFNoC Shell CtrlPort
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============6155645473618426117=="
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

--===============6155645473618426117==
Content-Type: multipart/alternative; boundary="00000000000051a43505bc182761"

--00000000000051a43505bc182761
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

There is an AXI4-Lite to CtrlPort bridge, but I don't think there's a
CtrlPort to AXI4-Lite bridge, which I think is what you need. You can of
course write your own. A basic bridge would be pretty simple. You can take
a look at the AXI4-Lite to CtrlPort bridge here:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/axil_ctrlport_master.v

Thanks,

Wade

On Tue, Feb 23, 2021 at 8:53 AM Daube, Julian via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I was searching for a way to interface the control interface of a Simulink
> HDL Coder IP Core to the RFNoC Shell.
>
>
> Normally i would expose all control registers over an AXI4-Lite interface.
> I took a look at the rfnoc_core_addsub, since it uses Xilinx HLS, but that
> example does not expose control registers at all, thereby avoiding this
> problem.
>
> I guess the question is, how i would i tackle this connection from the
> CtrlPort of the NoC Shell to AXI4-Lite?
> A nudge in the right direction would be highly appreciated!
>
> Regards,
>
>
> Julian Daube
>
> PS: I would like to integrated said core into the UHD 4.0 framework and
> build images for the X310, if this of relevance. Since it will be a FIR
> Filter similar to the axi_filter block, i would like to avoid using a
> parallel configuration bus.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000051a43505bc182761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Julian,</div><div><br></div><div>There is an AXI4-=
Lite to CtrlPort bridge, but I don&#39;t think there&#39;s a CtrlPort to AX=
I4-Lite bridge, which I think is what you need. You can of course write you=
r own. A basic bridge would be pretty simple. You can take a look at the AX=
I4-Lite to CtrlPort bridge here:</div><div><br></div><div> <a href=3D"https=
://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/axil_ctr=
lport_master.v">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/control/axil_ctrlport_master.v</a></div><div><br></div><div>Thanks,</d=
iv><div><br></div><div>Wade<br> </div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 23, 2021 at 8:53 AM Daube=
, Julian via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-2765482702261292433divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hi, <br>
<br>
I was searching for a way to interface the control interface of a Simulink =
HDL Coder IP Core to the RFNoC Shell.
<br>
</p>
<p><br>
</p>
<p>Normally i would expose all control registers over an AXI4-Lite interfac=
e. I took a look at the rfnoc_core_addsub, since it uses Xilinx HLS, but th=
at example does not expose control registers at all, thereby avoiding this =
problem.
<br>
<br>
I guess the question is, how i would i tackle this connection from the Ctrl=
Port of the NoC Shell to AXI4-Lite?
<br>
A nudge in the right direction would be highly appreciated! <br>
<br>
Regards,<br>
</p>
<p><br>
</p>
<div id=3D"gmail-m_-2765482702261292433Signature">
<div id=3D"gmail-m_-2765482702261292433divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emo=
ji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quo=
t;,EmojiSymbols">
<p><span id=3D"gmail-m_-2765482702261292433ms-rterangepaste-start"></span><=
/p>
<p class=3D"MsoNormal" style=3D"line-height:11.25pt;background:white none r=
epeat scroll 0% 0%"><span lang=3D"DE">Julian Daube<br>
<br>
PS: I would like to integrated said core into the UHD 4.0 framework and bui=
ld images for the X310, if this of relevance. Since it will be a FIR Filter=
 similar to the axi_filter block, i would like to avoid using a parallel co=
nfiguration bus.</span><br>
</p>
<br>
<p></p>
</div>
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

--00000000000051a43505bc182761--


--===============6155645473618426117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6155645473618426117==--

