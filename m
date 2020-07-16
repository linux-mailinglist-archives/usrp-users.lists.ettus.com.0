Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DF4222089
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 12:22:46 +0200 (CEST)
Received: from [::1] (port=41796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jw12J-0006HR-Oh; Thu, 16 Jul 2020 06:22:43 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:34916)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1jw12G-0006AS-8N
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 06:22:40 -0400
Received: by mail-ot1-f48.google.com with SMTP id d4so3787466otk.2
 for <usrp-users@lists.ettus.com>; Thu, 16 Jul 2020 03:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aEhu8evWFpZjWem6aKkc8R26m4XApeZHra2WEER6eJA=;
 b=Gp3qnVEn/zXb+Mwl/YMwB9vbkNGOyu5TvVa7h2oF9GHYnWLK4gtSCzSn2tiigbntT3
 jDm4BPWQEyazpkLNdcYXJCSUyjfuET4rtAs5tjSeOpa8LKUj28S/tYgaUs0sFe17AHBm
 C/osCEK6JTTJQMBEsLGRvrjLsZBMNyfVjf18zIMu5KzwWKx8sOMwSOh5bgioXF0LcSHy
 h7S43idI4JAonoxnCJuPgpH7TVCqHkTB1ae473E/yXiOIBLifwUvKTQM0I0I9WMsnu4e
 oHaLt2/Dm50WLbmIIQGQu+kiaBFXq1NS+rdSa+Kq6JLmEepJonLVhiOIblkY2mMrQpzL
 O1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aEhu8evWFpZjWem6aKkc8R26m4XApeZHra2WEER6eJA=;
 b=gct7iIaZFIseN2NnEpD6vFxVADC9Rbb6hkRlmANbue4q5ozoIJVuTF/u0teUwZ/ZcV
 kRSzeOwe9i3MYlupTzML2YLGeN2b1CoLbQ0xyaIv82VJUj6FnPWXtKO3323qonoGK918
 7olDVZQRGRuQ6HNOBB36Dgvhg3fxTIQqwCRes1yV8YRXkjs+6ikwl26YuGnythdzdOjG
 SUvwJljXa8mrxkvo5GbbctrmrnehASj7rVpdbXc6AQQEriESbXNXGcZKX3U9uQSgKnl0
 /X+/BX+2dc517JFc3m0lOYgjFh9+FD/2B8YOkkWMMn3pYMKVMd55yRUOyO92+eqfGqxt
 cMEQ==
X-Gm-Message-State: AOAM533Ct75EJqpPB8TnH7ICkmPDuvD5bR2FfSmI901+h6Es6+YSl6L/
 kpWfc39E9Lcz+OBM5gBwFZ/VVwXn1MIvPyf+6fDpXSmCgoHlAA==
X-Google-Smtp-Source: ABdhPJzIYbK5q9jm+SHg82vbKJbV56kIikGkJkEodQpCRm17RvE6HjYHRfKRWAzZbCpYOgXuCKrwhEPQdkhaIn5rqrE=
X-Received: by 2002:a05:6830:3109:: with SMTP id
 b9mr3596565ots.41.1594894919345; 
 Thu, 16 Jul 2020 03:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR0101MB14911B41478D0BBE883C6DE2887F0@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR0101MB14911B41478D0BBE883C6DE2887F0@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 16 Jul 2020 05:21:23 -0500
Message-ID: <CACaXmv8Kd4EZWHDW3mNyX4f8XtUwr3J0P++iypuJPEoja6pU=A@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] support for synchronizing two USRPs
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
Content-Type: multipart/mixed; boundary="===============7667573863547117063=="
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

--===============7667573863547117063==
Content-Type: multipart/alternative; boundary="0000000000001f3fc505aa8c6931"

--0000000000001f3fc505aa8c6931
Content-Type: text/plain; charset="UTF-8"

You cannot synchronize USRP devices by using a daisy-chain configuration.
The 10 MHz reference and the 1 PPS on both USRP devices must be connected
to a common 10 MHz reference and to a common 1 PPS signal.  The OctoClock-G
device can be used to generate these signals and to distribute them to 8
devices.  Then, for each USRP device, in UHD or GNU Radio, set your
clocking source and timing source to "external".

https://kb.ettus.com/OctoClock_CDA-2990

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

--Neel Pandeya



On Thu, 16 Jul 2020 at 05:00, Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> I am trying to time synchronize two USRPs. I have connected reference and
> PPS trigger out of USRP A to reference and PPS trigger in of USRP B. In
> USRP A i have set time and clock source to GPSDO and in USRP B I have set
> time and clock source to external. But I when I try to compare
> uhd::time_spec for both the boards I see there is a time mismatch. Please
> help me understanding where I am going wrong.
>
> Regards
> Snehasish
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001f3fc505aa8c6931
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">You cannot synchronize USRP devices by using a daisy-chain conf=
iguration.=C2=A0 The 10 MHz reference and the 1 PPS on both USRP devices mu=
st be connected to a common 10 MHz reference and to a common 1 PPS signal.=
=C2=A0 The OctoClock-G device can be used to generate these signals and to =
distribute them to 8 devices.=C2=A0 Then, for each USRP device, in UHD or G=
NU Radio, set your clocking source and timing source to &quot;external&quot=
;.<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><a href=3D"https://kb.ettus.com/OctoClock_CDA-2990">https://kb.=
ettus.com/OctoClock_CDA-2990</a></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/Synch=
ronization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Sync=
hronization_and_MIMO_Capability_with_USRP_Devices</a></div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pandeya<=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 16 Jul 2020 at 05:00, Snehasish Kar via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am trying to time synchronize two USRPs. I have connected reference and P=
PS trigger out of USRP A to reference and PPS trigger in of USRP B. In USRP=
 A i have set time and clock source to GPSDO and in USRP B I have set time =
and clock source to external. But
 I when I try to compare uhd::time_spec for both the boards I see there is =
a time mismatch. Please help me understanding where I am going wrong.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
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

--0000000000001f3fc505aa8c6931--


--===============7667573863547117063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7667573863547117063==--

