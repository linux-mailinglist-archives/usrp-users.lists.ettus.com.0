Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C72A4202D
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 14:15:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89D70386312
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 08:15:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740402954; bh=NxUGWecvqT+hPai61T7j0c9umTBUrHqlMqU5nmWoSQ4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FU09biwCidm2KLdMU9t4iufR5dFkvvwW7rc72OG/N6SGIzwIW29MFU2niCTmtP8No
	 Pof8k/nOI57S2txFWqlRIYVHNS9vrLSugbJ+iaRBo+B/zJWvdKAmLCqm6paf6C6acB
	 HTqvUbHvkfp78Ja91VxYQZ7z8BCSluCe0Tz126VSory4tBBGHoYqyTQMQOgeEUrblU
	 H4KIoi6FWOTqFBExNpwePHDz72PcJvXanGP9zUeZqXlaMTUqzq97usQB5SNN3SXXYW
	 hAB52jXKNncCwSZ9jhivBA1dUJuKpsHH2QIIbt90y3OZLvjo2YaWpEi7AMtCKGzI/p
	 cOzUIIrrZm38Q==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FF8E385FFA
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 08:14:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Qsb123Oz";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5ded69e6134so7214562a12.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 05:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740402891; x=1741007691; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pHsKRlNciEZkjSH/+QTQL/dHxdCLg36yibNKR6EQTlM=;
        b=Qsb123Oz7s/VfRISsTc68Xf8K8yOkItzB7dVGFXV/B6FziFR4BRZ8qzdpxb/Y5t3tZ
         2V7KLgNUoVJFqrSOMBMsynmdf3ei0PEOszbnG3Dv9a5ekNivv8FDqhkazOWVSFSdz6pw
         KmXQfA+iticDpcFAy4hjXbmPWrjYIQVINzyJ2JFvRubq8hzHMiKTQbJW32Wb5RIS9YIC
         jHBY07szY9LEysOETyVrTqXr9DrQLms+I3YVNbi406M0NUnJK64CQJyaepSzHqr4c1zy
         lLmgIOLU/nKIZtwFTU5VC/7c/BP8UiJsHWrCDwnyIVnq3cHT+Tb1/I+B/LcOMskNmN4M
         Njmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740402891; x=1741007691;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pHsKRlNciEZkjSH/+QTQL/dHxdCLg36yibNKR6EQTlM=;
        b=LTaK0WxNUnkX8r6LpeEAQLy1egvpwlvlIxt0X8i2EyKbLEsMF19c8eBN5crYgBTukW
         NnTQxsruPgpjfFQj24gvAXp9cvvLmxJiZx/5yIWs5iLCeJuzbIexBxAQx6helLxl+mOe
         6YtfeODoPshF1qyFsRci6II+7eKueZpOwqv7PUGW/ji9aBm1Pcar1QEfK5pbAUwdaMQg
         cdZmOuERwL/3+pV1Rv4VOP/QxqFH/jPYKIG2hFZxCZAV+jzrjtx1W1ytWj1+k2CPfwce
         lHjs9sVdYcbB7TZ/1zYZq+zdVlnxKKDWUY5C0HqXHWZj8qdMlAb9om3FEdnjNbTSwP5h
         G9Yw==
X-Gm-Message-State: AOJu0YyIHUR20J31Gw5US0Ie7m4t8dBhobRFCE03SuzST/f3JXjQGfod
	sx95Ot0EMgVqmR+GdUyO1BfFoDwbAdZef8+C5sLdzOrQbEhn0OcBx04mFafCI07frSG4YJTHjEw
	TcvJa9bIBUW5iOd3diXK+a7h9G4le9cM5ERzZLUhHYbrSqZB1dtEkeg==
X-Gm-Gg: ASbGncuyXGzvqDlPXv8xlS1qnrj0svv6YD/mD3HHxm4JT3VpPmoJvaq9XPyt4JTvQ4A
	APaO6yKBVXDeJufBc57ojabm09njbl+j8skeIV8l4Fw0ZW1fM8gd4FKt2168PZTTZcLjwGBV5Yq
	8rndp8C/jOIlDnLRae0uKOU6BjAm4w+GWwQXQRLQ==
X-Google-Smtp-Source: AGHT+IGnpEhg2b1DOqgByfkt43GPXizuQ9/xeJmz0grHnXDUXGAdKeQc4EIZn17+CpAnlKn26g8dhHWfkUmFX1fMX90=
X-Received: by 2002:a05:6402:4305:b0:5db:f423:19c5 with SMTP id
 4fb4d7f45d1cf-5e0b70b5f37mr12256420a12.5.1740402890633; Mon, 24 Feb 2025
 05:14:50 -0800 (PST)
MIME-Version: 1.0
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com> <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com> <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
 <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com> <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
 <CAFOi1A6cNimH2QuNARK_Ls6bss_cWj1Mty0--WHDet69fO4xiA@mail.gmail.com> <5503a163d7cf84d2043aa19a5d1e3c6b@atindriya.co.in>
In-Reply-To: <5503a163d7cf84d2043aa19a5d1e3c6b@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 24 Feb 2025 14:14:38 +0100
X-Gm-Features: AWEUYZlu4i2pAaBn1UXVWbfbfmj_Y4W7XZd7vHvKoNXjeaDpkC-zUmyzVjxa9ko
Message-ID: <CAFOi1A41-FWe+NdLk4JVHgNScKgsEx-9qo5sc-MqTZWLCTqAgw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: NL6CFGJQA2G3P7F4GW2S25R6VNXLPP5Y
X-Message-ID-Hash: NL6CFGJQA2G3P7F4GW2S25R6VNXLPP5Y
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NL6CFGJQA2G3P7F4GW2S25R6VNXLPP5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8472735116475586040=="

--===============8472735116475586040==
Content-Type: multipart/alternative; boundary="000000000000101408062ee320ac"

--000000000000101408062ee320ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Assuming t_high is a uhd::time_spec_t that marks the start time of your
HIGH state, simply do

auto t_low =3D t_high + 1e-6;

and then use t_low for your second timed command:

usrp->set_command_time(t_high);
usrp->set_gpio_attr(/* set your pin high */);
usrp->set_command_time(t_low);
usrp->set_gpio_attr(/* set your pin low */);

--M


On Mon, Feb 24, 2025 at 9:45=E2=80=AFAM <kavinraj@atindriya.co.in> wrote:

> Hi,
>    What is the minimum time to toggle the GPIO pin?
>    I want to make the GPIO pin high for 1microsecond and low for
> 1milliseconds. How i achieve this through code?
>
>
> Thanks.
>
>
>
> On 2025-02-24 01:57, Martin Braun wrote:
> > You don't specify a delay, you send one timed command to make the pin
> > go HIGH, and another timed command to make it go LOW. And the two
> > command-times should be "your delay" apart.
> >
> > This may help:
> >
> https://www.youtube.com/watch?v=3DppD06ZETnek&t=3D75s&pp=3DygUPZ3Jjb24gdX=
NycCBncGlv
> >
> > --M
> >
> > On Sat, Feb 22, 2025 at 12:12=E2=80=AFPM <kavinraj@atindriya.co.in> wro=
te:
> >
> >> Hi,
> >> How to give the delay in
> >> uhd_usrp_set_command_time(uhd_usrp_handle
> >> h,int64_t full_secs,double frac_secs,size_t mboard) function?
> >>
> >> On 2025-02-22 00:10, Marcus D. Leech wrote:
> >>> On 21/02/2025 23:56, kavinraj@atindriya.co.in wrote:
> >>>> Hi,
> >>>> Can I use usleep(1) or any other technique is there for GPIO .
> >>>>
> >>> You might be able to use timed commands:
> >>>
> >>>
> >>
> > https://files.ettus.com/manual/page_timedcmds.html#timedcmds_gen_cmds
> >>>
> >>> But since usleep() cannot guarantee any kind of maximum period
> >> that
> >>> your process will go to sleep, it is an unreliable
> >>> method when precision and repeatable timing of ANY kind of
> >> "doing
> >>> stuff with external hardware" is required.  Even if
> >>> usleep() at microsecond-scale intervals *WAS* reliable and
> >>> repeatable, there's no guarantee about all the *other* things
> >>> that are required to launch a command over a
> >> latency-not-guaranteed
> >>> bus to the external hardware, including kernel-layer
> >>> USB drivers, etc, etc.
> >>>
> >>>
> >>>>
> >>>> On 2025-02-21 23:37, Marcus D. Leech wrote:
> >>>>> On 21/02/2025 23:22, kavinraj@atindriya.co.in wrote:
> >>>>>> Hi,
> >>>>>> Thanks for answering.
> >>>>>> Can you explain me clearly?
> >>>>>>
> >>>>>> Thanks.
> >>>>> I'd suggest, at a minimum, looking at the MAN page for usleep().
> >>>>>
> >>>>>
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> On 2025-02-21 23:11, Marcus D. Leech wrote:
> >>>>>>> On 21/02/2025 23:05, kavinraj@atindriya.co.in wrote:
> >>>>>>>> Hi,
> >>>>>>>> In USRP B205mini-i I am able to access the GPIO Pin. I
> >> have to
> >>>>>>>> create a Pulse in the GPIO pin. I want to make high the gpio
> >> pin
> >>>>>>>> for 1microsecond and low for 999microseconds. How to achieve
> >> this
> >>>>>>>> timings through coding. Can you give me the solution for
> >> this?
> >>>>>>>>
> >>>>>>>> In coding after making high I am giving usleep(1) function
> >> but
> >>>>>>>> when I am check in the oscilloscope it is showing
> >> 64microseconds.
> >>>>>>>> How?
> >>>>>>>>
> >>>>>>>>
> >>>>>>> Because an application-land program executing on an ordinary
> >>>>>>> general-purpose operating system is unlikely to be able to
> >>>>>>> achieve repeatable, 1usec-scale timing.  This has nothing to
> >> do,
> >>>>>>> per se, with UHD or USRPs, but rather, to understanding
> >>>>>>> how applications execute in a general-purpose operating
> >> system
> >>>>>>> that isn't ruthlessly optimized for "hard" real-time tasks.
> >>>>>>>
> >>>>>>>
> >>>>>>> _______________________________________________
> >>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>>>> To unsubscribe send an email to
> >> usrp-users-leave@lists.ettus.com
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000101408062ee320ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Assuming t_high is a uhd::time_spec_t =
that marks the start time of your HIGH state, simply do</div><div><br></div=
><div>auto t_low =3D t_high + 1e-6;</div><div><br></div><div>and then use t=
_low for your second timed command:</div><div><br></div><div>usrp-&gt;set_c=
ommand_time(t_high);</div><div>usrp-&gt;set_gpio_attr(/* set your pin high =
*/);</div><div>usrp-&gt;set_command_time(t_low);</div><div>
<div>usrp-&gt;set_gpio_attr(/* set your pin low */);</div><div><br></div><d=
iv>--M</div><div></div>

</div><div><br></div></div><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2025 at 9:45=E2=
=80=AFAM &lt;<a href=3D"mailto:kavinraj@atindriya.co.in">kavinraj@atindriya=
.co.in</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Hi,<br>
=C2=A0 =C2=A0What is the minimum time to toggle the GPIO pin?<br>
=C2=A0 =C2=A0I want to make the GPIO pin high for 1microsecond and low for =
<br>
1milliseconds. How i achieve this through code?<br>
<br>
<br>
Thanks.<br>
<br>
<br>
<br>
On 2025-02-24 01:57, Martin Braun wrote:<br>
&gt; You don&#39;t specify a delay, you send one timed command to make the =
pin<br>
&gt; go HIGH, and another timed command to make it go LOW. And the two<br>
&gt; command-times should be &quot;your delay&quot; apart.<br>
&gt; <br>
&gt; This may help:<br>
&gt; <a href=3D"https://www.youtube.com/watch?v=3DppD06ZETnek&amp;t=3D75s&a=
mp;pp=3DygUPZ3Jjb24gdXNycCBncGlv" rel=3D"noreferrer" target=3D"_blank">http=
s://www.youtube.com/watch?v=3DppD06ZETnek&amp;t=3D75s&amp;pp=3DygUPZ3Jjb24g=
dXNycCBncGlv</a><br>
&gt; <br>
&gt; --M<br>
&gt; <br>
&gt; On Sat, Feb 22, 2025 at 12:12=E2=80=AFPM &lt;<a href=3D"mailto:kavinra=
j@atindriya.co.in" target=3D"_blank">kavinraj@atindriya.co.in</a>&gt; wrote=
:<br>
&gt; <br>
&gt;&gt; Hi,<br>
&gt;&gt; How to give the delay in<br>
&gt;&gt; uhd_usrp_set_command_time(uhd_usrp_handle<br>
&gt;&gt; h,int64_t full_secs,double frac_secs,size_t mboard) function?<br>
&gt;&gt; <br>
&gt;&gt; On 2025-02-22 00:10, Marcus D. Leech wrote:<br>
&gt;&gt;&gt; On 21/02/2025 23:56, <a href=3D"mailto:kavinraj@atindriya.co.i=
n" target=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt; Can I use usleep(1) or any other technique is there for GP=
IO .<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt; You might be able to use timed commands:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt; <br>
&gt; <a href=3D"https://files.ettus.com/manual/page_timedcmds.html#timedcmd=
s_gen_cmds" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/ma=
nual/page_timedcmds.html#timedcmds_gen_cmds</a><br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; But since usleep() cannot guarantee any kind of maximum period=
<br>
&gt;&gt; that<br>
&gt;&gt;&gt; your process will go to sleep, it is an unreliable<br>
&gt;&gt;&gt; method when precision and repeatable timing of ANY kind of<br>
&gt;&gt; &quot;doing<br>
&gt;&gt;&gt; stuff with external hardware&quot; is required.=C2=A0 Even if<=
br>
&gt;&gt;&gt; usleep() at microsecond-scale intervals *WAS* reliable and<br>
&gt;&gt;&gt; repeatable, there&#39;s no guarantee about all the *other* thi=
ngs<br>
&gt;&gt;&gt; that are required to launch a command over a<br>
&gt;&gt; latency-not-guaranteed<br>
&gt;&gt;&gt; bus to the external hardware, including kernel-layer<br>
&gt;&gt;&gt; USB drivers, etc, etc.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; On 2025-02-21 23:37, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt; On 21/02/2025 23:22, <a href=3D"mailto:kavinraj@atindr=
iya.co.in" target=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Thanks for answering.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Can you explain me clearly?<br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; Thanks.<br>
&gt;&gt;&gt;&gt;&gt; I&#39;d suggest, at a minimum, looking at the MAN page=
 for usleep().<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; On 2025-02-21 23:11, Marcus D. Leech wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 21/02/2025 23:05, <a href=3D"mailto:kavinra=
j@atindriya.co.in" target=3D"_blank">kavinraj@atindriya.co.in</a> wrote:<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In USRP B205mini-i I am able to access the=
 GPIO Pin. I<br>
&gt;&gt; have to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; create a Pulse in the GPIO pin. I want to =
make high the gpio<br>
&gt;&gt; pin<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for 1microsecond and low for 999microsecon=
ds. How to achieve<br>
&gt;&gt; this<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; timings through coding. Can you give me th=
e solution for<br>
&gt;&gt; this?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In coding after making high I am giving us=
leep(1) function<br>
&gt;&gt; but<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; when I am check in the oscilloscope it is =
showing<br>
&gt;&gt; 64microseconds.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; How?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Because an application-land program executing =
on an ordinary<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; general-purpose operating system is unlikely t=
o be able to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; achieve repeatable, 1usec-scale timing.=C2=A0 =
This has nothing to<br>
&gt;&gt; do,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; per se, with UHD or USRPs, but rather, to unde=
rstanding<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; how applications execute in a general-purpose =
operating<br>
&gt;&gt; system<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; that isn&#39;t ruthlessly optimized for &quot;=
hard&quot; real-time tasks.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________________________=
_<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to<br>
&gt;&gt; <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bla=
nk">usrp-users-leave@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettu=
s.com</a><br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000101408062ee320ac--

--===============8472735116475586040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8472735116475586040==--
