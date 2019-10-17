Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B9CDB25C
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2019 18:30:02 +0200 (CEST)
Received: from [::1] (port=52482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iL8ex-0006RQ-Ej; Thu, 17 Oct 2019 12:29:55 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:35452)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iL8eu-0006K8-28
 for usrp-users@lists.ettus.com; Thu, 17 Oct 2019 12:29:52 -0400
Received: by mail-oi1-f175.google.com with SMTP id x3so2707198oig.2
 for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2019 09:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dsKlBwQD7PUmvJRI+NRtJPa3JXG25ox8duUQevGp1gs=;
 b=ezgK2Ao+RUrih6PwhKswVYVha5xBAWM7asASw09jTwJG2jTbxzBbuT8rDPt2Am/dRN
 pZbZAtSF45dt9rXmrpopjiFgOTnlYoQAXvNrTj4JNqiPmPji0/w9mt3yUZ8UK7anuOKr
 2jPeaQVM9XO1mLSQKwDs12hO4Aduh6i5XpnyZHP/y7VU4Psc+AkdisK615iJ9KiOg7/Q
 nfKgP2YEpSFDre9nhitcIQUTC4mO66qSfY5nJJPt5mDT4nOhx94Mdg6JYBKQ3tMDVnDu
 LuxRyl2MxFPsPXJQW+M3PWcLLeQyvqgBCkrC1w1egrH6OUbuc0I+whCYq2ZKP+glk4Ls
 D8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dsKlBwQD7PUmvJRI+NRtJPa3JXG25ox8duUQevGp1gs=;
 b=UXdu8wLiZZsnwMzBxBVlxHyHvbk1oNMm4Ah6bya1nXFNRcyYCuK1FBIazkmv6bb2hp
 9VhXzBGlQqmpK5t3WPap+d78iCu3wQqzP1DcyvG9KRXAT1FgcF7hAHvK7SK0ekbNt8Yz
 0Ji1qZ+ZglytLm+Fj56SbmseiNfbsyD69qYp/1/zLBYUUbdlaijTzZO51KcuiRUsLDuZ
 cRbCjpKx2N7IJE1Z+j+13+HwLcNZ4WYrxk2pCU9FJgbODmcYR5YYNik/taVyupjtKldr
 Zcj0iOItZPgGNM/44myGWB36PVVry4GhOwcWkSEwMN1VeWGQHrZxvjKxYRhO2LC/QpJn
 TcGw==
X-Gm-Message-State: APjAAAWmM6mVVa+1F3iuIVsBvejqDlOPPtMozfFEcm3vCXk4i47qLveo
 bBZErejtQGg0+h4IgkI8upMepAgxRaWCUCJjrOwaDqh6
X-Google-Smtp-Source: APXvYqxwykqvDomoPQR5BkZPdF/8oX2s7Zr3ASAHSIZJZTXEdC5+ZprPal98FGqY9ePWK5Uy0UVOu+Rzq7fnfI1f9v4=
X-Received: by 2002:aca:fc42:: with SMTP id a63mr3885847oii.97.1571329751351; 
 Thu, 17 Oct 2019 09:29:11 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.49.1571241602.28966.usrp-users_lists.ettus.com@lists.ettus.com>
 <50ae0c17.d3a7.16dd9920a50.Coremail.ruoyilei@126.com>
In-Reply-To: <50ae0c17.d3a7.16dd9920a50.Coremail.ruoyilei@126.com>
Date: Thu, 17 Oct 2019 09:29:39 -0700
Message-ID: <CAL263ixcwiYnr53j2pw-eXAatYuAFAy47SftxfLSeaKkYmNjiA@mail.gmail.com>
To: =?UTF-8?B?546L55u8?= <ruoyilei@126.com>
Subject: Re: [USRP-users] what's wrong with my n310s?help me, please!
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3017374145161046375=="
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

--===============3017374145161046375==
Content-Type: multipart/alternative; boundary="000000000000a798b005951db7a0"

--000000000000a798b005951db7a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wangpan,

You had contacted us directly via support@ettus.com on this same issue,
let's continue to debug through that channel and when the issue is
resolved, I can update the mailing list with the result.


Regards,
Nate Temple

On Thu, Oct 17, 2019 at 4:55 AM =E7=8E=8B=E7=9B=BC via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello=EF=BC=9A
>         I got two n310s=E3=80=82I set up them follow the guide in
> http://kb.ettus.com=E3=80=82I can run
> =E2=80=9Cuhd_find_devices=E2=80=9Dand=E2=80=9Cuhd_usrp_probe=E2=80=9Dcorr=
ectly=E3=80=82Then I want to test them use
> the uhd/examples=E3=80=82I have seveal problems.
>         (1)One n310 can not run "benchmark_rate"and"rx_samples_to_file"co=
rrectly.
> I have tyied seveal times, but got diffrent errors,and I dont know what i=
s
> the problem.The file "benchmark_rate.log" is the log when i run "
> benchmark_rate","rx_samples_to_file_first_time.log"is the log of my fist
> time run "rx_samples_to_file","rx_samples_to_file_second_time.log" is the
> second time.
>
> *[WARNING] [CORES] Timer loopback test failed!*
> *[WARNING] [CORES] Expecting clock rate: 122.88 MHz*
> *Approximate clock rate: 0 MHz*
> * is the reason?    *
>       (2) The other n310 run "benchmark_rate"and"rx_samples_to_file"corre=
ctly,
> but can not run "txrx_loopback_to_file",but I got error:
> *Please run: sudo sysctl -w net.core.wmem_max=3D6250000*
> *Checking TX: all_los: unlocked ...*
> *Error: AssertionError: lo_locked.to_bool()*
> *  in int _main(int, char**)*
> *  at /home/workarea-uhd/uhd/host/examples/txrx_loopback_to_file.cpp:471*
>
> the cmd is:
> ./txrx_loopback_to_file \
> --tx-args "type=3Dn3xx,addr=3D192.168.10.2,master_clock_rate=3D125e6" \
> --rx-args "type=3Dn3xx,addr=3D192.168.10.2,master_clock_rate=3D125e6" \
> --file 73_n310_1_const_short.dat \
> --rx-rate 3.84e6 \
> --tx-rate 3.84e6 \
> --tx-freq 2400000 \
> --rx-freq 2400000 \
> --tx-gain 40 \
> --rx-gain 40 \
> --tx-subdev  "A:0"  \
> --rx-subdev  "A:0"  \
> --tx-channels "0" \
> --rx-channels "0"
>
> ./txrx_loopback_to_file \
> --tx-args
> "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_ra=
te=3D125e6"
> \
> --rx-args
> "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_ra=
te=3D125e6"
> \
> --file 73_n310_4_const_short.dat \
> --rx-rate 1250000 \
> --tx-rate 1250000 \
> --tx-freq 2400000 \
> --rx-freq 2400000 \
> --tx-gain 40 \
> --rx-gain 40 \
> --tx-bw 1000000 \
> --rx-bw 1000000 \
> --tx-subdev  "A:0 A:1 B:0 B:1"  \
> --rx-subdev  "A:0 A:1 B:0 B:1"  \
> --tx-channels "0,1,2,3" \
> --rx-channels "0,1,2,3"
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a798b005951db7a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Wangpan,<br><br>You had contacted us directly via <a=
 href=3D"mailto:support@ettus.com">support@ettus.com</a> on this same issue=
, let&#39;s continue to debug through that channel and when the issue is re=
solved, I can update the mailing list with the result.<br><br><br>Regards,<=
br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Oct 17, 2019 at 4:55 AM =E7=8E=8B=E7=9B=BC via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">

   =20

<div>

<div style=3D"font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,Verdana,&quo=
t;Microsoft Yahei&quot;,SimSun,sans-serif;font-size:14px;line-height:1.6">
    <div></div><div>
    <div>Hello=EF=BC=9A</div></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 I got t=
wo n310s=E3=80=82I set up them follow the guide in <a href=3D"http://kb.ett=
us.com" target=3D"_blank">http://kb.ettus.com</a>=E3=80=82I can run =E2=80=
=9Cuhd_find_devices=E2=80=9Dand=E2=80=9Cuhd_usrp_probe=E2=80=9Dcorrectly=E3=
=80=82Then I want to test them use the uhd/examples=E3=80=82I have seveal p=
roblems.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 (1)One n310 can not run &quo=
t;benchmark_rate&quot;and<span style=3D"line-height:1.6">&quot;rx_samples_t=
o_file&quot;</span><span style=3D"line-height:22.4px">correctly. I have tyi=
ed seveal times, but got diffrent errors,and I dont know what is the proble=
m.The file &quot;</span>benchmark_rate.log<span style=3D"line-height:22.4px=
">&quot; is the log when i run &quot;</span><span style=3D"line-height:22.4=
px">benchmark_rate&quot;,&quot;</span>rx_samples_to_file_first_time.log&quo=
t;is the log of my fist time run &quot;<span style=3D"line-height:22.4px">r=
x_samples_to_file</span><span style=3D"line-height:1.6">&quot;,&quot;</span=
>rx_samples_to_file_second_time.log&quot; is the second time.</div><div><br=
></div><div><div><b>[WARNING] [CORES] Timer loopback test failed!</b></div>=
<div><b>[WARNING] [CORES] Expecting clock rate: 122.88 MHz</b></div><div><b=
>Approximate clock rate: 0 MHz</b></div></div><div><b>=C2=A0is the reason? =
=C2=A0 =C2=A0</b></div><div>=C2=A0 =C2=A0 =C2=A0 (2) The other n310 run=C2=
=A0<span style=3D"line-height:22.4px">&quot;benchmark_rate&quot;and</span><=
span style=3D"line-height:1.6">&quot;rx_samples_to_file&quot;</span><span s=
tyle=3D"line-height:22.4px">correctly, but can not run &quot;</span>txrx_lo=
opback_to_file&quot;,but I got error:</div><div><div><b>Please run: sudo sy=
sctl -w net.core.wmem_max=3D6250000</b></div><div><b>Checking TX: all_los: =
unlocked ...</b></div><div><b>Error: AssertionError: lo_locked.to_bool()</b=
></div><div><b>=C2=A0 in int _main(int, char**)</b></div><div><b>=C2=A0 at =
/home/workarea-uhd/uhd/host/examples/txrx_loopback_to_file.cpp:471</b></div=
></div><div><br></div><div>the cmd is:</div><div><div>./txrx_loopback_to_fi=
le \</div><div>--tx-args &quot;type=3Dn3xx,addr=3D192.168.10.2,master_clock=
_rate=3D125e6&quot; \</div><div>--rx-args &quot;type=3Dn3xx,addr=3D192.168.=
10.2,master_clock_rate=3D125e6&quot; \</div><div>--file 73_n310_1_const_sho=
rt.dat \</div><div>--rx-rate 3.84e6 \</div><div>--tx-rate 3.84e6 \</div><di=
v>--tx-freq 2400000 \</div><div>--rx-freq 2400000 \</div><div>--tx-gain 40 =
\</div><div>--rx-gain 40 \</div><div>--tx-subdev =C2=A0&quot;A:0&quot; =C2=
=A0\</div><div>--rx-subdev =C2=A0&quot;A:0&quot; =C2=A0\</div><div>--tx-cha=
nnels &quot;0&quot; \</div><div>--rx-channels &quot;0&quot;=C2=A0</div></di=
v><div><br></div><div><div>./txrx_loopback_to_file \</div><div>--tx-args &q=
uot;type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_r=
ate=3D125e6&quot; \</div><div>--rx-args &quot;type=3Dn3xx,mgmt_addr=3D192.1=
68.10.2,addr=3D192.168.10.2,master_clock_rate=3D125e6&quot; \</div><div>--f=
ile 73_n310_4_const_short.dat \</div><div>--rx-rate 1250000 \</div><div>--t=
x-rate 1250000 \</div><div>--tx-freq 2400000 \</div><div>--rx-freq 2400000 =
\</div><div>--tx-gain 40 \</div><div>--rx-gain 40 \</div><div>--tx-bw 10000=
00 \</div><div>--rx-bw 1000000 \</div><div>--tx-subdev =C2=A0&quot;A:0 A:1 =
B:0 B:1&quot; =C2=A0\</div><div>--rx-subdev =C2=A0&quot;A:0 A:1 B:0 B:1&quo=
t; =C2=A0\</div><div>--tx-channels &quot;0,1,2,3&quot; \</div><div>--rx-cha=
nnels &quot;0,1,2,3&quot;=C2=A0</div></div><div><br></div>
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

--000000000000a798b005951db7a0--


--===============3017374145161046375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3017374145161046375==--

