Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB64E22C25B
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 11:34:30 +0200 (CEST)
Received: from [::1] (port=42482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyu5z-0002gu-A4; Fri, 24 Jul 2020 05:34:27 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:40952)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1jyu5v-0002YS-B3
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 05:34:23 -0400
Received: by mail-io1-f43.google.com with SMTP id l17so9155187iok.7
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 02:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QTXHdiWZ8bfs7jaH+u8M+2X7pEuL6yqMVprvmdaU96Y=;
 b=fa+v321mNhmdh5jtTf7KWUT/nDWHAMUPbYNkjC9SFRYcLUdOKYjRxSbiwEO1uJL5u+
 FU38cLdidtPROyYSqpUCZ7kiqqYA03oMXqcMddsRPpAKBsM7hRIrxuaOTCyOFJMSbyq+
 R1PcjqkdzIca9VzE33+01IDaBI1/5VbRLIZQfwSmNBfgcSyCiQDfwiCEuTA2pQaoerLj
 78hYW3JnQipMwiEQ5U5DbECgXjLZHAtTCO3wzhsrLTtrkGdzjbr7MSmEj5/dyTaR9W13
 Ngxs85Hlou4A9YjXtdvYascbgR+tvlNcxbpxYdiBR3aSFtNx4KpN7K+n8QB6l4orDIpu
 lMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QTXHdiWZ8bfs7jaH+u8M+2X7pEuL6yqMVprvmdaU96Y=;
 b=dlMj0cjEyNlu82YFw0kYOqYEXEwr/9Bh2e2yMW21GA0Xa5Fe0MDjvqS9jMqgYZgUCT
 11AVpSNZGeuqY+wPH+52LlxNHfjTUvNAhDgfKRVWiiGymrQg+kZLEHrVx295E4xgOeYj
 afAKod3R0jH5230hXajbGynuVhBbnVJhJ8KfoKQT7Moau7kDVwrERMvzr5D+9s6jFm4J
 UO30cYM64AU5E1XS1trQlH3DvOEHoQ0tVnl1tfmiNrl+qGyOrEdh+0uP7SrJ4WNFrdXE
 nbX0Rfuz1TQTeZkuAZdDWWH2+ifhVVVlJ3UIx+RUd+r/08UWFjCLHx34bv1MwGOsFiSi
 PHbg==
X-Gm-Message-State: AOAM533a+QmY65XUut/v7NJrCuz5jrlmC8VdT6O7SopJK4qIGs+TToN+
 P8MAeehstMDVcq9Rnoazz02pqCUcCSmNWBGhgHg=
X-Google-Smtp-Source: ABdhPJw0PGSxweimKkzE14o6yct1H/XAzbkd3TXxlvnYUEqNkQoCZKAcbCZnAO89H356jVRy+iED/zb62aC4S9WQc04=
X-Received: by 2002:a05:6638:519:: with SMTP id
 i25mr9231279jar.99.1595583222664; 
 Fri, 24 Jul 2020 02:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
 <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
 <MA1PR01MB2588FFEF19FCCDEFB3AA43A190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588FFEF19FCCDEFB3AA43A190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Date: Fri, 24 Jul 2020 05:33:31 -0400
Message-ID: <CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4961494752107523617=="
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

--===============4961494752107523617==
Content-Type: multipart/alternative; boundary="0000000000003252d405ab2cabcc"

--0000000000003252d405ab2cabcc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I am aloso thinking of moving to Ubuntu 20.4 eventually.
Does it mean that:
sudo apt install gnuradio

Will install gnuradio, GRC as well as UHD? How about gr-ettus?
BTW, what is the real function og GR-Ettus?

Cherif



On Fri, Jul 24, 2020 at 5:21 AM Koyel Das (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Ok thanks so much for the information.
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* Friday, July 24, 2020 2:50:08 PM
> *To:* Koyel Das (Vehere) <koyel.das@vehere.com>;
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] 4 channel capture using grc and pcie
>
> Yes. That's why I recommended it.
>
> (also, GNU Radio Companion **is** the GUI. GNU Radio is the framework!)
>
> On 24.07.20 11:07, Koyel Das (Vehere) wrote:
> > With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will
> gnu radio companion will also get installed with its GUI?
> >
> > Get Outlook for iOS<https://aka.ms/o0ukef>
> > ________________________________
> > From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Marcus M=C3=BCller via USRP-users <usrp-users@lists.ettus.com>
> > Sent: Friday, July 24, 2020 2:32:20 PM
> > To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> > Subject: Re: [USRP-users] 4 channel capture using grc and pcie
> >
> > Hi Koyel,
> >
> > The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be
> > used with modern GNU Radio.
> >
> > I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,
> > from which
> > `sudo apt install gnuradio`
> > will give you a working GNU Radio, and a matching UHD.
> >
> > (Don't follow any other guides on installing UHD =E2=80=93 you've alrea=
dy got
> > the recommended version, then, and installing anything else is just
> > asking for trouble)
> >
> > Best regards,
> > Marcus
> >
> > On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:
> >> Hi,
> >>
> >> Is it possible to receive data from 4 channels simultaneously of usrp
> 2955 using PCIe ? Which version of Linux and grc should be installed for
> that?
> >>
> >> Regards,
> >> Koyel
> >>
> >> Get Outlook for iOS<https://aka.ms/o0ukef>
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003252d405ab2cabcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div><div>I am aloso =
thinking of moving to Ubuntu 20.4 eventually.</div><div>Does it mean that:<=
/div><div><span style=3D"font-size:14.666666984558105px">sudo apt install g=
nuradio</span></div><div><span style=3D"font-size:14.666666984558105px"><br=
></span></div><div><span style=3D"font-size:14.666666984558105px">Will inst=
all gnuradio, GRC as well as UHD? How about gr-ettus?</span></div><div><spa=
n style=3D"font-size:14.666666984558105px">BTW, what=C2=A0is the real funct=
ion og GR-Ettus?=C2=A0</span></div><div><span style=3D"font-size:14.6666669=
84558105px"><br></span></div><div><span style=3D"font-size:14.6666669845581=
05px">Cherif</span></div><div><span style=3D"font-size:14.666666984558105px=
"><br clear=3D"all"></span><div><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><div><br></div></div></div></div></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 2=
4, 2020 at 5:21 AM Koyel Das (Vehere) via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,20=
4);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Ok thanks so much for the information.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_4964645627110883573ms-outlook-mobile-signature">Get <a h=
ref=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4964645627110883573divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" ta=
rget=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, July 24, 2020 2:50:08 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;<a href=3D"mailto:koyel.das@vehere.com" t=
arget=3D"_blank">koyel.das@vehere.com</a>&gt;; <a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] 4 channel capture using grc and pcie</font=
>
<div>=C2=A0</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div>Yes. That&#39;s why I recommended it.<br>
<br>
(also, GNU Radio Companion **is** the GUI. GNU Radio is the framework!)<br>
<br>
On 24.07.20 11:07, Koyel Das (Vehere) wrote:<br>
&gt; With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will=
 gnu radio companion will also get installed with its GUI?<br>
&gt; <br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef" target=3D"_bl=
ank">https://aka.ms/o0ukef</a>&gt;<br>
&gt; ________________________________<br>
&gt; From: USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.=
com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf=
 of Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; Sent: Friday, July 24, 2020 2:32:20 PM<br>
&gt; To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; Subject: Re: [USRP-users] 4 channel capture using grc and pcie<br>
&gt; <br>
&gt; Hi Koyel,<br>
&gt; <br>
&gt; The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be=
<br>
&gt; used with modern GNU Radio.<br>
&gt; <br>
&gt; I&#39;d think you&#39;ll be most happy with installing Ubuntu Linux 20=
.04LTS,<br>
&gt; from which<br>
&gt; `sudo apt install gnuradio`<br>
&gt; will give you a working GNU Radio, and a matching UHD.<br>
&gt; <br>
&gt; (Don&#39;t follow any other guides on installing UHD =E2=80=93 you&#39=
;ve already got<br>
&gt; the recommended version, then, and installing anything else is just<br=
>
&gt; asking for trouble)<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; Is it possible to receive data from 4 channels simultaneously of u=
srp 2955 using PCIe ? Which version of Linux and grc should be installed fo=
r that?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Koyel<br>
&gt;&gt;<br>
&gt;&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef" target=3D=
"_blank">https://aka.ms/o0ukef</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a><br>
&gt; <br>
</div>
</span></font></div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003252d405ab2cabcc--


--===============4961494752107523617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4961494752107523617==--

