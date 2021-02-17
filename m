Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19031DF28
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 19:39:48 +0100 (CET)
Received: from [::1] (port=36148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCRjm-0005sq-1H; Wed, 17 Feb 2021 13:39:46 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:39320)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lCRji-0005ll-CA
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 13:39:42 -0500
Received: by mail-oi1-f171.google.com with SMTP id l19so15991094oih.6
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 10:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=jBRx2D4FSIX9E2chyrVj8HA/Ei/a8yPWG1FxhPgsnX4=;
 b=Q1Fi3DBEvAbTOyifl6x4keidRHv+Jb5MX7iVNqHDkBl4XqFqQU0ybo3MTQJ3a+gERH
 mqaBdsMI4HUAEijBsAbt+C0RX0/w1udGhzHN3N9WCl3PK0QJ4ETidPoENSiCdsmv1/Np
 3AJWM7UJpwxKWgZXqAFL0OA1W/PMqGVXAuY0HhzghFuO9CX/3cB+LVlsYzNnUyCTb7MT
 KTwxsIicISUldI8CKaDD2tonifuU5AMOV8Ka+KM4GE0vJdNRuPbWBA+P+VSTvN+zryst
 7dn35c2dF79pEGvVyP52+etHJZxwJCeW2Pq2dnsJR5QdynfUt44OI3WIzf/48evl2egQ
 rngw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=jBRx2D4FSIX9E2chyrVj8HA/Ei/a8yPWG1FxhPgsnX4=;
 b=iglQTxofYtIlZ9UlaEFVA1F2YXefkKzs082p91w27UehU9Me/gYc/wq0YAx2YCrA9l
 XnZjpzL3z2NkN7xsfTCCBGF6O+CpF7mZioKFsboBbq8TWhTsfgG/G5zj4Ap5D9Yx8ZlI
 Qse0goKaB1Z30lH6Ftd8IMdmm+MQn7ZElBcxY/LuCh/ak3DXSZFgMlbEHOB9sr0xJx94
 1QtwJolb26PJKB6ut7hplqCGe8mNyEVdEHKndsXOX/mxryCXGwIKTjlru4Q7ad7VvAPH
 A6i4DU/b3m2PXKW9n/M2Brq6+Zg8mf24Qrrd8hKc+5d8IWjoCFzSd5lS0x7675O1EAT2
 9fDg==
X-Gm-Message-State: AOAM532A87VvfL+y7XzYmNAJL6tPkDsyjYRqxxajoyTgvQUhEXIz/Xap
 v5OTcMkI5zAt3mIhdf8k8bUqKabKO30fmgGadzgg0n2XSLsh+A==
X-Google-Smtp-Source: ABdhPJx97cumGAvGCF6QZSQdbGAq7ruwKmaK4cTMkFUg+oNltd8crm49gXFuvxeSYWUb9PDWjztuFs3prSRopMf7lGY=
X-Received: by 2002:aca:cdc4:: with SMTP id d187mr143449oig.124.1613587141482; 
 Wed, 17 Feb 2021 10:39:01 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
In-Reply-To: <20210217172935.joprwj3f6rwdu3jo@barbe>
Date: Wed, 17 Feb 2021 13:38:50 -0500
Message-ID: <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
Content-Type: multipart/mixed; boundary="===============2281287445257629401=="
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

--===============2281287445257629401==
Content-Type: multipart/alternative; boundary="0000000000006206c305bb8c88d7"

--0000000000006206c305bb8c88d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could this be another case of the "issue_stream_cmd" never making it from
the streamer to the Rx radio?  C=C3=A9dric, didn't we find that if you don'=
t
have a custom block controller, the stream cmd does not propagate as expect
to the Radio and thus you get a recv() timeout?
Rob

On Wed, Feb 17, 2021 at 12:30 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 17/02/21 15:35, Mark D via USRP-users wrote:
> > I'm working with an E320 using UHD 4.0.
> > [...]
> > However if I reconfigure the GNU radio to "RFNoC RX Radio"->"RFNoC
> Digital Down Converter"->"RFNoC Gain"->"RFNoC Rx Streamer"->"QT GUI Time
> Sink" the system no longer works.
> >
> > The Time Sink appears but the GNU Radio console is saying
> rfnoc_rx_streamer0 - UHD.recv() call timed out. Removing the gain block
> from the GNU radio design restores operation, so it appears that the gain
> block is in some way blocking the streaming data.
> >
> > I've also rebuilt the FPGA with the gain block connected between the DD=
C
> and Stream Endpoint but the results are the same. I've tried reverting th=
e
> gain block code back to that generated rfnocmodtool, which just loops the
> context and payload data straight through.
>
> Have you tried a lower SPP (eg. 256)?
> AFAIR, I had trouble with higher SPP for some blocks.
>
> Otherwise,
> it seems similar to https://github.com/EttusResearch/uhd/issues/406
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006206c305bb8c88d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Could this be another case of the &quot;i=
ssue_stream_cmd&quot; never making it from the streamer to the Rx radio?=C2=
=A0=C2=A0C=C3=A9dric, didn&#39;t we find that if you don&#39;t have a custo=
m block controller, the stream cmd does not propagate as expect to the Radi=
o and thus you get a recv() timeout?</div><div>Rob</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 17, 2021 at 1=
2:30 PM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On 17/02/21 15:35, Mark D via=
 USRP-users wrote:<br>
&gt; I&#39;m working with an E320 using UHD 4.0.<br>
&gt; [...]<br>
&gt; However if I reconfigure the GNU radio to &quot;RFNoC RX Radio&quot;-&=
gt;&quot;RFNoC Digital Down Converter&quot;-&gt;&quot;RFNoC Gain&quot;-&gt;=
&quot;RFNoC Rx Streamer&quot;-&gt;&quot;QT GUI Time Sink&quot; the system n=
o longer works.<br>
&gt; <br>
&gt; The Time Sink appears but the GNU Radio console is saying rfnoc_rx_str=
eamer0 - UHD.recv() call timed out. Removing the gain block from the GNU ra=
dio design restores operation, so it appears that the gain block is in some=
 way blocking the streaming data.<br>
&gt; <br>
&gt; I&#39;ve also rebuilt the FPGA with the gain block connected between t=
he DDC and Stream Endpoint but the results are the same. I&#39;ve tried rev=
erting the gain block code back to that generated rfnocmodtool, which just =
loops the context and payload data straight through.<br>
<br>
Have you tried a lower SPP (eg. 256)?<br>
AFAIR, I had trouble with higher SPP for some blocks.<br>
<br>
Otherwise,<br>
it seems similar to <a href=3D"https://github.com/EttusResearch/uhd/issues/=
406" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusResearch/=
uhd/issues/406</a><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006206c305bb8c88d7--


--===============2281287445257629401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2281287445257629401==--

