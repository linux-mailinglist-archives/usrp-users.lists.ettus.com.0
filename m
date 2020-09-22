Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F9274AF7
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 23:15:09 +0200 (CEST)
Received: from [::1] (port=59594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKpcy-0006wK-62; Tue, 22 Sep 2020 17:15:08 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:39006)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kKpcu-0006pD-Ik
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 17:15:04 -0400
Received: by mail-lf1-f44.google.com with SMTP id q8so19615578lfb.6
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 14:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=4oE5ufejhsCUSJpQDqnSykBgi6mfE6dHBJmww8XoMac=;
 b=S+iZ5QSIlglS7075QL2OUvpjjKCrUePpepXY47VxPS7txDnjA6x/Rss7PqonTtOyn0
 3RXdqj6OUS4xaU8k5GmjdD+ZgMuti8txkIA9O3iwy4FR+1DXexj+fhw5tCNktwjO4/xu
 t3MK1nPdHRtCq9qXTfzVYYVhDtDeXvKylriTyB7vG/93lm7Xwbxds0RrNwM1fzK+ijNS
 fNtaQio0mhjR2z7cik2JrJcmmBIfdHpteY3EaQNGxIOrFKyxTIcs90flMoKlnGu5pbtv
 rNxxkS1L1+aaEN9HNF8i8b+hkeRw2MxJXb5w1hWnL9JIJXfXk4Cg041HU9v7cRCKSQQT
 AZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=4oE5ufejhsCUSJpQDqnSykBgi6mfE6dHBJmww8XoMac=;
 b=itP86DTM9LMunRJAFKXGV0/2f00F6eEDRxumeI4dO0kFw+0zxA1H+TSLXck1HhNW+b
 tk9a4xe0rvQu4HFvAhHE2n7BvjVWtTDFaGzc1FEFLcYxTRxkNvnyZsQPoGjyOMPvt/Vz
 sbDjBr2auwmzyYZjMdPkftDtsjXDH71AE6c+tbkTab0xH5EK3QUmJpay3h+L8l/4A+Fv
 lwbgTWQSAMSBt5JStlqVs8ApCExf5i9+XrjJ3f2jGNxedgZRmVGZuGyrbhOhk3xnz9zH
 M9Q3cW5I1xSW8XrIMjZG42iommjrzP3VCus7sn5E78GWd5UBT7J4j3wGCe5mMCldJu+u
 vo1A==
X-Gm-Message-State: AOAM531BfFr787oeUIGnzb8OE+xVEtiZIHOjlzsAqDRMcTqoLTHilanJ
 5JLtqKWoEwG2dJySYz7DeLuL0aIFcp/WLs1ry/lrSQ==
X-Google-Smtp-Source: ABdhPJzePamjlYiUzOxmdTx+I7mJu6xrg1UNVjPWUsw33chFeV3mbzyMhz7ZRXg7QPLW+dgp78asf69zn7VwQ3LOn/4=
X-Received: by 2002:ac2:5299:: with SMTP id q25mr2135446lfm.198.1600809263167; 
 Tue, 22 Sep 2020 14:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
 <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
 <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
 <5F6A6701.6030604@gmail.com>
In-Reply-To: <5F6A6701.6030604@gmail.com>
Date: Tue, 22 Sep 2020 15:14:11 -0600
Message-ID: <CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============7114873479007224851=="
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

--===============7114873479007224851==
Content-Type: multipart/alternative; boundary="0000000000007c153305afed739a"

--0000000000007c153305afed739a
Content-Type: text/plain; charset="UTF-8"

Sorry about that, I should have mentioned that first.

Okay, so it seems like there is a lower limit on frequency resolution. I
saw some of the device arguments make it possible to bypass the DDC and the
DUC - would that buy me any resolution?

-Chris


On Tue, Sep 22, 2020 at 3:05 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/22/2020 04:41 PM, Christopher Flood wrote:
> > I agree with you there. I'm using a Rb external reference that I
> > believe the PLLs are locking to based on some signal transmission
> > tests and looking at signals on an oscilloscope. With the Rb ref I
> > would expect the frequency to be off by ~.001Hz (or smaller) out of
> > 10MHz.
> >
> > Some more details about the test I'm currently running, if that helps:
> > I am putting the 10MHz Rb ref into the external ref of the N310. I am
> > then generating a 10MHz signal on the TX port of the SDR and feeding
> > it right back into an RX port. Both the UHD Source and UHD Sink in GNU
> > radio are being told to use the external clock reference. I know 10MHz
> > is towards the low end of this device's capability, so I tried the
> > same test with 20 / 30 / 40MHz and got similar results.
> >
> > -Chris
> Ah.  Knowing you were using an external Rb reference would have steered
> me in a different direction.
>
> You're probably looking at residual resolution of the complex phase
> rotator in the DDC/DUC logic in the DSP portions of the FPGA.
>
> The resolution of the AD9371 synthesizers is fairly coarse as I
> recall--in the kHz range (which is typical for synthesizers intended for
>    deployment in telecom applicatons).
>
> The DDC and DUC logic in the FPGA likely has a sub-Hz resolution--the
> number 0.38Hz sticks in my head but that was from an evaluation of
>    the Gen 2 USRP FPGA from a number of years ago.  So you're probably
> looking at the aggregate error from the DDC and DUC combined.
>
>

--0000000000007c153305afed739a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Sorry about that, I should have mentioned=
 that first.=C2=A0<div><br></div><div>Okay, so it seems like there is a low=
er limit on frequency resolution. I saw some of the device arguments make i=
t possible to bypass the DDC and the DUC - would that buy me any resolution=
?=C2=A0</div><div><br></div><div>-Chris</div><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 22,=
 2020 at 3:05 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On 09/22/2020 04:41 PM, Christopher Flood wrote=
:<br>
&gt; I agree with you there. I&#39;m using a Rb external reference that I <=
br>
&gt; believe the PLLs are locking to based on some signal transmission <br>
&gt; tests and looking at signals on an oscilloscope. With the Rb ref I <br=
>
&gt; would expect the frequency to be off by ~.001Hz (or smaller) out of <b=
r>
&gt; 10MHz.<br>
&gt;<br>
&gt; Some more details about the test I&#39;m currently running, if that he=
lps: <br>
&gt; I am putting the 10MHz Rb ref into the external ref of the N310. I am =
<br>
&gt; then generating a 10MHz signal on the TX port of the SDR and feeding <=
br>
&gt; it right back into an RX port. Both the UHD Source and UHD Sink in GNU=
 <br>
&gt; radio are being told to use the external clock reference. I know 10MHz=
 <br>
&gt; is towards the low end of this device&#39;s capability, so I tried the=
 <br>
&gt; same test with 20 / 30 / 40MHz and got similar results.<br>
&gt;<br>
&gt; -Chris<br>
Ah.=C2=A0 Knowing you were using an external Rb reference would have steere=
d <br>
me in a different direction.<br>
<br>
You&#39;re probably looking at residual resolution of the complex phase <br=
>
rotator in the DDC/DUC logic in the DSP portions of the FPGA.<br>
<br>
The resolution of the AD9371 synthesizers is fairly coarse as I <br>
recall--in the kHz range (which is typical for synthesizers intended for<br=
>
=C2=A0 =C2=A0deployment in telecom applicatons).<br>
<br>
The DDC and DUC logic in the FPGA likely has a sub-Hz resolution--the <br>
number 0.38Hz sticks in my head but that was from an evaluation of<br>
=C2=A0 =C2=A0the Gen 2 USRP FPGA from a number of years ago.=C2=A0 So you&#=
39;re probably <br>
looking at the aggregate error from the DDC and DUC combined.<br>
<br>
</blockquote></div></div>

--0000000000007c153305afed739a--


--===============7114873479007224851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7114873479007224851==--

