Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5FB48F276
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 23:31:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF54F385C3F
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:31:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fnEqQfgt";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 160E6385894
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 17:30:42 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id c10so27773040ybb.2
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 14:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Abbov25kOiS40AgddHEEGqevKPCwk9K6AcTfpICK/TU=;
        b=fnEqQfgtbi+e8/8OgnjMmUzQQECD8CisgOhkWsiRo5E3tMVlKlj4RgXLLpxCh1Jtk2
         uYli18vyAihON7lAeSY/ADnSABziIq46IvdnQFJsGLRRK7PdC9UzO7AJtn5T3aQ2QAvA
         E1NPYhKUP6mC6d0R1JGTMXD0f/Ou9+jlP3AsstEO82TfhtWBCZs9n9XYbomKUafjqsn9
         jTCDkXw45HNIEgfw4kGW20jWiLoRoJJcdpeKAxObxObkkZG422Cau1nx/60/q/LsLLfM
         OFJDITnBZIP/q4GGMzp03dtD0H+6/yq407RKLTJ4kgeRcVWT3oxn15S6dtt6ZTTmwI9o
         QdZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Abbov25kOiS40AgddHEEGqevKPCwk9K6AcTfpICK/TU=;
        b=2kTpjh5O1abMYNfm/I0z1d1Sh5Kr2bb/BgMpmXkGYyou1VvYy3HtW0BNm5sJlqlOV/
         Gy7c/+qheOWP2w2Sr1Xz8os6NlZ4l8D69JuFOQarw4OtKrszPto3L7jde249vFyufcDj
         jlhila6Kg3XmRbJfHn39orsE4z3v0JaMDjyYyog5nfZ6qJ2b1kNTudVV7wY6bUyT7ciU
         HxboBCoJ7EO+WbbE+UV2D78VZkD6NSJGT/tVcGDPgIw1Cw+un/FjgPktgncZdtOPi0zG
         0yon+U3qadC7PYCVjrAp35LNOQvj/DuIoXlhDpuU0xqHPGe3gyiXyu54nJi8SQIg2wbB
         KaAQ==
X-Gm-Message-State: AOAM5311d5o70r9oftZsgVvEdOwiz0eLVmjhuayxQUum6MEc8PAuCoY7
	IQekj1XvW8/PAT00qH8/ASJDx90OF79eaeG2dcbDaOoVJ7o=
X-Google-Smtp-Source: ABdhPJzwEk1/i8Y5rR95r7vr5IB4n4FB87iLlDCWcwGyFtTLY+2uzkMozF+Tu+3UOp0vClgbVyMuQ6eYVKSj4LJAhiE=
X-Received: by 2002:a25:c403:: with SMTP id u3mr15126670ybf.389.1642199442025;
 Fri, 14 Jan 2022 14:30:42 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CACwKM9JZU0UYDraek9LKFKTBvBuoCKKC=-xWvUkH-Jn3yOvz-Q@mail.gmail.com>
 <6972c87a-2795-bc01-a8b1-80b313e96a54@gmail.com> <CACwKM9L97NuK4RM_t56Wiu3tGOKzF+x5h35ebzFc_5=c6xVatw@mail.gmail.com>
In-Reply-To: <CACwKM9L97NuK4RM_t56Wiu3tGOKzF+x5h35ebzFc_5=c6xVatw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 14 Jan 2022 17:30:31 -0500
Message-ID: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: 5R2KMO4LF4DTUQYTLZ42OHYKEXYGLVCS
X-Message-ID-Hash: 5R2KMO4LF4DTUQYTLZ42OHYKEXYGLVCS
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5R2KMO4LF4DTUQYTLZ42OHYKEXYGLVCS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6899235860915197455=="

--===============6899235860915197455==
Content-Type: multipart/alternative; boundary="00000000000064c86205d5925a1a"

--00000000000064c86205d5925a1a
Content-Type: text/plain; charset="UTF-8"

Just 1x, I believe.

On Fri, Jan 14, 2022 at 5:27 PM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> doing it now. is the LO frequency the carrier freq or is it 1/2 or 2x?
>
> On Fri, Jan 14, 2022 at 5:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-01-14 17:00, Paul Atreides wrote:
>> > That's what I had originally.
>> > i've Changed back to this and still getting no LED on the TX LO OUT0:
>> > RF0
>> > LO Source internal
>> > LO export True
>> > RF1
>> > LO Source external
>> > LO export False
>> >
>> > the generated flowgraph code looks to be reflecting  is:
>> >         self.uhd_usrp_sink_0.set_clock_source('external', 0)
>> >         self.uhd_usrp_sink_0.set_time_source('external', 0)
>> >         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>> > self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))
>> >
>> >         self.uhd_usrp_sink_0.set_center_freq(freq, 0)
>> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
>> >         self.uhd_usrp_sink_0.set_gain(gain_0, 0)
>> >
>> >         self.uhd_usrp_sink_0.set_lo_source('internal', uhd.ALL_LOS, 0)
>> >         self.uhd_usrp_sink_0.set_lo_export_enabled(True, uhd.ALL_LOS, 0)
>> >         self.uhd_usrp_sink_0.set_center_freq(freq, 1)
>> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
>> >         self.uhd_usrp_sink_0.set_gain(gain_1, 1)
>> >
>> >         self.uhd_usrp_sink_0.set_lo_source('external', uhd.ALL_LOS, 1)
>> >         self.uhd_usrp_sink_0.set_lo_export_enabled(False, uhd.ALL_LOS,
>> 1)
>> >
>>
>> I wonder if this is just a case of the LO export LED code isn't there in
>> that version of UHD?
>>
>> Can you confirm presence of the LO signal with a spectrum analyser or
>> similar?
>>
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064c86205d5925a1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just 1x, I believe.</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 14, 2022 at 5:27 PM Paul At=
reides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">doing it now. is the LO frequency the carrier freq or is i=
t 1/2 or 2x?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jan 14, 2022 at 5:03 PM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 2022-01-14 17:00, Paul Atreides wrote:<br>
&gt; That&#39;s what I had originally.<br>
&gt; i&#39;ve Changed back to this and still getting no LED on the TX LO OU=
T0:<br>
&gt; RF0<br>
&gt; LO Source internal<br>
&gt; LO export True<br>
&gt; RF1<br>
&gt; LO Source external<br>
&gt; LO export False<br>
&gt;<br>
&gt; the generated flowgraph code looks to be reflecting=C2=A0 is:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0.set_cl=
ock_source(&#39;external&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_time_source(&#39;=
external&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(samp_ra=
te)<br>
&gt; self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq,=
 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(gain_0, 0)<b=
r>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_source(&#39;in=
ternal&#39;, uhd.ALL_LOS, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_export_enabled=
(True, uhd.ALL_LOS, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq,=
 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(gain_1, 1)<b=
r>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_source(&#39;ex=
ternal&#39;, uhd.ALL_LOS, 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_export_enabled=
(False, uhd.ALL_LOS, 1)<br>
&gt;<br>
<br>
I wonder if this is just a case of the LO export LED code isn&#39;t there i=
n <br>
that version of UHD?<br>
<br>
Can you confirm presence of the LO signal with a spectrum analyser or <br>
similar?<br>
<br>
<br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000064c86205d5925a1a--

--===============6899235860915197455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6899235860915197455==--
