Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCE92BBECC
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 12:54:07 +0100 (CET)
Received: from [::1] (port=56760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgRSs-0006Qw-Bq; Sat, 21 Nov 2020 06:54:02 -0500
Received: from mail-il1-f172.google.com ([209.85.166.172]:43109)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kgRSp-0006L8-9e
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 06:53:59 -0500
Received: by mail-il1-f172.google.com with SMTP id z14so9280118ilm.10
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 03:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tlYzHVmcb86FUALmVCMDq4qbrQzLjJTordpyZ/P/qN8=;
 b=NMgNLxRFP0YWcOjexdS3LEPbAIdUxHVYOAP4U3atpASzAvmorXoMwGnsdY8ulPfCZs
 TUlMwkkuIRF8E+v9l1smVcI0ThTtbFz8oAdKQ/GY4Cf6JHZMdHW7fGaSlfDnp7YBv4NS
 N3uG/Se9IwA29OXvuUr71aX+86C4QPBvjxCJYXuM48nq7X0ORpvRzNkRRD/9o7zIv+wl
 xN5QvIRQ3zqcG5eRBO+x7CDIFBU6NZkCnv933p2XdHmbJAM06lcfeWTX3QWAm3D9adoO
 vdELAQWqdpUic8qYR3/+Wb3T382ADCjzKW4xuQsPRal09/IJp8rv37EsdxdaL4jyQ/Nh
 pM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tlYzHVmcb86FUALmVCMDq4qbrQzLjJTordpyZ/P/qN8=;
 b=E645r+S1k+n6ygTr0NslKk+mwnejFVl3JudMexGI6rAn61gIFmbiRY0k8rBtx6DvZU
 z/K8ldjx78a9Zg9QkDRwA+ApQraH0/0u+ZykTMtHkWv2JcFRomMAPzrKpUdpmezds66u
 5JmENQOG+TIR0e26yxBvwnmccdYkVrFTFqSDrTmjJlslZgglh9EzucQe2/pLVah43oGp
 Y69bOxNJADyRWMzu/kAAvH4CksZudY/HoFfGmV+xBlrokfyLvkJPXkRqys2KkDveKiUg
 MMa1uZhkLYRoeOJoEIXqdfBBE5o6CT6QokzFYUpT/QQ6/T/DZLpJAXltyDfZTdvOx2MV
 4+bg==
X-Gm-Message-State: AOAM530QMD4RtblstlvhJDZ/mO+bJ80FPZEzDDcIyTQkiOICmosixUHs
 5wDsc+JvXB1JOZi6uTpl9RBiN/zgjI0MKs2aNCU=
X-Google-Smtp-Source: ABdhPJy8HCa8cZzAkw8mJ3X7Mb8tpopbanFRed165TUFGR74/gXiLKkIlYMQ8aIbl2I+2qLivG1JoCCLmm1LJiGcJoM=
X-Received: by 2002:a92:dd91:: with SMTP id g17mr25524260iln.12.1605959598501; 
 Sat, 21 Nov 2020 03:53:18 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxtbQ1UWrUd=hhJxmUMyMRt8rLtvpLMGPoqZXVpai=a9Aw@mail.gmail.com>
 <3A42F7CE-97CC-4D96-9534-583EBF92FFE0@gmail.com>
In-Reply-To: <3A42F7CE-97CC-4D96-9534-583EBF92FFE0@gmail.com>
Date: Sat, 21 Nov 2020 13:53:07 +0200
Message-ID: <CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>,
 usrp-users <usrp-users@lists.ettus.com>, 
 "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Overrun on chan error 0 USRP e310 RFNoC
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============3524492738235994023=="
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

--===============3524492738235994023==
Content-Type: multipart/alternative; boundary="00000000000064747805b49c9bff"

--00000000000064747805b49c9bff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was setting samp_rate to 1 msps and observed the same situation. In
addition, in the example fosphor samp_rate =3D 56 msps and no errors
occur.



=D1=81=D0=B1, 21 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 05:12, Marcu=
s D Leech <patchvonbraun@gmail.com>:

> There=E2=80=99s no way the fpga to ARM channel can support those data rat=
es.
> Lower your sample rate to 5msps and try again.
>
> Sent from my iPhone
>
> > On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello, I want to launch two channels for receiving in parallel with usr=
p
> e310 rfnoc. But on startup, I get an overrun error. What I need is
> uninterrupted data transmission for phase analysis on both channels. How
> can I do this?
> > <=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=BD=D0=
=B0 =D0=BE=D1=82 2020-11-21 04-50-17.png>
> >
> > <=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=BD=D0=
=B0 =D0=BE=D1=82 2020-11-21 04-52-21.png>
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000064747805b49c9bff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-oSioSc"><div id=3D"gmail-tw-target"><d=
iv id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb"><div class=3D"gmail-tw-ta-con=
tainer gmail-hide-focus-ring gmail-tw-nfl" id=3D"gmail-tw-target-text-conta=
iner" tabindex=3D"0"><pre class=3D"gmail-tw-data-text gmail-tw-text-large g=
mail-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:le=
ft" dir=3D"ltr"><span lang=3D"en">I was setting samp_rate to 1 msps and obs=
erved the same situation. In addition, in the example fosphor samp_rate =3D=
 56 msps and no errors occur.</span></pre></div></div></div></div><br><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=
=B1, 21 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 05:12, Marcus D Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">There=E2=80=99s no way the fpga to ARM channel can support those da=
ta rates.=C2=A0 Lower your sample rate to 5msps and try again. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello, I want to launch two channels for receiving in parallel with us=
rp e310 rfnoc. But on startup, I get an overrun error. What I need is unint=
errupted data transmission for phase analysis on both channels. How can I d=
o this?<br>
&gt; &lt;=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=
=BD=D0=B0 =D0=BE=D1=82 2020-11-21 04-50-17.png&gt;<br>
&gt; <br>
&gt; &lt;=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=
=BD=D0=B0 =D0=BE=D1=82 2020-11-21 04-52-21.png&gt;<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000064747805b49c9bff--


--===============3524492738235994023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3524492738235994023==--

