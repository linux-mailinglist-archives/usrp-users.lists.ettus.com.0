Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 627FC148B61
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 16:44:30 +0100 (CET)
Received: from [::1] (port=53264 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iv18D-0005Ux-CK; Fri, 24 Jan 2020 10:44:25 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:38896)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iv18A-0005PJ-JP
 for usrp-users@lists.ettus.com; Fri, 24 Jan 2020 10:44:22 -0500
Received: by mail-oi1-f180.google.com with SMTP id l9so2224596oii.5
 for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2020 07:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwE9RqgxSuiYoPfXb6Q00G+ryHLnNmFMzCLwtekiFGs=;
 b=i+xjKJYns1cWigINUUmHGTcHonlYDPaGF/77ZJhuXMF8oWLTGbMfIvnpJO/z26TaG1
 HrQo38UYInQzTLIRf72j9SIuqQKfFf/U5zaU2eEwo6Gw2NFKGGkwl4+Ti/Z9Bqu3rvHN
 5IfSgrsJYkRbu9c9hSRZnyI5hgLjyFoyekyHPo+71oGbnrTGmfcuMZukOfgNnYxj8uhJ
 1y6IHyIx5xXzY7PtTqrSmkljPH7iZx7PSvme6bzCv2DrVT6v279TPv2ZV0MLB7wUaWH/
 WImq6bQYAQFNMW+FrZU465rzGbXmJKYxFL0J+zo7ZswwcORx4LDd9u0aQDiKEaUAPTkm
 fvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwE9RqgxSuiYoPfXb6Q00G+ryHLnNmFMzCLwtekiFGs=;
 b=TeJzO/ijt38MdFj4dWEY09tfFGEnJsgHnYjJyOMTx80o2/8APlBFAxQKdU69tGFvNc
 Znjon3qr9KcVQ78G0+iOz47EyMwRx4O1nOO9xh82ExgNXByM6n/NaS14KkAslAUjX9PF
 qeOr1E2J6iQq7pcNwox2q12pMOwx0jz6/xdoSbPrfvvHS+vNPFfAwZJu430mxX/8J8ci
 w93ibHvA7OItlCrqloOUnHjA4cxxA24y6J5v6SNRqWINU/gNsD3ccUZ8AHmGlhfQl6Av
 ez2BzSKnO8D3ZDhJYqTTM4bny3YjSE1lCBY5EbAXrYBwq5EyTAb8tq9BRbx6GuotuWQq
 rI+w==
X-Gm-Message-State: APjAAAVYGMwiYZGkQckT5vT6duFTk/OXzH5C3P/EsfmQ3JLEq9AZ6vRY
 svlsUt/7n0LYP4zxcVCBjgyKIlxcf8t03N4Xsd7eq9rx
X-Google-Smtp-Source: APXvYqyOxY6+x7y7AluNxUCKHh4zctCP13gcWNZ67+Erys3pXSt2kKkCpGlUZ53EupcNimMzsaCB7ZvG69o1gvsbf9I=
X-Received: by 2002:a05:6808:312:: with SMTP id
 i18mr2410666oie.44.1579880621682; 
 Fri, 24 Jan 2020 07:43:41 -0800 (PST)
MIME-Version: 1.0
References: <CAM+1jtfzU9rcXtjS2kemYNdEAd3Dr6PgbwYu8Qp32-nLKkdKGg@mail.gmail.com>
In-Reply-To: <CAM+1jtfzU9rcXtjS2kemYNdEAd3Dr6PgbwYu8Qp32-nLKkdKGg@mail.gmail.com>
Date: Fri, 24 Jan 2020 10:43:30 -0500
Message-ID: <CAGNhwTOhznGZGgkhcfZ617QDzL5-bgDhceHdTX3MFRNATLebxQ@mail.gmail.com>
To: massoud pourmandi <massoud.pourmandi@gmail.com>
Subject: Re: [USRP-users] sampling rate issue
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
Content-Type: multipart/mixed; boundary="===============3916129683577916421=="
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

--===============3916129683577916421==
Content-Type: multipart/alternative; boundary="0000000000003e44dc059ce49f71"

--0000000000003e44dc059ce49f71
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Massoud - The 'O' and 'U' mean overflow and underrun, respectively; see
also:< https://files.ettus.com/manual/page_general.html#general_ounotes >.
Note that if the O/U occur regularly during runtime they -will- impact data
flow; these are best avoided! Any that occur during flowgraph startup or
shutdown can generally be ignored.

Whether your B210 can support bi-directional 10 MS/s or 20 MS/s or 28 MS/s
depends on a number of factors, such as the quality of the USB cable, the
USB chipset in the host computer, the general speed / power of the host
computer to do CPU-based processing, and whatever application is generating
(for Tx) and/or processing (on Rx) the data.

Since you're using GNU Radio, the actual flowgraph you're executing impacts
the max supported throughput: UHD will generate a 'U' for underrun on Tx if
the host computer isn't supplying data fast enough to UHD (and thence to
the USRP), and an 'O' for overflow on Rx if the host computer isn't
consuming data fast enough from UHD (and thus from the USRP). A faster
computer might help here, but a "better" flowgraph might also do the trick.

You can test out pure-UHD (no GNU Radio or anything else) Tx, Rx, or Tx/Rx
max rates for your setup via the UHD "benchmark_rate" example; for example:
"benchmark_rate --rx_rate 2e6 --tx_rate 2e6" will test simultaneous Tx and
Rx at 2MS/s each way. In this manner, you can figure out what the max rates
supported by your setup are.

On my setup, I can get 28 MS/s bidirectional without issues; my setup is a
2019 8-core MacBook Pro with USB-C, and the cable is high quality ... so
I'm confident my overall computer setup is very capable!

If, after testing with just UHD, your system can't support the your desired
28 MS/s bidirectional, then you should explore (1) a better USB cable,
since they are relatively inexpensive; and then (2) a better host computer.
If testing with just UHD shows good throughput, then it's a GNU Radio issue
and you should explore a better GNU Radio flowgraph (whatever that might
mean for your specific needs here).

Hope this is useful! - MLD


On Fri, Jan 24, 2020 at 3:00 AM massoud pourmandi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear colleagues,
>
> Based on the USRP B210 datasheet, I can increase the sampling rate of the
> device to 28 MS/s if I use RFA (TX/RX, RX2) ports simultaneously as
> transmitter and receiver, respectively. Thought, for sampling rate greate=
r
> than 2MS/s, I start getting messages at the output terminal. I attached t=
he
> messages in the following.
>
> First: theses =E2=80=98O=E2=80=99 and =E2=80=98U=E2=80=99 signs, what are=
 the meanings of these signs?
>
> Second: I need to be able to use the highest sampling rate of B210, shoul=
d
> I have to use a more powerful PC?
>
> I would appreciate if you explain the solutions of this issue in more
> detail.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--0000000000003e44dc059ce49f71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Massoud - The &#39;O&#39; and &#39;U&#39; mean ove=
rflow and underrun, respectively; see also:&lt; <a href=3D"https://files.et=
tus.com/manual/page_general.html#general_ounotes">https://files.ettus.com/m=
anual/page_general.html#general_ounotes</a> &gt;. Note that if the O/U occu=
r regularly during runtime they -will- impact data flow; these are best avo=
ided! Any that occur during flowgraph startup or shutdown can generally be =
ignored.<div><br></div><div>Whether your B210 can support bi-directional 10=
 MS/s or 20 MS/s or 28 MS/s depends on a number of factors, such as the qua=
lity of the USB cable, the USB chipset in the host computer, the general sp=
eed / power of the host computer to do CPU-based processing, and whatever a=
pplication is generating (for Tx) and/or processing (on Rx) the data.</div>=
<div><br></div><div>Since you&#39;re using GNU Radio, the actual flowgraph =
you&#39;re executing impacts the max=C2=A0supported throughput: UHD will ge=
nerate a &#39;U&#39; for underrun on Tx if the host computer isn&#39;t supp=
lying data fast enough to UHD (and thence to the USRP), and an &#39;O&#39; =
for overflow on Rx if the host computer isn&#39;t consuming data fast enoug=
h from UHD (and thus from the USRP). A faster computer might help here, but=
 a &quot;better&quot; flowgraph might also do the trick.</div><div><br></di=
v><div>You can test out pure-UHD (no GNU Radio or anything else) Tx, Rx, or=
 Tx/Rx max rates for your setup via the UHD &quot;benchmark_rate&quot; exam=
ple; for example: &quot;benchmark_rate --rx_rate 2e6 --tx_rate 2e6&quot; wi=
ll test simultaneous Tx and Rx at 2MS/s each way. In this manner, you can f=
igure out what the max rates supported by your setup are.</div><div><br></d=
iv><div>On my setup, I can get 28 MS/s bidirectional without issues; my set=
up is a 2019 8-core MacBook Pro with USB-C, and the cable is high quality .=
.. so I&#39;m confident=C2=A0my overall computer setup is very capable!</di=
v><div><br></div><div>If, after testing with just UHD, your system can&#39;=
t support the your desired 28 MS/s bidirectional, then you should explore (=
1) a better USB cable, since they are relatively inexpensive; and then (2) =
a better host computer. If testing with just UHD shows good throughput, the=
n it&#39;s a GNU Radio issue and you should explore a better GNU Radio flow=
graph (whatever that might mean for your specific needs here).</div><div><b=
r></div><div>Hope this is useful! - MLD</div><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 24,=
 2020 at 3:00 AM massoud pourmandi via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><p clas=
s=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-size:12pt=
;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"color:black;=
background-image:initial;background-position:initial;background-size:initia=
l;background-repeat:initial;background-origin:initial;background-clip:initi=
al">Dear colleagues, </span><span style=3D"background-image:initial;backgro=
und-position:initial;background-size:initial;background-repeat:initial;back=
ground-origin:initial;background-clip:initial"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"color=
:black;background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial">Based on the USRP B210 datasheet, I can increase the sampling
rate of the device to 28 MS/s if I use RFA (TX/RX, RX2) ports simultaneousl=
y as
transmitter and receiver, respectively. Thought, for sampling rate greater =
than
2MS/s, I start getting messages at the output terminal. I attached the mess=
ages
in the following.</span><span style=3D"background-image:initial;background-=
position:initial;background-size:initial;background-repeat:initial;backgrou=
nd-origin:initial;background-clip:initial"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"color=
:black;background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial">First: theses =E2=80=98O=E2=80=99 and =E2=80=98U=E2=80=99 signs,=
 what are the meanings of
these signs?</span><span style=3D"background-image:initial;background-posit=
ion:initial;background-size:initial;background-repeat:initial;background-or=
igin:initial;background-clip:initial"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"color=
:black;background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial">Second: I need to be able to use the highest sampling rate of
B210, should I have to use a more powerful PC?</span><span style=3D"backgro=
und-image:initial;background-position:initial;background-size:initial;backg=
round-repeat:initial;background-origin:initial;background-clip:initial"></s=
pan></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"color=
:black;background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial">I would appreciate if you explain the solutions of this issue
in more detail.</span></p></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--0000000000003e44dc059ce49f71--


--===============3916129683577916421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3916129683577916421==--

