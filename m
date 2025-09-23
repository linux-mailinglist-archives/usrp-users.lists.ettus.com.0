Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B32ECB978DD
	for <lists+usrp-users@lfdr.de>; Tue, 23 Sep 2025 23:16:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C767B385E4D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Sep 2025 17:16:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758662175; bh=Kufuv6TLAXzax9lWsDJllOrSEazl7iDPo3nTzJ+yOx8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Vw+V5xP0uweIKOJ5CdwZ+FDTjxXup0tExjCt1/bh7svI9+ZA0I94EkdF+hoFvWvCo
	 yuCbCLn3nQwd7XFAcJbUtfzz4L7cla+DsUV66oZZqWUHmKSvSifvxeF2Im+8Uy27Xt
	 z63xB5+Yv26f828gaGuld38z4JIg2MzkodRWO1tOWOeqlrpvF1B7/DhiD52dVZ1TWc
	 p7PxvKH7XMusAR/7DQUqxyjWlTdGtxdKpq9S/bMN0vAB3oABUXacuFqskSXdJrxBV2
	 tE3mJJTfTdITft0E9HGG+IM/J4dIKBXSCpNF8Ihu6C8kvn/ZsJ+RcxnRf6jZVT+G/d
	 rjWYK6BXUll6Q==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EE79385778
	for <usrp-users@lists.ettus.com>; Tue, 23 Sep 2025 17:15:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="hrzSp2cD";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-ea5bc345eddso4848173276.1
        for <usrp-users@lists.ettus.com>; Tue, 23 Sep 2025 14:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1758662111; x=1759266911; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wxp5yWD10PXIbvUZIh1LI7LoIxEo1K+QDFqCnRSv7KY=;
        b=hrzSp2cDOt6Wgwvl7Bu2QxnImR9X83XMeRU6sw9zXFkeWvCEFVLDCFsDGZ/UhcnDv2
         +OcR1g2vIxXpiSbEZgHvzEajJoPAxN3Lxp3aGkX0XXXAZ088TFEzP7DV5VyvXyWeEyxH
         kU71z5vgfMjyR8/hWt7V3mjy0Nt+hXH1ZW8R/lPrJIKKylbNX07GJgFw4X6qkdmYjtCi
         wGBKOYJGhynuJfHKApMCdHAGVA2qZ6g4I3zCtCx+1GMh7OzDjyGeKzZFppwbvWSBkmMI
         jIqs46EeVsBFkPmEiaW2B8tJ3FKDM/Du6ygRiZzt40ByBZylHSJuC30vYt6IOzOdeqF0
         AwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758662111; x=1759266911;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wxp5yWD10PXIbvUZIh1LI7LoIxEo1K+QDFqCnRSv7KY=;
        b=njcmgLgkJiFB4F9WUWhfi1UBSSWzbaOuUOpYC6JZD5BhAkJoAAM6P8q3UtKPK7bBym
         WGc77tMMJ8821lBjIYClSF1Emr2+omX+/9ar2BDFMdrTNFfWysVyrrd64Gs5AiCTJtZM
         wONwFNo6l/DquaPtaA2Ow5tUvlU9MPjAnQakNnmjpZFp0gcZ0Sp2tXccQwISW2EqxFHd
         kPRNBpie4bp9QIWmNWrrNAex1X8oxZaS0GtjHAAsbITZLA796PAof/vK0KNrQ0D2u3gs
         fmezsj0Kvqhce1ikseUjXrZhDwzxdjmQlH38P1Rg4+QBfA6+yAqRdkwhSESvyP8Ond7J
         nD6w==
X-Gm-Message-State: AOJu0YzBS061osqQlzalgZfegdlyko8ddJDLw1rg0OEOucedhPbFR7Q/
	8jYNEFqrmLKebMgDvL+/UjM3JrK31VnmVUrfooTLVoO9iclxMS3W5QuPHmVyxQ+Cx/0o21bpHSr
	ir37v0nzSANaaOi8NYwBQu5MrMDXc7Gq8qB79YX5D
X-Gm-Gg: ASbGncuahY/z7xw8P13tFH/xDwOFd2K2IDgTlwJWKJTHqQHi6aE9D8KEvmRVSA/kfs4
	+QoDseKo9NuzjsCxzUxnff6EtsZlqOnqcP5VPa5vxpNemQTsPPvhoDX57IZ83P1qwwcPV+jeEpm
	Rj0dQFb57RuzQ36JhbAblAqsek/EyqfXfqtqJ4JdWue9OgJEivz/6woJd+H+KGt0Ck5fcCyOTaL
	+2w4g==
X-Google-Smtp-Source: AGHT+IEKDAf6h6oHsSyzAL/nxwKX0bIU6tYfxnCgxuc8zfxPYk67YZRGhzt+XKU420uqJXVo7UkmZZyZ2i52Cegm9yQ=
X-Received: by 2002:a05:6902:4111:b0:ea5:c3de:7757 with SMTP id
 3f1490d57ef6-eb32e446619mr2491706276.17.1758662109643; Tue, 23 Sep 2025
 14:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTS_UJDzk+NgQoObHMt2F0G2S0gc-_4qHZQ-DJjmbDfuYA@mail.gmail.com>
 <CH0PR10MB51798275B2E7A519E2A260BE991DA@CH0PR10MB5179.namprd10.prod.outlook.com>
In-Reply-To: <CH0PR10MB51798275B2E7A519E2A260BE991DA@CH0PR10MB5179.namprd10.prod.outlook.com>
Date: Tue, 23 Sep 2025 17:14:58 -0400
X-Gm-Features: AS18NWCIQmyT7hQTVXDEPpFFPUoA1tDEb_FLVrGWM2ekLs3ZkkhX2gS9IR7UBdY
Message-ID: <CAB__hTSaZFC4pRXWMavj3agHDiZk8CfgLu1K+0je9BSz+kRCiA@mail.gmail.com>
To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Message-ID-Hash: RA2NWWFCM4E6UXAAWLEBSF5A7HVG3FJO
X-Message-ID-Hash: RA2NWWFCM4E6UXAAWLEBSF5A7HVG3FJO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx antenna Tx/Rx with full duplex streaming state
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RA2NWWFCM4E6UXAAWLEBSF5A7HVG3FJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6927446164346165519=="

--===============6927446164346165519==
Content-Type: multipart/alternative; boundary="00000000000053d873063f7e6e54"

--00000000000053d873063f7e6e54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply Martin,
I looked at the linked code, but it looks to me like it doesn't provide the
answer. It seems to me that my question boils down to figuring out the four
entries in the lookup table RX0_ANT_1 which holds a switch setting for each
of the ATR states: 0X, RX, TX, XX.

After reviewing the code snips you linked as well as where these functions
are called from the zbx rx/tx programming experts for the specific case of
the Rx antenna configured for Tx/Rx and the Tx antenna configured for
Tx/Rx, my mental compiler tells me that the only entry in RX0_ANT_1 that
will be modified during the configuration is the ATR state RX.  The other 3
states (0X,TX,and XX) in the table are not touched. I'm guessing that these
are defaulted elsewhere in the code, but I can't figure out where.

Rob

On Tue, Sep 23, 2025 at 10:09=E2=80=AFAM Anderseck, Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
>
>
> Looking into the zbx_cpld_ctrl.cpp it looks like the RX Ant1 switch is no=
t
> moved away from the TX/RX port:
>
>
> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zbx=
/zbx_cpld_ctrl.cpp#L322-L325
>
> and
> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zbx=
/zbx_cpld_ctrl.cpp#L276-L277
>
>
>
> For the TX part I=E2=80=99d have to look up what the amplifiers in the an=
tenna
> settings mean exactly, though.
>
>
>
> /Martin
>
>
>
> *From:* Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, September 15, 2025 10:23 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] [USRP-users] Rx antenna Tx/Rx with full duplex
> streaming state
>
>
>
> Hi,
>
> I am wondering if anyone knows what happens with the Tx and Rx switches i=
n
> the case of the Rx antenna setting of Tx/Rx for a full-duplex streaming
> state. In particular, I'm interested in the case of the X410/ZBX where th=
e
> switches in question are Sw 1 (Rx) and Sw 11 (Tx).  It seems that if the
> streaming state were Rx only, both of these switches would route the Tx/R=
x0
> port to the Rx path. But, for the case of simultaneous Tx/Rx streaming, I
> expect that Sw 11 (Tx) is changed to the Tx path. What I'm unclear about =
is
> what happens to Sw 1 (Rx).  Does this change to the Rx1 port or does it
> remain on the Tx/Rx0 port?
>
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000053d873063f7e6e54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the reply Martin,</div><div>I looked at th=
e linked code, but it looks to me like it doesn&#39;t provide the answer. I=
t seems to me that my question boils down to figuring out the four entries =
in the lookup table RX0_ANT_1 which holds a switch setting for each of the =
ATR states: 0X, RX, TX, XX.=C2=A0=C2=A0</div><div><br></div><div>After revi=
ewing the code snips you linked as well as where these functions are called=
 from the zbx rx/tx programming experts for the specific case of the Rx ant=
enna configured for Tx/Rx and the Tx antenna configured for Tx/Rx, my menta=
l compiler tells me that the only entry in RX0_ANT_1 that will be modified =
during the configuration is the ATR state RX.=C2=A0 The other 3 states (0X,=
TX,and XX) in the table are not touched. I&#39;m guessing that these are de=
faulted elsewhere in the code, but I can&#39;t figure out where.</div><div>=
<br></div><div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 23, 2025 at 10:09=
=E2=80=AFAM Anderseck, Martin via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-17007823360=
32174283">





<div lang=3D"DE" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-1700782336032174283WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi Rob,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">Lookin=
g into the zbx_cpld_ctrl.cpp it looks like the RX Ant1 switch is not moved =
away from the TX/RX port:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/=
zbx/zbx_cpld_ctrl.cpp#L322-L325" target=3D"_blank">https://github.com/Ettus=
Research/uhd/blob/master/host/lib/usrp/dboard/zbx/zbx_cpld_ctrl.cpp#L322-L3=
25</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">and
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/d=
board/zbx/zbx_cpld_ctrl.cpp#L276-L277" target=3D"_blank">
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/zbx/z=
bx_cpld_ctrl.cpp#L276-L277</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">For th=
e TX part I=E2=80=99d have to look up what the amplifiers in the antenna se=
ttings mean exactly, though.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt">/Marti=
n<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt"><u></u=
>=C2=A0<u></u></span></p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-US=
" style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif"> Rob =
Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
<br>
<b>Sent:</b> Monday, September 15, 2025 10:23 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Rx antenna Tx/Rx with full duplex s=
treaming state<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am wondering if anyone knows what happens with the=
 Tx and Rx switches in the case of the Rx antenna setting of Tx/Rx for a fu=
ll-duplex streaming state. In particular, I&#39;m interested in the case of=
 the X410/ZBX where the switches in question
 are Sw 1 (Rx) and Sw 11 (Tx).=C2=A0 It seems that if the streaming state w=
ere Rx only, both of these switches would route the Tx/Rx0 port to the Rx p=
ath. But, for the case of simultaneous Tx/Rx streaming, I expect that Sw 11=
 (Tx) is changed to the Tx path. What
 I&#39;m unclear about is what happens to Sw 1 (Rx).=C2=A0 Does this change=
 to the Rx1 port or does it remain on the Tx/Rx0 port?=C2=A0<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000053d873063f7e6e54--

--===============6927446164346165519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6927446164346165519==--
