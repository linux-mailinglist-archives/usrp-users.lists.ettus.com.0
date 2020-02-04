Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6D1521AC
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 22:06:32 +0100 (CET)
Received: from [::1] (port=52406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iz5Oq-00044z-E8; Tue, 04 Feb 2020 16:06:24 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:46783)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <yend19@gmail.com>) id 1iz5On-00041d-Lh
 for usrp-users@lists.ettus.com; Tue, 04 Feb 2020 16:06:21 -0500
Received: by mail-il1-f182.google.com with SMTP id t17so17137125ilm.13
 for <usrp-users@lists.ettus.com>; Tue, 04 Feb 2020 13:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Ho2LfGJqeJx1zFQ/X0X11O6ucCrDSQoUEh5OS96JnYY=;
 b=d9LG+E9j9tw+2bKF0NRjs0CUS20JyY5aCj4MX444vrYELo5ZY6P5o+Q8jzdwj+RTGq
 eKaO4LhlxNdyRrIf2rKBZjFNytwRj0Txmci/K8tOnhp48SJC1v1YRBazwJCLcgMkWJsT
 mgGwXJDyJXyLI4qGAyCNzuiFmTH2yusUMBesipcBHGUdfQTyhQt5hgHl98OmzUg8WQA9
 lW2d5TXxccPBZMqL7QY0Fdi7xBs5qLkw/einTpoD1z9t1nlgKZ/whiDkrQGwrokBim3A
 g8EMxSEpHN/tXS0w2xaMMxK1arEeZORelwz2hMqpjU7Zpe8Qqb9TSc76YR+1v36PVMq/
 apAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Ho2LfGJqeJx1zFQ/X0X11O6ucCrDSQoUEh5OS96JnYY=;
 b=GnNfMMTdxsYeObjfNZIB7afuXQacRnfHJ7h/5gWkg2yCIy6ja39mEO00zd5HHNt7YM
 3+34rjEIjN+j/HfYQnKUtV/oD79Kefmn9Caa6pSFQcMit5gOAr+pEsDjzVSbsslPFHT5
 y8QQAgyGNOMtH4B4umCsZdE5qLw7oZhYXqMudF53C8Zvjqkx4s4HD7fuzcq1b29/m9qo
 YlAk5BW2pe6P/4kz0WmwBYsMKwdrrvnwoy866vqN4lyvvQxmWu+8HEmDxvBdiS8R96B+
 flNM2GYq4KWIzGDRFvB/701LCOei3p3V0AO64aeW4ngwFJymA44Pb0RIHi0gnSQmxpAW
 viJg==
X-Gm-Message-State: APjAAAXDfD/CAqoj7koq3spQ4j4CZlwacL9gZWvnDjv0YH0K+mKyZ8/N
 RxFjlB/OwTA5jmwbn6RUaBAJ7xUxbRx5ruZZ/J9pYg==
X-Google-Smtp-Source: APXvYqy6FA/atkbP7JTjZLGp6i0A/TAhqxqQZX1gXfi3H1DUQkOl6U3dsE1yWNCgisbSxIUvqj76L9pepc5QCQ64Mnk=
X-Received: by 2002:a92:5c5c:: with SMTP id q89mr21753561ilb.66.1580850340736; 
 Tue, 04 Feb 2020 13:05:40 -0800 (PST)
MIME-Version: 1.0
References: <mailman.52.1580835604.21324.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.52.1580835604.21324.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Tue, 4 Feb 2020 23:05:28 +0200
Message-ID: <CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP filter delay
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
From: "YENDstudio . via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "YENDstudio ." <yend19@gmail.com>
Content-Type: multipart/mixed; boundary="===============4132134766070635687=="
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

--===============4132134766070635687==
Content-Type: multipart/alternative; boundary="00000000000000b4a7059dc667ea"

--00000000000000b4a7059dc667ea
Content-Type: text/plain; charset="UTF-8"

  Hi Markus,

Yes, I am using a timed-command. The loopback delay is about 50 samples.
Checking from the UHD API, I can see that there are three digital filters
(FIR_1,HB_1,2,3) enabled. The FIR filter alone has 128 taps, and the group
delay would exceed what I measured. I am now suspecting that the timestamps
are taken at the ADC/DAC rather than at the TX/RX controller (before DUC
and after DDC), or the group delay introduced by the digital filters has
been compensated. In this case, the loopback delay I measured only shows
only the Analog filters' delay which can be predicted.

I will check AD9361's datasheet but I am still unsure of how the timestamps
are interpreted; whether the DUC/DDC filter delay is taken into
consideration. Otherwise, even while using a GPS PPS trigger, there would
be an offset between the start of the TX signal (measured at the antenna)
and the actual GPS time. Personally, it would make sense to compensate for
DDC/DUC delays by the UHD driver/firmware based on the selected digital
filters and the interpolation & decimation factors.




>
>
> ---------- Forwarded message ----------
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Mon, 03 Feb 2020 12:40:48 -0500
> Subject: Re: [USRP-users] USRP filter delay
> On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:
> > Hi,
> >
> > I want to know the actual timestamp of TX and RX signals at the RF
> > antenna. For this I have add/subtract the group delay introduced by
> > digital filters in the TX and the RX paths from the UHD timestamp.
> > Through loopback test, I am able to calculate the aggregate delay, but
> > cannot know the TX delay and the RX delay separately. The UHD driver
> > has APIs to get the list of filters used in the signal paths. But my
> > calculated values do not match with the loopback delay I measured.
> > Could someone help me with this? I am using USRPB200 set with 30.72
> > MHz master clock rate and 1.92 MHz sampling rate.
> >
> > Regards!
> >
> >
> So, you use a timed transmit sequence, or you just note the time the
> samples left your application?  Latency measured through the entire
>    stack will be MUCH larger, and variable, than if measured using a
> timed-command transmit sequence.
>
> Quite apart from the analog delay that Nick has already mentioned,
> filter-delay will be "shared" between filters in the FPGA, and filters
> in the
>    AD9361 chip--there's a kind of "shared" DSP going on there.  The
> AD9361 datasheet might be a fruitful place to look at DUC/DDC filter
>    latencies within the chip.
>
>
>

--00000000000000b4a7059dc667ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">=C2=A0 Hi Markus,</div><div dir=3D"ltr" class=3D"gmail=
_attr"><br></div><div dir=3D"ltr" class=3D"gmail_attr">Yes, I am using a ti=
med-command. The loopback delay is about 50 samples. Checking from the UHD =
API, I can see that there are three digital filters (FIR_1,HB_1,2,3) enable=
d. The FIR filter alone has 128 taps, and the group delay would exceed what=
 I measured. I am now suspecting that the timestamps are taken at the ADC/D=
AC rather than at the TX/RX controller (before DUC and after DDC), or the g=
roup delay introduced by the digital filters has been compensated. In this =
case, the loopback delay I measured only shows only the Analog filters&#39;=
 delay which can be predicted.</div><div dir=3D"ltr" class=3D"gmail_attr"><=
br></div><div dir=3D"ltr" class=3D"gmail_attr">I will check=C2=A0<span styl=
e=3D"font-family:sans-serif">AD9361&#39;s datasheet but I am still unsure o=
f how the timestamps are interpreted; whether the DUC/DDC filter delay is t=
aken into consideration. Otherwise, even while using a GPS PPS trigger, the=
re would be an offset between the start of the TX signal (measured at the a=
ntenna) and the actual GPS time. Personally, it would make sense to compens=
ate for DDC/DUC delays by the UHD driver/firmware based on the selected dig=
ital filters and the interpolation &amp; decimation factors.</span></div><d=
iv dir=3D"ltr" class=3D"gmail_attr"><span style=3D"font-family:sans-serif">=
<br></span></div><div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"font-=
family:sans-serif"><br></span></div><div dir=3D"ltr" class=3D"gmail_attr"><=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0&quot;Mar=
cus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;<br>To:=C2=A0<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"norefer=
rer">usrp-users@lists.ettus.com</a><br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=
=A0Mon, 03 Feb 2020 12:40:48 -0500<br>Subject:=C2=A0Re: [USRP-users] USRP f=
ilter delay<br>On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:<b=
r>
&gt; Hi,<br>
&gt;<br>
&gt; I want to know the actual timestamp of TX and RX signals at the RF <br=
>
&gt; antenna. For this I have add/subtract the group delay introduced by <b=
r>
&gt; digital filters in the TX and the RX paths from the UHD timestamp. <br=
>
&gt; Through loopback test, I am able to calculate the aggregate delay, but=
 <br>
&gt; cannot know the TX delay and the RX delay separately. The UHD driver <=
br>
&gt; has APIs to get the list of filters used in the signal paths. But my <=
br>
&gt; calculated values do not match with the loopback delay I measured. <br=
>
&gt; Could someone help me with this? I am using USRPB200 set with 30.72 <b=
r>
&gt; MHz master clock rate and 1.92 MHz sampling rate.<br>
&gt;<br>
&gt; Regards!<br>
&gt;<br>
&gt;<br>
So, you use a timed transmit sequence, or you just note the time the <br>
samples left your application?=C2=A0 Latency measured through the entire<br=
>
=C2=A0 =C2=A0stack will be MUCH larger, and variable, than if measured usin=
g a <br>
timed-command transmit sequence.<br>
<br>
Quite apart from the analog delay that Nick has already mentioned, <br>
filter-delay will be &quot;shared&quot; between filters in the FPGA, and fi=
lters <br>
in the<br>
=C2=A0 =C2=A0AD9361 chip--there&#39;s a kind of &quot;shared&quot; DSP goin=
g on there.=C2=A0 The <br>
AD9361 datasheet might be a fruitful place to look at DUC/DDC filter<br>
=C2=A0 =C2=A0latencies within the chip.<br>
<br><br>
</blockquote></div></div>

--00000000000000b4a7059dc667ea--


--===============4132134766070635687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4132134766070635687==--

