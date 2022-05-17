Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C223529AAB
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 09:19:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 255C73851E9
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 03:19:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652771964; bh=N4dDkD3ynrF4XfrmeTp547GU8k0+kmLrJyD6US5QArI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RPLUH0VeMlrTGujs8OpJG8TlhDtZ793tq8+yXxZKKwIAPG6LF4yTMnj5y2EjXTVW3
	 0TrrbDP3rn9IS4rb9EE6mMip/eY74nB5e/dvGUCRNH2r6fPF4lgXh4ZCQjbZpTKueD
	 si7LKPdAns2MregFTL6FMnNSheSFt/6+SF0eO7VhfP3EkOUEk4VGfi97OMiL8nlak9
	 1UqkpzLGa9R5R7XthdBQg29M+q9RpvQr2Q/id8KW+uYhzsaLNitREC3tv6ubzq6pXn
	 M9oxi3o4SlUYdERGVUcQSpuOE3U4UUcrlKDM6/oalOH0hb0IZRzXQYltTwcrskD/WC
	 zU4S79ssqMoNA==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mm2.emwd.com (Postfix) with ESMTPS id 226B8384703
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 03:18:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="cSG38TxF";
	dkim-atps=neutral
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-2fedfd0f5b2so54589727b3.16
        for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 00:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/OoriEep5Fq2PKceREOmaIzATmBJJcLndOm6mNmaznk=;
        b=cSG38TxFaqB7s/hM+zZbB+VkuETKezX4e8DM0/cU5nbs5H2K3zurKeS+92PIRf9F/r
         fefKuFWRaqs/E5G+nqR4moVHbj9DP2sLw2l0aKNHQN9o/6zZxcpDZ+zIT6NMBTtMky+P
         +MRtelMw4Ih9shLKxoNzbUXpQ8pCXB61hSQz3Ton9gZ2z0a1lmesd+Fqas+xAhHNJNx6
         uFKEymDiGGv2u7C4LVsxyT3PDPaSILgrIWr5kY7xLmh6WFim0/83ZNthLdf3wh7wtdR8
         2mRXrsK7WI3P+J/0jyEkdjLBuhhZITmGlx2RCOBF3sDHhbXQt3EZhB1QPU5t7ygJtUHi
         Xbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/OoriEep5Fq2PKceREOmaIzATmBJJcLndOm6mNmaznk=;
        b=JLaBJKNhB6TwItods63pusVewoaPyvMYgew1zN8xDXQUzCfgOi9ZWvtGT8aHTO4Jwo
         VYS57wc9D8BO40coT1eflMmA9bKe6PdjxEFhQ2xpzPBCdGg32yaTz2xa7bcznuIb1Uwb
         BKGMk2+yW++wKDhCPsZAiohifS17hyICqcF2sjraUnOZgpYwEQhpMmzdhWCeidJOUxDi
         JummLcZH9QCNySiEG/mSm8i2suycXSLK3Y/M+UsmOh9wmFPjcnT1BULsXfRj/8e2DfJl
         sv+hjy/+krB09UO/xdrRAPRaCWslp+01DBGW4BoCKy05IApBp5+pNuvSX9lgZV5j97cg
         7nYw==
X-Gm-Message-State: AOAM531Vxm78KOiWzfcptEmm7LxkZVlaZaPuyzKHv6gH/iRcCONWTTi/
	ddUSNKvce0wPsa2393df7ITFQfmUCh7XdCQbt3FU2A==
X-Google-Smtp-Source: ABdhPJwIfV+XSWwfWqKNcBDECHsLZijbBLk3HmInmwm7DylIaI9d+GCyl2mMfKWL7z0LaiUixbfoQ/fjw5QPGTb3xB0=
X-Received: by 2002:a25:9c08:0:b0:64b:c9f8:de84 with SMTP id
 c8-20020a259c08000000b0064bc9f8de84mr17084810ybo.391.1652771904445; Tue, 17
 May 2022 00:18:24 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
 <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com> <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
In-Reply-To: <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Tue, 17 May 2022 16:17:49 +0900
Message-ID: <CABfZwceubKxP72yUJSUsaWW1E+-fEAwpH+baR=WLNuQBQkLaLQ@mail.gmail.com>
To: Haydn Nelson <haydn.nelson@ni.com>
Message-ID-Hash: BS7W2Q2S5SMBHDIBCRFOCFGVHJ5NMBIU
X-Message-ID-Hash: BS7W2Q2S5SMBHDIBCRFOCFGVHJ5NMBIU
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Marian Koop <marian.koop@ni.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BS7W2Q2S5SMBHDIBCRFOCFGVHJ5NMBIU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2382317167426867659=="

--===============2382317167426867659==
Content-Type: multipart/alternative; boundary="000000000000426dc305df2ff246"

--000000000000426dc305df2ff246
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus, Haydn.
The Rader EW testbed(N31x) looks good for our project. I will consider it.
I expect the next version X410 does support phase-coherent and
phase-aligned.
Regards,


2022=E5=B9=B45=E6=9C=8816=E6=97=A5(=E6=9C=88) 23:26 Haydn Nelson <haydn.nel=
son@ni.com>:

> In order to get Phase alignment in a normal fashion, circuitry has to be
> in place to share the Local oscillator on the RF up and down convert chai=
n.
> The X410 is able to use a common 10MHz reference for all ADC/DACs which
> would also be required for a truly phase coherent application.
> The USRP X410 doesn't have that LO sharing capability built in, The USRP
> N320 & USRP N321 was built with this circuitry by default.
>
> Depending on the performance you need we actually built a full
> multi-channel phase coherent reference architecture on the USRP N320/N321=
,
> you can learn more about that here.
>
> https://www.ni.com/en-us/solutions/aerospace-defense/radar-electronic-war=
fare-sigint/radar-ew-research-prototyping/build-radar-ew-testbeds.html
>
> Back to your X410 question, I believe there is a way to lock each channel
> on the X410 to the 10MHZ frequency reference such that there is no
> frequency difference channel to channel on the LO.
> However, that doesn't guarantee a fixed phase difference channel to
> channel on each initialization, I believe the SDR Product Engineering tea=
m
> was looking at ways to mitigate that uncertainty through a shared digital
> reset, I've forwarded this question to our product management team to
> respond with more details into that research project, which is what I was
> referring to on the notes you found on Ettus.com =F0=9F=98=8A
>
> With that said, if you are looking for more than 4 channels (IE more than
> 1x X410 radio) that might get difficult but we can have that conversation
> to see what is possible, the USRP N320/N321 is the recommended radio
> currently for such system configurations currently.
>
> Hopefully that helps.
>
> Haydn Nelson
> Principal Solutions Marketing Manager
> Wireless/Radar/EW & EOIR Test Solutions
> Aerospace and Defense
> +1-512-731-7251 |  ni.com
>
>
> -----Original Message-----
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Monday, May 16, 2022 9:11 AM
> To: usrp-users@lists.ettus.com
> Subject: [EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned and
> phase-corent?
>
> On 2022-05-16 04:17, Mikio Fukushima wrote:
> > Hi all,
> > I'm considering to purchase a USRP X410 for one of research projects.
> > the objective of this project is MIMO operation, I have some questions.
> >
> > Q1.
> > Does each channel on X410 support phase-aligned and phase-corent
> > operation?
> It isn't meaningful to consider phase-coherence and phase-alignment on a
> single channel. The phase-coherence and alignment is always with respect =
to
> other channels.
>
> >
> > Q2.
> > Does each channel on multi X410s support phase-aligned and
> > phase-corent operation?
> >
> > Q3.
> > What is "Limited performance"?
> >
> > [3] Limited performance four-channel phase-coherent operation within a
> > single radio is under investigation
> I'm not sure what "limited performance" means, nor what the schedule for
> that is, but I know that in  initial release, the X410 does NOT support
>    mutual phase-coherence even within a single radio.
>
>
> >
> >
> https://urldefense.com/v3/__https://www.ettus.com/all-products/usrp-x410/=
__;!!FbZ0ZwI3Qg!qK9xBuKBWusDewCqTkeFl1SjAew_36nFIxqesMafqOGheMElwp5DK15Ie-T=
LiYI6NBKQgznYDfh0DZ1WtHDYug$
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> INTERNAL - NI CONFIDENTIAL
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
2021/09/27=E3=81=8B=E3=82=89=E6=96=B0=E4=BA=8B=E5=8B=99=E6=89=80=E3=81=AB=
=E7=A7=BB=E8=BB=A2=E3=81=97=E3=81=BE=E3=81=97=E3=81=9F=EF=BC=81
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--000000000000426dc305df2ff246
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus, Haydn.<br>The Rader EW testbed(N31x) looks=
 good for our project. I will consider it.<br>I expect the next version X41=
0 does support phase-coherent and phase-aligned.<br>Regards,<br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">2022=E5=B9=B45=E6=9C=8816=E6=97=A5(=E6=9C=88) 23:26 Haydn Nelson =
&lt;<a href=3D"mailto:haydn.nelson@ni.com">haydn.nelson@ni.com</a>&gt;:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">In order to get Pha=
se alignment in a normal fashion, circuitry has to be in place to share the=
 Local oscillator on the RF up and down convert chain.<br>
The X410 is able to use a common 10MHz reference for all ADC/DACs which wou=
ld also be required for a truly phase coherent application.<br>
The USRP X410 doesn&#39;t have that LO sharing capability built in, The USR=
P N320 &amp; USRP N321 was built with this circuitry by default.<br>
<br>
Depending on the performance you need we actually built a full multi-channe=
l phase coherent reference architecture on the USRP N320/N321, you can lear=
n more about that here.<br>
<a href=3D"https://www.ni.com/en-us/solutions/aerospace-defense/radar-elect=
ronic-warfare-sigint/radar-ew-research-prototyping/build-radar-ew-testbeds.=
html" rel=3D"noreferrer" target=3D"_blank">https://www.ni.com/en-us/solutio=
ns/aerospace-defense/radar-electronic-warfare-sigint/radar-ew-research-prot=
otyping/build-radar-ew-testbeds.html</a><br>
<br>
Back to your X410 question, I believe there is a way to lock each channel o=
n the X410 to the 10MHZ frequency reference such that there is no frequency=
 difference channel to channel on the LO.<br>
However, that doesn&#39;t guarantee a fixed phase difference channel to cha=
nnel on each initialization, I believe the SDR Product Engineering team was=
 looking at ways to mitigate that uncertainty through a shared digital rese=
t, I&#39;ve forwarded this question to our product management team to respo=
nd with more details into that research project, which is what I was referr=
ing to on the notes you found on Ettus.com =F0=9F=98=8A<br>
<br>
With that said, if you are looking for more than 4 channels (IE more than 1=
x X410 radio) that might get difficult but we can have that conversation to=
 see what is possible, the USRP N320/N321 is the recommended radio currentl=
y for such system configurations currently.<br>
<br>
Hopefully that helps.<br>
<br>
Haydn Nelson<br>
Principal Solutions Marketing Manager<br>
Wireless/Radar/EW &amp; EOIR Test Solutions<br>
Aerospace and Defense<br>
+1-512-731-7251 |=C2=A0 <a href=3D"http://ni.com" rel=3D"noreferrer" target=
=3D"_blank">ni.com</a><br>
<br>
<br>
-----Original Message-----<br>
From: Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
Sent: Monday, May 16, 2022 9:11 AM<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [EXTERNAL] [USRP-users] Re: Does X410 support phase-aligned and ph=
ase-corent?<br>
<br>
On 2022-05-16 04:17, Mikio Fukushima wrote:<br>
&gt; Hi all,<br>
&gt; I&#39;m considering to purchase a USRP X410 for one of research projec=
ts.<br>
&gt; the objective of this project is MIMO operation, I have some questions=
.<br>
&gt;<br>
&gt; Q1.<br>
&gt; Does each channel on X410 support phase-aligned and phase-corent<br>
&gt; operation?<br>
It isn&#39;t meaningful to consider phase-coherence and phase-alignment on =
a single channel. The phase-coherence and alignment is always with respect =
to other channels.<br>
<br>
&gt;<br>
&gt; Q2.<br>
&gt; Does each channel on multi X410s support phase-aligned and<br>
&gt; phase-corent operation?<br>
&gt;<br>
&gt; Q3.<br>
&gt; What is &quot;Limited performance&quot;?<br>
&gt;<br>
&gt; [3] Limited performance four-channel phase-coherent operation within a=
<br>
&gt; single radio is under investigation<br>
I&#39;m not sure what &quot;limited performance&quot; means, nor what the s=
chedule for<br>
that is, but I know that in=C2=A0 initial release, the X410 does NOT suppor=
t<br>
=C2=A0 =C2=A0mutual phase-coherence even within a single radio.<br>
<br>
<br>
&gt;<br>
&gt; <a href=3D"https://urldefense.com/v3/__https://www.ettus.com/all-produ=
cts/usrp-x410/__;!!FbZ0ZwI3Qg!qK9xBuKBWusDewCqTkeFl1SjAew_36nFIxqesMafqOGhe=
MElwp5DK15Ie-TLiYI6NBKQgznYDfh0DZ1WtHDYug$" rel=3D"noreferrer" target=3D"_b=
lank">https://urldefense.com/v3/__https://www.ettus.com/all-products/usrp-x=
410/__;!!FbZ0ZwI3Qg!qK9xBuKBWusDewCqTkeFl1SjAew_36nFIxqesMafqOGheMElwp5DK15=
Ie-TLiYI6NBKQgznYDfh0DZ1WtHDYug$</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
<br>
INTERNAL - NI CONFIDENTIAL<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div>2021/09/27=E3=81=8B=E3=82=89=E6=96=B0=E4=BA=8B=E5=8B=99=E6=89=80=E3=
=81=AB=E7=A7=BB=E8=BB=A2=E3=81=97=E3=81=BE=E3=81=97=E3=81=9F=EF=BC=81</div>=
<div><span style=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span=
><br></div><div>=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushim=
a)</div><div>=C2=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=
=E3=83=95=E3=82=A3=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin Sy=
stem Co.,Ltd)</div><div><br></div><div>=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=
=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=
=BC=98=EF=BC=8D=EF=BC=95</div><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=
=80=80=E3=80=80=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=
=AB=EF=BC=95=EF=BC=A6</div><div><br></div><div>Mail: <a href=3D"mailto:miki=
o@dolphinsystem.jp" target=3D"_blank">mikio@dolphinsystem.jp</a></div><div>=
URL : <a href=3D"http://www.dolphinsystem.jp/" target=3D"_blank">http://www=
.dolphinsystem.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div><span sty=
le=3D"color:rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div></di=
v></div></div></div>

--000000000000426dc305df2ff246--

--===============2382317167426867659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2382317167426867659==--
