Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E1434B16C
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 22:41:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A346383CC0
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 17:41:27 -0400 (EDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D2F9383C3A
	for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 17:40:40 -0400 (EDT)
Received: by mail-ua1-f45.google.com with SMTP id 97so2060057uav.7
        for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 14:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cv32jglDjyUPzsWHVciu4UALAk8wGG6PD+9ZOGr/+kg=;
        b=A027SkHOS1n8o/mU6zgFqkahvCa5R1JYTfcYkyaONuvm2NEp4STTookPZ57gxFvEri
         E0gvRa73WuTASLuZZWHSSW21dgNZaovwKoy5DdLcMT3jiRbL0l4vFQ7gtAmJ3BzKwqek
         MOxXvR/XWPR5P3VvrQrL/Z16eeYBhOqVreXBFJ7FYUk13O8DEYrEE6t5DcNRUPTD291W
         ryK2Z7/qettNICPOtq4aCZ8GNrHrM175lCmofoPbBLdazFa2pPX6k/qKO1N60Dl3ycmK
         f8gKj9cfcFUA2aWit3oQiMi/Z7ilFUWNgiFvrtluYLcAQPpRTtWGztGqis79B/gq5bvL
         NGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cv32jglDjyUPzsWHVciu4UALAk8wGG6PD+9ZOGr/+kg=;
        b=esoioy8dJCgtyOmkUreMmXfxu0ndNkmQ+08DgZwCqcYDYdCXaDmmGCVsAzDs4acOKi
         CJOUJsY3jJkoX73znbdldjHrGYtM2+tR+wIbSvZMf6bLy5WChlwyCfewp+FYNY7gHjor
         leg5SkveHDyEX/ms5cRuLbeABUfLF2NaytptMlhkuyK24guF2XyiAuSbpMLOlMBPSVAR
         W06lszdDC1+BTgGSCfw1vmvjDiFkGu+tf3FzfCvePmHtKPUi2bUllRubCY5g56ySm9HP
         fKMVEdpwVDMXYi8gYbwhthYIP7WmSfKC4uD69iCJF6WIBSpXIUZR84SpG+7yItf4ewX2
         I2fA==
X-Gm-Message-State: AOAM531xOPPg6NJqzOkwQrXatkaw2peaVnE9OwyvxV7wwjS4AH4yJvAt
	5hv4G38vaR5zpO0n0ELOTB3vSZK+to0jGaV9PgHhxquz
X-Google-Smtp-Source: ABdhPJwNWqrAoZ3IeGaD5Ig2wGQ/bGEsncTdcaij5Qj9Oj7VTQlRn5jha1GgOdQDRYQdKg+sCZKmuBjyw8N+Qk9nk20=
X-Received: by 2002:ab0:7457:: with SMTP id p23mr9391450uaq.44.1616794839795;
 Fri, 26 Mar 2021 14:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR02MB5984AB90949D61895C7BBA54E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
 <176D7790-E6DC-4235-938D-C11B2CF2C3D2@gmail.com> <MN2PR02MB59847B27C7EF19D3C49C7707E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB59847B27C7EF19D3C49C7707E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 26 Mar 2021 17:40:28 -0400
Message-ID: <CAL7q81uZnnCZk_JDKW4q_mzoXQRcTDxAQ+adROPLQhXQ_NYeng@mail.gmail.com>
To: "Beaudoin, Christopher J" <Christopher_Beaudoin@uml.edu>
Message-ID-Hash: VVL5JZFRTO7SK6HRYUP3AT5U4ASZVTCY
X-Message-ID-Hash: VVL5JZFRTO7SK6HRYUP3AT5U4ASZVTCY
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 EVM
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVL5JZFRTO7SK6HRYUP3AT5U4ASZVTCY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8897959710693548962=="

--===============8897959710693548962==
Content-Type: multipart/alternative; boundary="00000000000019d91b05be776294"

--00000000000019d91b05be776294
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chris,

Have you tried offset tuning? For example, setting the master clock rate to
55.296e6, the sample rate to 27.648e6, and offset tuning by 14 MHz?

Jonathon

On Fri, Mar 26, 2021, 17:09 Beaudoin, Christopher J <
Christopher_Beaudoin@uml.edu> wrote:

> So both should be synchronized (unless I'm missing something) because I'm
> externally referencing the B210 to the signal generator's 10 MHz referenc=
e.
> The EVM over a couple 1000 symbols is good but when one looks at the EVM
> over ~13e6 samples, it deteriorates dramatically. Looking at the rx
> waveform as compared to the tx waveform indicates the source of EVM
> deterioration is related to phase instability somewhere. When I got to th=
is
> point, I started to ask myself if I had set my expectations for the B210'=
s
> EVM performance too high so I paused to pose this question to the forum. =
If
> I had to guess based on the analysis I've done so far, I'd say it appears
> that the master clock isn't perfectly sync'd with the external reference =
on
> the scale of 0.5 to 1 second.
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, March 26, 2021 4:54 PM
> *To:* Beaudoin, Christopher J <Christopher_Beaudoin@uml.edu>
> *Cc:* Julian Arnold <julian@elitecoding.org>; USRP-users@lists.ettus.com =
<
> USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: B210 EVM
>
> *This e-mail originated from outside the UMass Lowell network.*
> ------------------------------
> I would suggest going back to basics. What does the RX spectrum look like
> compared to the TX spectrum? Are you doing clock recovery on the RX side,
> or assuming both sides are synchronized?
>
>
>
> Sent from my iPhone
>
> On Mar 26, 2021, at 4:38 PM, Beaudoin, Christopher J <
> Christopher_Beaudoin@uml.edu> wrote:
>
> =EF=BB=BF
> Hello Marcus,
>
>                     Sorry for the terse nature of my previous message. To
> be more specific, the precise symbol rate is 4.608 MHz so the actual samp=
le
> rate is 27.648 MHz; the USRP sets the master clock rate to 27.648 MHz whe=
n
> I command the sample rate. I'm not seeing any overruns at this rate and w=
e
> spent a fair bit of time fine tuning the host machine to sustain this dat=
a
> rate. It will sustain this rate for as long at 10 minutes without reporti=
ng
> any "O" or "U" errors. I also embed the time stamps into the recorded
> data file and post recording analysis does not indicate any time
> disruptions.
>
> I'm certain that the mod signal (from my vector signal analyzer) has very
> low EVM (~1%) as confirmed with my Rhode Schwartz signal analyzer. I've
> also considered saturation of amplifier stages within the AD9361. With 55
> dB of gain, I obtain a rms ADC 16-bit state count of ~15000 for a -40 dBm
> input level. As I understand this should be a suitable level given the
> B210's IIP3 spec is -20 dBm. I've also reduced the input level at constan=
t
> gain and didnt observe any net improvement in the EVM.
>
> When properly configured, can I expect the B210 to yield an EVM better
> than say 5%?
>
> Chris
>
>
>
> Creating the usrp device with: num_recv_frames=3D1024...
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.11.1.0-0-unknown
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B210
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> Setting RX Freq: 3199000000.000 Hz...
> Actual RX Freq: 3199000000.000 Hz...
>
> Setting RX Rate:  27648000.000 Sps...
> [INFO] [B200] Asking for clock rate 27.648000 MHz...
> [INFO] [B200] Actually got clock rate 27.648000 MHz.
> Actual RX Rate:  27648000.081 Sps...
>
> Setting RX Gain: 55.000000 dB...
> Actual RX Gain: 55.000000 dB...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
>
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, March 26, 2021 2:45 PM
> *To:* Julian Arnold <julian@elitecoding.org>
> *Cc:* Beaudoin, Christopher J <Christopher_Beaudoin@uml.edu>;
> USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: B210 EVM
>
> *This e-mail originated from outside the UMass Lowell network.*
> ------------------------------
> At 30MSPS are you seeing any overruns? What is your master clock rate?
>
> Sent from my iPhone
>
> On Mar 26, 2021, at 2:41 PM, Julian Arnold <julian@elitecoding.org> wrote=
:
>
> =EF=BB=BFChris,
>
> I would say that your EVM is mainly affected by your SNR and your digital
> receiver implementation (AGC / filters / clock recovery / equalizer / ...=
).
> So without more details it=E2=80=99s going to be hard to say if what you =
 are
> seeing is within limits.
>
> Cheers,
>
> Julian Arnold, M.Sc
>
> Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@uml.edu:
>
> =EF=BB=BF
>
> I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the
> signal at 6 times the symbol rate. The B210 is externally referenced to a
> very clean 10 MHz reference. My measurements of the EVM sampling the sign=
al
> for ~0.5 seconds are pretty poor ~30-40%. I can provide more setup detail=
s
> but I'm wondering if others can comment on what EVM I can expect. I'm
> hoping this isn't a fundamental limitation of this hardware system.
>
>
> Thanks,
>
> Chris
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000019d91b05be776294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Chris,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Have you tried offset tuning? For example, setting the master clo=
ck rate to 55.296e6, the sample rate to 27.648e6, and offset tuning by 14 M=
Hz?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon<br><br><div=
 class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Mar 26, 2021, 17:09 Beaudoin, Christopher J &lt;<a href=3D"mailto:Ch=
ristopher_Beaudoin@uml.edu" target=3D"_blank" rel=3D"noreferrer">Christophe=
r_Beaudoin@uml.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
So both should be synchronized (unless I&#39;m missing something) because I=
&#39;m externally referencing the B210 to the signal generator&#39;s 10 MHz=
 reference. The EVM over a couple 1000 symbols is good but when one looks a=
t the EVM over ~13e6 samples, it deteriorates
 dramatically. Looking at the rx waveform as compared to the tx waveform in=
dicates the source of EVM deterioration is related to phase instability som=
ewhere. When I got to this point, I started to ask myself if I had set my e=
xpectations for the B210&#39;s EVM performance
 too high so I paused to pose this question to the forum. If I had to guess=
 based on the analysis I&#39;ve done so far, I&#39;d say it appears that th=
e master clock isn&#39;t perfectly sync&#39;d with the external reference o=
n the scale of 0.5 to 1 second.</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3345729240813940195m_2051473110112596743Signature">
<div>
<div id=3D"m_-3345729240813940195m_2051473110112596743divtagdefaultwrapper"=
 style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,=
sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
<div id=3D"m_-3345729240813940195m_2051473110112596743appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3345729240813940195m_2051473110112596743divRplyFwdMsg" dir=3D=
"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"=
#000000"><b>From:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">patchvonbraun@gmai=
l.com</a>&gt;<br>
<b>Sent:</b> Friday, March 26, 2021 4:54 PM<br>
<b>To:</b> Beaudoin, Christopher J &lt;<a href=3D"mailto:Christopher_Beaudo=
in@uml.edu" rel=3D"noreferrer noreferrer" target=3D"_blank">Christopher_Bea=
udoin@uml.edu</a>&gt;<br>
<b>Cc:</b> Julian Arnold &lt;<a href=3D"mailto:julian@elitecoding.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">julian@elitecoding.org</a>&gt;=
; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferre=
r" target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:U=
SRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">=
USRP-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: B210 EVM</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto"><font color=3D"red"><b>This e-mail originated from outsid=
e the UMass Lowell network.</b></font>
<hr>
I would suggest going back to basics. What does the RX spectrum look like c=
ompared to the TX spectrum? Are you doing clock recovery on the RX side, or=
 assuming both sides are synchronized?
<div><br>
</div>
<div><br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Mar 26, 2021, at 4:38 PM, Beaudoin, Christophe=
r J &lt;<a href=3D"mailto:Christopher_Beaudoin@uml.edu" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">Christopher_Beaudoin@uml.edu</a>&gt; wrote:<br=
>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sorry=
 for the terse nature of my previous message. To be more specific, the prec=
ise symbol rate is 4.608 MHz so the actual sample rate is 27.648 MHz; the U=
SRP sets the master clock rate to 27.648 MHz when I command the sample rate=
. I&#39;m not
 seeing any overruns at this rate and we spent a fair bit of time fine tuni=
ng the host machine to sustain this data rate. It will sustain this rate fo=
r as long at 10 minutes without reporting any &quot;O&quot; or &quot;U&quot=
; errors.=C2=A0<span style=3D"background-color:rgb(255,255,255);display:inl=
ine!important">I
 also embed the time stamps into the recorded data file and post recording =
analysis does not indicate any time disruptions.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m certain that the mod signal (from my vector signal analyzer) has ve=
ry low EVM (~1%) as confirmed with my Rhode Schwartz signal analyzer. I&#39=
;ve also considered saturation of amplifier stages within the AD9361. With =
55 dB of gain, I obtain a rms ADC 16-bit
 state count of ~15000 for a -40 dBm input level. As I understand this shou=
ld be a suitable level given the B210&#39;s IIP3 spec is -20 dBm. I&#39;ve =
also reduced the input level at constant gain and didnt observe any net imp=
rovement in the EVM.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
When properly configured, can I expect the B210 to yield an EVM better than=
 say 5%?=C2=A0</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-3345729240813940195m_2051473110112596743x_Signature">
<div id=3D"m_-3345729240813940195m_2051473110112596743x_divtagdefaultwrappe=
r" style=3D"font-size:12pt;font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Arial,Helv=
etica,sans-serif;font-size:12pt">
<font color=3D"#212121">Chris</font></p>
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Arial,Helv=
etica,sans-serif;font-size:12pt">
<font color=3D"#212121"><br>
</font></p>
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Arial,Helv=
etica,sans-serif;font-size:12pt">
<font color=3D"#212121"><br>
</font></p>
<p style=3D"margin-top:0px;margin-bottom:0px;font-family:Calibri,Arial,Helv=
etica,sans-serif;font-size:12pt">
<font color=3D"#212121">Creating the usrp device with: num_recv_frames=3D10=
24...</font></p>
<font color=3D"#212121">
<div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_=
3.11.1.0-0-unknown</div>
<div>[INFO] [B200] Detected Device: B210</div>
<div>[INFO] [B200] Operating over USB 3.</div>
<div>[INFO] [B200] Initialize CODEC control...</div>
<div>[INFO] [B200] Initialize Radio control...</div>
<div>[INFO] [B200] Performing register loopback test... </div>
<div>[INFO] [B200] Register loopback test passed</div>
<div>[INFO] [B200] Performing register loopback test... </div>
<div>[INFO] [B200] Register loopback test passed</div>
<div>[INFO] [B200] Setting master clock rate selection to &#39;automatic&#3=
9;.</div>
<div>[INFO] [B200] Asking for clock rate 16.000000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 16.000000 MHz.</div>
<div>Using Device: Single USRP:</div>
<div>=C2=A0 Device: B-Series Device</div>
<div>=C2=A0 Mboard 0: B210</div>
<div>=C2=A0 RX Channel: 0</div>
<div>=C2=A0 =C2=A0 RX DSP: 0</div>
<div>=C2=A0 =C2=A0 RX Dboard: A</div>
<div>=C2=A0 =C2=A0 RX Subdev: FE-RX2</div>
<div>=C2=A0 RX Channel: 1</div>
<div>=C2=A0 =C2=A0 RX DSP: 1</div>
<div>=C2=A0 =C2=A0 RX Dboard: A</div>
<div>=C2=A0 =C2=A0 RX Subdev: FE-RX1</div>
<div>=C2=A0 TX Channel: 0</div>
<div>=C2=A0 =C2=A0 TX DSP: 0</div>
<div>=C2=A0 =C2=A0 TX Dboard: A</div>
<div>=C2=A0 =C2=A0 TX Subdev: FE-TX2</div>
<div>=C2=A0 TX Channel: 1</div>
<div>=C2=A0 =C2=A0 TX DSP: 1</div>
<div>=C2=A0 =C2=A0 TX Dboard: A</div>
<div>=C2=A0 =C2=A0 TX Subdev: FE-TX1</div>
<div><br>
</div>
<div>Setting RX Freq: 3199000000.000 Hz...</div>
<div>Actual RX Freq: 3199000000.000 Hz...</div>
<div><br>
</div>
<div>Setting RX Rate: =C2=A027648000.000 Sps...</div>
<div>[INFO] [B200] Asking for clock rate 27.648000 MHz... </div>
<div>[INFO] [B200] Actually got clock rate 27.648000 MHz.</div>
<div>Actual RX Rate: =C2=A027648000.081 Sps...</div>
<div><br>
</div>
<div>Setting RX Gain: 55.000000 dB...</div>
<div>Actual RX Gain: 55.000000 dB...</div>
<div><br>
</div>
<div>Waiting for &quot;lo_locked&quot;: ++++++++++ locked.</div>
<div><br>
</div>
Press Ctrl + C to stop streaming...<br>
</font>
<p></p>
<font color=3D"#000000"><span id=3D"m_-3345729240813940195m_205147311011259=
6743x_ms-rterangepaste-end"></span></font><br>
<p style=3D"color:rgb(0,0,0);margin-top:0px;margin-bottom:0px"></p>
</div>
</div>
</div>
<div id=3D"m_-3345729240813940195m_2051473110112596743x_appendonsend"></div=
>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3345729240813940195m_2051473110112596743x_divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
<b>Sent:</b> Friday, March 26, 2021 2:45 PM<br>
<b>To:</b> Julian Arnold &lt;<a href=3D"mailto:julian@elitecoding.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">julian@elitecoding.org</a>&gt;=
<br>
<b>Cc:</b> Beaudoin, Christopher J &lt;<a href=3D"mailto:Christopher_Beaudo=
in@uml.edu" rel=3D"noreferrer noreferrer" target=3D"_blank">Christopher_Bea=
udoin@uml.edu</a>&gt;; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a> &l=
t;<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferre=
r" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: B210 EVM</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto"><font color=3D"red"><b>This e-mail originated from outsid=
e the UMass Lowell network.</b></font>
<hr>
At 30MSPS are you seeing any overruns? What is your master clock rate?<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Mar 26, 2021, at 2:41 PM, Julian Arnold &lt;<a=
 href=3D"mailto:julian@elitecoding.org" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">julian@elitecoding.org</a>&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BFChris,
<div><br>
</div>
<div>I would say that your EVM is mainly affected by your SNR and your digi=
tal receiver implementation (AGC / filters / clock recovery / equalizer / .=
..).=C2=A0</div>
<div>So without more details it=E2=80=99s going to be hard to say if what y=
ou =C2=A0are seeing is within limits.</div>
<div><br>
</div>
<div>Cheers,<br>
<br>
<div dir=3D"ltr">Julian Arnold, M.Sc</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">Am 26.03.2021 um 18:29 schrieb <a href=3D"mailto:=
christopher_beaudoin@uml.edu" rel=3D"noreferrer noreferrer" target=3D"_blan=
k">christopher_beaudoin@uml.edu</a>:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<p>I&#39;m capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling=
 the signal at 6 times the symbol rate. The B210 is externally referenced t=
o a very clean 10 MHz reference. My measurements of the EVM sampling the si=
gnal for ~0.5 seconds are pretty poor
 ~30-40%. I can provide more setup details but I&#39;m wondering if others =
can comment on what EVM I can expect. I&#39;m hoping this isn&#39;t a funda=
mental limitation of this hardware system.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Chris</p>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.=
com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-l=
eave@lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.=
com</a></span><br>
<span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-l=
eave@lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
</blockquote></div></div></div>

--00000000000019d91b05be776294--

--===============8897959710693548962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8897959710693548962==--
