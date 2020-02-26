Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D70170113
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2020 15:22:28 +0100 (CET)
Received: from [::1] (port=39284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6xZw-0005Ml-Iy; Wed, 26 Feb 2020 09:22:24 -0500
Received: from mail-oi1-f172.google.com ([209.85.167.172]:42295)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1j6xZs-0005DG-O6
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 09:22:20 -0500
Received: by mail-oi1-f172.google.com with SMTP id j132so3144077oih.9
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 06:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2hNreZIW9pIG4LkUEVYX9KUVuMcd3nqMOy23xJNgs4=;
 b=npAFfL8METjtJGOk5aqbvkCCiae10DReDnVw+1ls1d3Nm6YVyKNCP7g2tXwYFn8g/n
 j/7euaCfg3EsnXUb+3r+uPtgJ3Q1VW+olyhzZspGsxZiypQxgQXIKhtTSEghEEDZ6MFZ
 IOZkgkVprnXBzPhS0h6L4qOlkRTSJ2iGHIse96dqfnN5yg7ogU1h3/WpiGX5V2HkBrAR
 QoiZoGI2BRfFQyLZUhF/4aaVSmWbo2Twb4iV0dm19zl1mOs6TEyiHAzG9IfhcXJlRfZr
 aS+Rf/jR7ixU5vJPifAt6FP/tZntDOB/cIT4utLpOSfG3c0urNatI7ErsrnDicofD3LT
 3mPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2hNreZIW9pIG4LkUEVYX9KUVuMcd3nqMOy23xJNgs4=;
 b=hMUbl1bmTS/XlKpq1rnJcO0bIERd8CUnX9XXEO67lkd/HMMqBpuU/OTnasZMS4Uuqe
 LXN4y3oYOpc3TTcfDX0apFaUshrbSCniGzM67OVfxd3JNsFlOQ3D2E/fsYGI3GpLmRr1
 DrY6yjsr9+6GFPVK8PmykGzF4UMwyXa2VTetL14kQnQGQRVew2IGRaa5UvQR3iq8T06h
 2YwGGHpczLUodXitstxzXnx/nfMGDRLBqwb0mIKIJyvLO4fzy0odZvMd3GZzvUsP+0cp
 KS2KRzQ3ih9988fmTZJtqH4JtNIt5btwzNr5vmjNZeF/8MdcZzYNfgbyLPgy439LR6Mp
 0Rlg==
X-Gm-Message-State: APjAAAWq8PYruWvgebBal6CwQfvyAP9Xnx/8rGnc74rkIgFyBwKh1Tv9
 rvC7PClaOV0IydZNv5rlLi6TPuMh85+BR2Ys5gUhR7Dj
X-Google-Smtp-Source: APXvYqwRkhI650gC+DicyLyrYB4FwOGrwXzK0awGSxooPQg4qftXebQQEyNkYoMEUUATgdaEzqxFSTCSEWoFLDUQO5M=
X-Received: by 2002:a05:6808:48b:: with SMTP id
 z11mr3124395oid.38.1582726899998; 
 Wed, 26 Feb 2020 06:21:39 -0800 (PST)
MIME-Version: 1.0
References: <14812_1582707455_5E5632FF_14812_320_1_AD065CF42EAFA14D8B2A641BCA414A3550EB3094@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
In-Reply-To: <14812_1582707455_5E5632FF_14812_320_1_AD065CF42EAFA14D8B2A641BCA414A3550EB3094@OPEXCAUBM21.corporate.adroot.infra.ftgroup>
Date: Wed, 26 Feb 2020 08:21:29 -0600
Message-ID: <CAGNhwTO2s5Z39SSpteFbrcWk_CHwwW-ONbtUmRYNuceocuRXRQ@mail.gmail.com>
To: louisadrien.dufrene@orange.com
Subject: Re: [USRP-users] Strange noise floor at "high" SNR
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2985882536363480278=="
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

--===============2985882536363480278==
Content-Type: multipart/alternative; boundary="000000000000a6b5c2059f7b5229"

--000000000000a6b5c2059f7b5229
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bonjour Louis-Adrien - Cool experiment! Since we don't have access to your
flowgraph, the following are just guesses. I believe that getting the
signal gains "correct enough" is the key to what you're doing. 60 dB of
attenuation is quite a bit! it's wise to protect the USRP Rx from signal
overload though, but usually 30-40 dB is sufficient.

Pre-USRP TX Gain: the USRP Sink block takes in float values in the range
[-1,+1] ... and ideally the max(abs()) of the signal is always < 1 ... and
to be safe, even < 0.9. If the max(abs()) goes > 1 for very short bursts
it's probably not an issue, but if the signal is regularly > 1 then the TX
RF will look distorted since the USRP will clip the signal. Some versions
of GR provide an API to normalize the constellation values to max(abs()) =
=3D=3D
1 .. but this is not the default ... and if not, then I believe the
max(abs()) grows with the QAM value. Thus, unless your flowgraph is
normalizing the pre-USRP signal to be in the correct range, the signal
max(abs()) will (eventually) end up being outside that range & the USRP TX
RF will end up being distorted.

Hope this is useful! - MLD

On Wed, Feb 26, 2020 at 2:58 AM Louis-Adrien DUFRENE via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello everyone,
>
>
>
> I am using a USRP B210 with the Python (3.7.6) API with UHD 3.15 (from
> conda-forge).
>
>
>
> RF setup is as follow: one USRP, one TX/RX connected with a SMA cable, 60
> dB attenuator, central freq is 1GHz, sampling rate is 1,6 MHz (oversampli=
ng
> value is 4) and RX gain is fixed to 50 dB.
>
> I send burst of data composed of a zadoff-chu 256 followed by a payload
> modulated with M-QAM and Gray mapping. This is a wideband transmission,
> there is no additional filtering, nor OFDM modulation.
>
>
>
> I use a 1031-long ZC sequence to locate the frame.
>
> In reception, I use the 256-long ZC sequence to fine synch (select the
> right sample version to go back to symbol rate), to estimate the channel
> (1-tap) and more especially the phase shift, and to estimate the SNR.
>
>
>
> I could confirm the performance for 4-QAM and 16-QAM. BER vs SNR
> performance curves obtained in experimentation follow perfectly the
> theoretical curves for AWGN.
>
>
>
> However not in the case of the 64-QAM. Actually, I can=E2=80=99t obtain a=
 SNR
> above 22 / 23 dB, independently of the QAM order used.
>
> To increase the SNR and draw the performance curves, I simply increase th=
e
> TX gain. I start getting some problem from 45/50 dB.
>
>
>
> I observe a noise floor which looks like classic AWGN, but which is
> increasing with the TX gain, since the estimated SNR is constant at 22.5 =
dB.
>
>
>
> I have also confirm the performances of the 4-QAM, 16-QAM and 64-QAM in
> simulation on AWGN channel.
>
>
>
> At the moment I have no clue of what is happening. I have manually
> activated dc offset and iq imbalance correction based on UHD API to be su=
re.
>
>
>
> What do I miss? I can provide more information if needed.
>
>
>
> Best regards,
>
> Louis-Adrien
>
> _________________________________________________________________________=
________________________________________________
>
> Ce message et ses pieces jointes peuvent contenir des informations confid=
entielles ou privilegiees et ne doivent donc
> pas etre diffuses, exploites ou copies sans autorisation. Si vous avez re=
cu ce message par erreur, veuillez le signaler
> a l'expediteur et le detruire ainsi que les pieces jointes. Les messages =
electroniques etant susceptibles d'alteration,
> Orange decline toute responsabilite si ce message a ete altere, deforme o=
u falsifie. Merci.
>
> This message and its attachments may contain confidential or privileged i=
nformation that may be protected by law;
> they should not be distributed, used or copied without authorisation.
> If you have received this email in error, please notify the sender and de=
lete this message and its attachments.
> As emails may be altered, Orange is not liable for messages that have bee=
n modified, changed or falsified.
> Thank you.
>
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

--000000000000a6b5c2059f7b5229
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bonjour Louis-Adrien - Cool experiment! Since we don&#39;t=
 have access to your flowgraph, the following are just guesses. I believe t=
hat getting the signal gains &quot;correct enough&quot; is the key to what =
you&#39;re doing. 60 dB of attenuation is quite a bit! it&#39;s wise to pro=
tect the USRP Rx from signal overload though, but usually 30-40 dB is suffi=
cient.<div><br></div><div>Pre-USRP TX Gain: the USRP Sink block takes in fl=
oat values in the range [-1,+1] ... and ideally the max(abs()) of the signa=
l is always &lt; 1 ... and to be safe, even &lt; 0.9. If the max(abs()) goe=
s &gt; 1 for very short bursts it&#39;s probably not an issue, but if the s=
ignal is regularly &gt; 1 then the TX RF will look distorted since the USRP=
 will clip the signal. Some versions of GR provide an API to normalize the =
constellation values to max(abs()) =3D=3D 1 .. but this is not the default =
... and if not, then I believe the max(abs()) grows with the QAM value. Thu=
s, unless your flowgraph is normalizing the pre-USRP signal to be in the co=
rrect range, the signal max(abs()) will (eventually) end up being outside t=
hat range &amp; the USRP TX RF will end up being distorted.</div><div><br><=
/div><div>Hope this is useful! - MLD</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 2:58 AM L=
ouis-Adrien DUFRENE via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">





<div lang=3D"FR">
<div class=3D"gmail-m_-3948145480721962835WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using a USRP B210 with the=
 Python (3.7.6) API with UHD 3.15 (from conda-forge).<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">RF setup is as follow: one USRP=
, one TX/RX connected with a SMA cable, 60 dB attenuator, central freq is 1=
GHz, sampling rate is 1,6 MHz (oversampling value is 4) and RX gain is fixe=
d to 50 dB.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I send burst of data composed o=
f a zadoff-chu 256 followed by a payload modulated with M-QAM and Gray mapp=
ing. This is a wideband transmission, there is no additional filtering, nor=
 OFDM modulation.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I use a 1031-long ZC sequence t=
o locate the frame.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In reception, I use the 256-lon=
g ZC sequence to fine synch (select the right sample version to go back to =
symbol rate), to estimate the channel (1-tap) and more especially the phase=
 shift, and to estimate the SNR.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I could confirm the performance=
 for 4-QAM and 16-QAM. BER vs SNR performance curves obtained in experiment=
ation follow perfectly the theoretical curves for AWGN.<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However not in the case of the =
64-QAM. Actually, I can=E2=80=99t obtain a SNR above 22 / 23 dB, independen=
tly of the QAM order used.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To increase the SNR and draw th=
e performance curves, I simply increase the TX gain. I start getting some p=
roblem from 45/50 dB.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I observe a noise floor which l=
ooks like classic AWGN, but which is increasing with the TX gain, since the=
 estimated SNR is constant at 22.5 dB.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also confirm the perform=
ances of the 4-QAM, 16-QAM and 64-QAM in simulation on AWGN channel.<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At the moment I have no clue of=
 what is happening. I have manually activated dc offset and iq imbalance co=
rrection based on UHD API to be sure.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What do I miss? I can provide m=
ore information if needed.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Louis-Adrien<u></u><u></u></spa=
n></p>
</div>
<pre>______________________________________________________________________=
___________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l&#39;expediteur et le detruire ainsi que les pieces jointes. Les message=
s electroniques etant susceptibles d&#39;alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.
</pre></div>

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

--000000000000a6b5c2059f7b5229--


--===============2985882536363480278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2985882536363480278==--

