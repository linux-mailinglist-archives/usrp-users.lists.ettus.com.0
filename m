Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F7923CAEB
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 15:16:11 +0200 (CEST)
Received: from [::1] (port=40312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3JH4-0001aq-L5; Wed, 05 Aug 2020 09:16:06 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:36168)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1k3JH0-0001Vr-Cz
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 09:16:02 -0400
Received: by mail-ej1-f54.google.com with SMTP id kq25so33396578ejb.3
 for <usrp-users@lists.ettus.com>; Wed, 05 Aug 2020 06:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nBHKj7cYcx93bfyXA9n3dumZZTOFbhgBMq/w8A0+vBo=;
 b=hFbEv/RIGfh6QVJFLQRVLj9ileioIHMmDbV20mvafO2ztHsAg2P/yRZkDpNZd3Po3J
 QDL2h7K71q6NbuW/VmtpQUj2Wsbdtcptp3OmYKDVUCL34kdYswd5WxYZVwbKQv3gF8Fs
 2vAYDrjjSU15USOrM+8jgdCFef0sqrXS+ezERSmQuKlJXoeFKsoTnVvMkQqC+hnYpGcW
 RaaEHnsggmthC99ognWbc95E3g50dpnAUtkth7AO2feNVovHlbA1HkFV/FFRTF1hloiW
 YMAqIjBmKXyUTbv0BYRwDDk1hxlstIg9twxUwE/cnM374r3upTez4L3WJtrx1RoxdnsP
 rDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nBHKj7cYcx93bfyXA9n3dumZZTOFbhgBMq/w8A0+vBo=;
 b=i+QTJK+WzM0uU/wvIYotsevLZol2X40V+eashKobS5PkpK6xLxmYaO7L8HRWyD9TVZ
 Iv480xiW495Uxo3O++DLhtqWqzw0VyLKymkOz75bT96u7AV/5sfPLmFaOXLFlZyjnJ7L
 sBy4hYHwQNdOihuNiu3NmvTKQWx+05fzr5FTjicNAsYWbJoTRks6HVCS8BNwyvuAsfnX
 ib9gUsqarHYko01xeD/2/JcXjBU0PdEngMcaZ9UKg909idUvn0hDa3B+qBiMas6p2q/9
 Kgna/JR/7NBqUl+4bYHCURaowJdVyyo6bPotI4HXblzAdchW5T2GxfqUOFldDuTiqnCY
 fDlg==
X-Gm-Message-State: AOAM5317rEqaKcOclPGWH/iaCQEtuKvL6LMLRKHD4u0DCSWhdsiMlZFL
 c+DDtKNnz6p6jwiUkZ7rvRk3z/YYKRUS5keq7NUZGZ3k
X-Google-Smtp-Source: ABdhPJzsP9km7dvgtsq+y8YwkKj5CRoxMtnUycrfEoJQQD3hdwkpAx2k7oqs275K+QXwy99iOyIsEABkT9gqm9z6nKs=
X-Received: by 2002:a17:906:9592:: with SMTP id
 r18mr3004001ejx.464.1596633321282; 
 Wed, 05 Aug 2020 06:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <CACaXmv8yKe-Zr8xYvRb5_U4-rtNvMMd9u0TrL15u5+t7Ojd95w@mail.gmail.com>
 <MA1PR01MB25885E1FF1757CDC836DF65B904B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25885E1FF1757CDC836DF65B904B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 5 Aug 2020 09:15:10 -0400
Message-ID: <CAGNhwTMofwik903qN9QTEQXRiXjYfO+wvOBgSpk0X+CMZT1tng@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Cc: Neel Pandeya <neel.pandeya@ettus.com>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using PCIe
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============4966981975174798319=="
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

--===============4966981975174798319==
Content-Type: multipart/alternative; boundary="000000000000f3b9ce05ac212937"

--000000000000f3b9ce05ac212937
Content-Type: text/plain; charset="UTF-8"

The default FPGA image for the X310 (which is the Ettus USRP of your 2955),
supports 10 GbE on the SFP+ port 1 <
https://kb.ettus.com/X300/X310#Choosing_a_Host_Interface > ... so, you
could use just that link if your application's aggregate sample rate can
fit within the link capacity.

You can, of course, just go straight to the PCIe interface if that makes
more sense. - MLD


On Wed, Aug 5, 2020 at 2:42 AM Koyel Das (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Neel,
>
> Thanks for your reply. But to use 10 Gbps NIC we need to change the FPGA
> image to that supports 10 Gbps communication right?
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Neel Pandeya <neel.pandeya@ettus.com>
> *Sent:* Wednesday, August 5, 2020 7:48:56 AM
> *To:* Koyel Das (Vehere) <koyel.das@vehere.com>
> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Using PCIe
>
> Hello Koyel:
>
> Yes, to use PCIe with the USRP X300/X310, you need to download and install
> the PCIe driver.
>
> However, if you're using UHD/C++ or GNU Radio, then I would recommend
> using 10 Gbps Ethernet instead.
>
> --Neel Pandeya
>
>
>
> On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi,
>
> Do we need to install driver for using PCIe with USRP 2955? If so which
> link to follow for all installations to be able to use PCIe.
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
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

--000000000000f3b9ce05ac212937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The default FPGA image for the X310 (which is the Ettus US=
RP of your 2955), supports 10 GbE on the SFP+ port 1 &lt;=C2=A0<a href=3D"h=
ttps://kb.ettus.com/X300/X310#Choosing_a_Host_Interface">https://kb.ettus.c=
om/X300/X310#Choosing_a_Host_Interface</a>=C2=A0&gt; ... so, you could use =
just that link if your application&#39;s aggregate sample rate can fit with=
in the link capacity.<div><br></div><div>You can, of course, just go straig=
ht to the PCIe interface if that makes more sense. - MLD</div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Aug 5, 2020 at 2:42 AM Koyel Das (Vehere) via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi Neel,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your reply. But to use 10 Gbps NIC we need to c=
hange the FPGA image to that supports 10 Gbps communication right?=C2=A0</d=
iv>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_-5569031013917939614ms-outlook-mobile-signature">Get <a =
href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5569031013917939614divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D=
"_blank">neel.pandeya@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, August 5, 2020 7:48:56 AM<br>
<b>To:</b> Koyel Das (Vehere) &lt;<a href=3D"mailto:koyel.das@vehere.com" t=
arget=3D"_blank">koyel.das@vehere.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Using PCIe</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:verdana,sans-serif">Hello Koyel:</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">Yes, to use PCIe with the USR=
P X300/X310, you need to download and install the PCIe driver.</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">However, if you&#39;re using =
UHD/C++ or GNU Radio, then I would recommend using 10 Gbps Ethernet instead=
.</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Do we need to install driver for using PCIe with USRP 2955=
? If so which link to follow for all installations to be able to use PCIe.<=
/div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_-5569031013917939614x_gmail-m_5891566876836178092ms-outl=
ook-mobile-signature">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blan=
k">
Outlook for iOS</a></div>
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

--000000000000f3b9ce05ac212937--


--===============4966981975174798319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4966981975174798319==--

