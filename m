Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 809B219C1F4
	for <lists+usrp-users@lfdr.de>; Thu,  2 Apr 2020 15:21:25 +0200 (CEST)
Received: from [::1] (port=60396 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJzma-0002jE-Fp; Thu, 02 Apr 2020 09:21:20 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:43419)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jJzmX-0002gB-AF
 for usrp-users@lists.ettus.com; Thu, 02 Apr 2020 09:21:17 -0400
Received: by mail-vs1-f52.google.com with SMTP id w185so2220701vsw.10
 for <usrp-users@lists.ettus.com>; Thu, 02 Apr 2020 06:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fMU3Flo4ARm4npEKXjCEEArN3Ep4Z9/vgxfYBiEG5tI=;
 b=RP9auwuzyif4EIBrEUS4QZXhYlse3qRA34y8G2T1rCppWB+JkHQLKFj9kCyufN8oc6
 IAtO19D4x4lQPcSPX9aJEgdELHi6eK7lISZ8h0cQpsRsLqSMRT3FOgBfLf+HyI82rT+T
 Dw9Z8geugMiFESYRxvl0b0SB5XQQq+gJk92Y7KdYLbWPir7QU7r1qV6AxovrEMAesi0L
 y3KNYYldp/nMM4xvlo08h+vAQ9Z4FvzyckJiVMGS1ChMUEz1afmO4QsUTVipFOM0fWoG
 HS0Qiwq+tmsNPY6rxH5GzQLMnqLSX4GWpf5RyhBhdoMZEhIjgGbp4g9I4QzLNJASfBR6
 BaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fMU3Flo4ARm4npEKXjCEEArN3Ep4Z9/vgxfYBiEG5tI=;
 b=J/dzDxkqefZ7v7oZqSgZnrDPsyCPPXhhNE05yHvKB1WDtE7ecF7UjcP3JgrnRi+wFA
 TyQYq2de9VUQVSmDvo9Y46xbLBF78EiKwwjOGPpXzTAipxsmnODVcQgoF/vetnJZEVvB
 lo2uoXVxRUBKKpsjtKCjK5PNCZlxtuP25fFsD0MNp7+uBNDmTm610B4wvAXZpKct5cV2
 43GXUpq89HHOGjNrlJ3IUWjp+04bOUXZiJJYSTzbntCaboQI0In/aNMiqC9XKxLiYM3i
 ME2EQQPRu4VbYlt7jhXLsGB5W5BRoobcafJUaBvnOq4Nu0oNtnq+Ssi36xLl/2AizTZ4
 2t1A==
X-Gm-Message-State: AGi0PuZJi6Dp8JRBwCMM0HRIZYqcA0d8u3MFJRojU+Xwqh4WTarb79Do
 jA4R+18T7WqHz3ZeioVJvj9/zNv3rpsYQuPP+vOq+xG/
X-Google-Smtp-Source: APiQypJikJtKnZT7423o5cHhujOsE/zTGwiWNQpEAvl3ArvVubFKQsF6+s7SDl8kT8sAax/t8UcV4rZaaJE60WPu9ME=
X-Received: by 2002:a67:1dc2:: with SMTP id d185mr2179885vsd.107.1585833636358; 
 Thu, 02 Apr 2020 06:20:36 -0700 (PDT)
MIME-Version: 1.0
References: <CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com>
In-Reply-To: <CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com>
Date: Thu, 2 Apr 2020 09:20:25 -0400
Message-ID: <CAGNhwTMi4nrsaF4GJM+jQM8Dh7cK8iAXnvwJ-Hro3ZkaCDr=3A@mail.gmail.com>
To: fe8769 <fe8769@gmail.com>
Subject: Re: [USRP-users] B210 configuration
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4848752782378885478=="
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

--===============4848752782378885478==
Content-Type: multipart/alternative; boundary="00000000000091f30c05a24eaaa5"

--00000000000091f30c05a24eaaa5
Content-Type: text/plain; charset="UTF-8"

Hi fe8769 - Although you're clearly trying to use an Ettus B210 USRP, your
query is really about the API used by SoapySDRUtil and osmocom_fft to
access the SDR hardware. I'd guess that most folks here use UHD -- and do
not use SoapySDR or gr-osmosdr -- for their USRP work -- though there are
probably a few outliers, and I'd encourage those folks to pipe up if they
know how to access a B210 via those interfaces! I think you'll have better
luck making your inquiry on the email lists / forums for SoapySDR and/or
gr-osmosdr. Good luck! - MLD
--
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Thu, Apr 2, 2020 at 3:42 AM fe8769 via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> I try to configure channel 1 on B210 with osmocom_fft but I can't access
> to it
>
> the cmd :
>
> SoapySDRUtil --probe="driver=uhd,type=b200"
>
> shows :
>
>  rx0_antenna=RX2
>   rx0_id=Unknown (0xffff)
>   rx0_serial=
>   rx0_subdev_name=FE-RX2
>   rx0_subdev_spec=A:A A:B
>   rx1_antenna=RX2
>   rx1_id=Unknown (0xffff)
>   rx1_serial=
>   rx1_subdev_name=FE-RX1
>   rx1_subdev_spec=A:A A:B
>   tx0_antenna=TX/RX
>   tx0_id=Unknown (0xffff)
>   tx0_serial=
>   tx0_subdev_name=FE-TX2
>   tx0_subdev_spec=A:A A:B
>   tx1_antenna=TX/RX
>   tx1_id=Unknown (0xffff)
>   tx1_serial=
>   tx1_subdev_name=FE-TX1
>   tx1_subdev_spec=A:A A:B
>
> these 2 lines are working fine
>
> SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=0 --direction=RX
> SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=1 --direction=RX
>
> Trying all these lines are always addressing channel 0
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -v
>
> osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A TX/RX
>
> osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A RX2
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -A FE-RX2
>
> osmocom_fft -a uhd,subdev=FE-RX2 -s 1000000 -g 40 -f 392M -A RX2
>
> osmocom_fft -a uhd,"nchan=FE-TX1","subdev=A:A A:B" -s 1000000 -g 40 -f
> 392M -A TX/RX
>
>
> What is the exact usage of osmocom_fft to access channel 1 ? or the exact
> usage of soapy driver ?
>
> Thanks for answer
>
>
> --
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000091f30c05a24eaaa5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0fe8769 - Although you&#39;re clearly trying to use=
 an Ettus B210 USRP, your query is really about the API used by=C2=A0SoapyS=
DRUtil and=C2=A0osmocom_fft to access the SDR hardware. I&#39;d guess that =
most folks here use UHD -- and do not use SoapySDR or gr-osmosdr -- for the=
ir USRP work -- though there are probably a few outliers, and I&#39;d encou=
rage=C2=A0those folks to pipe up if they know how to access a B210 via thos=
e interfaces! I think you&#39;ll have better luck=C2=A0making your inquiry =
on the email lists / forums for SoapySDR and/or gr-osmosdr. Good luck! - ML=
D<div><div>--<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a href=3D=
"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: =
<a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a></di=
v></div></div></div></div><br></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 2, 2020 at 3:42 AM fe=
8769 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><div><br></div><div>I=
 try to configure channel 1 on B210 with osmocom_fft but I can&#39;t access=
 to it</div><div><br></div><div>the cmd :</div><div><br></div><div>SoapySDR=
Util --probe=3D&quot;driver=3Duhd,type=3Db200&quot; <br></div><div><br></di=
v><div>shows :</div><div><br></div><div>=C2=A0rx0_antenna=3DRX2<br>=C2=A0 r=
x0_id=3DUnknown (0xffff)<br>=C2=A0 rx0_serial=3D<br>=C2=A0 rx0_subdev_name=
=3DFE-RX2<br>=C2=A0 rx0_subdev_spec=3DA:A A:B<br>=C2=A0 rx1_antenna=3DRX2<b=
r>=C2=A0 rx1_id=3DUnknown (0xffff)<br>=C2=A0 rx1_serial=3D<br>=C2=A0 rx1_su=
bdev_name=3DFE-RX1<br>=C2=A0 rx1_subdev_spec=3DA:A A:B<br>=C2=A0 tx0_antenn=
a=3DTX/RX<br>=C2=A0 tx0_id=3DUnknown (0xffff)<br>=C2=A0 tx0_serial=3D<br>=
=C2=A0 tx0_subdev_name=3DFE-TX2<br>=C2=A0 tx0_subdev_spec=3DA:A A:B<br>=C2=
=A0 tx1_antenna=3DTX/RX<br>=C2=A0 tx1_id=3DUnknown (0xffff)<br>=C2=A0 tx1_s=
erial=3D<br>=C2=A0 tx1_subdev_name=3DFE-TX1<br>=C2=A0 tx1_subdev_spec=3DA:A=
 A:B</div><div><br></div><div>these 2 lines are working fine <br></div><div=
><br></div><div>SoapySDRUtil --args=3D&quot;driver=3Duhd&quot; --rate=3D10e=
6 --channels=3D0 --direction=3DRX</div><div>SoapySDRUtil --args=3D&quot;dri=
ver=3Duhd&quot; --rate=3D10e6 --channels=3D1 --direction=3DRX</div><div><br=
></div><div>Trying all these lines are always addressing channel 0</div><di=
v><br></div><div>osmocom_fft -a uhd -s 1000000 -g 40 -f 392M <br><br>osmoco=
m_fft -a uhd -s 1000000 -g 40 -f 392M -v<br><br>osmocom_fft -a uhd,nchan=3D=
0,subdev=3DA:B -s 1000000 -g 40 -f 392M -A TX/RX<br><br>osmocom_fft -a uhd,=
nchan=3D0,subdev=3DA:B -s 1000000 -g 40 -f 392M -A RX2<br><br>osmocom_fft -=
a uhd -s 1000000 -g 40 -f 392M -A FE-RX2<br><br>osmocom_fft -a uhd,subdev=
=3DFE-RX2 -s 1000000 -g 40 -f 392M -A RX2<br><br>osmocom_fft -a uhd,&quot;n=
chan=3DFE-TX1&quot;,&quot;subdev=3DA:A A:B&quot; -s 1000000 -g 40 -f 392M -=
A TX/RX</div><div><br></div><div><br></div><div>What is the exact usage of =
osmocom_fft to access channel 1 ? or the exact usage of soapy driver ?<br><=
/div><div><br></div><div>Thanks for answer<br></div><div><br></div><div><br=
></div><div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><img width=3D"79" height=3D"96"></div></div></div></div></div></div></=
div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000091f30c05a24eaaa5--


--===============4848752782378885478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4848752782378885478==--

