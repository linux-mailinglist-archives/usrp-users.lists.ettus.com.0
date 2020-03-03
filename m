Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB0F1785B4
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 23:36:45 +0100 (CET)
Received: from [::1] (port=36750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9G9W-0001gK-RL; Tue, 03 Mar 2020 17:36:38 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:37056)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9G9S-0001Xi-Uv
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 17:36:35 -0500
Received: by mail-lj1-f175.google.com with SMTP id q23so5401064ljm.4
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 14:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0qJFdbD5yt3xkRiYCqOVVx8QZE9Akd+rDKFUBIfjj5g=;
 b=sV2v0Zu9t7U8+4WYKHGzCHSJQqpxiYwMWs7oATOPamJvgTdTi3ecRwpYdxg3ZpGEM5
 m8w/b+0ULIvbdaXsM4A721lEfyS8lApF237PIkvWw1g5/aYtFRR36c1quk1A38pRubTa
 WlagArXq75SZ9NMUTSZxSU5DYk0jMRCl/dnT0dVTVSQX1JyNuLUPmmPx6gOasJD0MKER
 XjheyO4FC2a8SA/ZXREzOQWQG/NL2IiC2UtMc4HZ1JS2CSAqmubvq/5F+2BYtMuP57e5
 tSoQCJwnwRI0rgYuBQP7eSpMEiGJ2ixBhWEqmVu3K+0Rf0+tfpuGWE6L7fwQLlASS9lE
 4FqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0qJFdbD5yt3xkRiYCqOVVx8QZE9Akd+rDKFUBIfjj5g=;
 b=A9q71AzeVpethft+utNUp8HehqoPLxIHRNV714Fa3W/TnkVZbiQso8uCtxr1JQtwQ8
 Xq6aI2xqDANLqhh5UtWGT8aOqG+nPHDR2fjQo+NFnoV/Z2jS4PHNT68HYo55vlV5JH9T
 ShQqu0xL4xJme7iuiUZn14qPRZ4zKInr2TFySuzhP8+V1mBnNSaYjG2vYamGeojN43Cs
 Y4ANToyp0BJ6cwlCgiJ++iNl46Mn3TUMKhq20pt5fAqBjRpxE/4ma53cyw81uEqUNYIE
 5CtZqEAy/atJc7UpFYeRwihJARNA1/UoCkMRoPCtB0uSL5ZfR/BzgbXRkpxI6DyMcQPK
 g1Ew==
X-Gm-Message-State: ANhLgQ0L6ZVf03yFSUuPeRQmaZr6q6ilgUjvh3lctnJ7jIW7kplnEKL8
 J9v36QHMWFxbaFJ8hPg+i6oQ8ofcJt3cCZ9VrhY9rwIA
X-Google-Smtp-Source: ADFU+vt8Wn7oY6LoMV6HX5JXePUPMiFVzFIshUdS1NJ1HItVPjLCr2fru+NExVCVxZ+tFWOv/h6u5H2OFlufj85K4Ns=
X-Received: by 2002:a05:651c:21b:: with SMTP id
 y27mr100373ljn.164.1583274953629; 
 Tue, 03 Mar 2020 14:35:53 -0800 (PST)
MIME-Version: 1.0
References: <26020d4c1e714ec59a1c4f79f2963cb7@mbda-systems.com>
 <5E541933.5060300@gmail.com>
 <2c20231e381c47e5a727d71104f3631b@mbda-systems.com>
In-Reply-To: <2c20231e381c47e5a727d71104f3631b@mbda-systems.com>
Date: Tue, 3 Mar 2020 16:35:52 -0600
Message-ID: <CANf970bsnoqR5Kh4n4thN6kWY8F8H2ZCs6a_3NnFDG0iNhp5Cg@mail.gmail.com>
To: "VAILLANT.Etienne" <etienne.vaillant@mbda-systems.com>
Subject: Re: [USRP-users] *** BULK *** Re: Issues using TwinRX and x310
 (phase shift)
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0770203414624170988=="
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

--===============0770203414624170988==
Content-Type: multipart/alternative; boundary="000000000000317b4b059ffaedfd"

--000000000000317b4b059ffaedfd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Etienne VAILLANT,

It's also worth noting that you need to do some work on the generated
python flowgraph outside of GRC to ensure a consistent phase relationship
between channels. Namely, you need to make sure the following criteria are
met on a TwinRX system:

   1. All USRPs share a common reference clock (10MHz Ref)
   2. All USRPs share a common sense of time (PPS)
   3. LOs are shared
   4. DSP tuning is synchronous
   5. Streaming is started synchronously

If it's a single X310, don't worry about 1 and 2 - the internal reference
and PPS are fine. Sounds like you're sharing LOs correctly for number 3.
For number 5 I believe you can set a stream start time in your USRP source
block, and number 4 requires you implement timed commands in the generated
python code (all cordics in the FPGA need to be synchronously reset within
the DDC). We've actually been discussing something really similar in the
thread [[Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
timed command]]. This is dealing with some TX nuances which shouldn't be an
issue for you if you're just doing RX.

Sam Reiter

On Thu, Feb 27, 2020 at 7:03 AM VAILLANT.Etienne via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
>
>
> Thank you for your answer.
>
> I have upgrade my system to UHD 3.13.0.2 and GRC 3.7.13.4 and I still hav=
e
> those random phase shifts.
>
>
>
> Please find attached my flow-graph and some screenshots of what I get whe=
n
> I start the acquisition (before and after manually shifting the phase
> between channels).
>
> I have also added the warnings I got when I click on play in GRC, plus th=
e
> results of 12 identical acquisitions as an example (12 successive clicks =
on
> SAVE).
>
>
>
> Thanks very much for your support.
>
>
>
> Best regards,
>
> Etienne.
>
>
>
> *De :* USRP-users <usrp-users-bounces@lists.ettus.com> *De la part de*
> Marcus D. Leech via USRP-users
> *Envoy=C3=A9 :* lundi 24 f=C3=A9vrier 2020 19:43
> *=C3=80 :* usrp-users@lists.ettus.com
> *Objet :* *** BULK *** Re: [USRP-users] Issues using TwinRX and x310
> (phase shift)
>
>
>
>
> -------------------------------------------------------------------------=
-------------------------------------------------------------
> Attention, ce courriel provient d Internet. L emetteur n est peut-etre pa=
s
> celui que vous pensez.
> Merci de considerer ce point en lisant ce courriel, en y repondant, ou en
> cliquant sur les liens.
>
> -------------------------------------------------------------------------=
-------------------------------------------------------------
>
> On 02/24/2020 05:06 AM, VAILLANT.Etienne via USRP-users wrote:
>
> Hi all,
>
>
>
> I would like to perform DOA measurements and I am using a USRP x310 with
> two TwinRX.
>
>
>
> First I am trying to perform some very basic tests in order to understand
> what I am doing: I generate a CW at 1850 MHz, going through a power
> splitter (4-ways 0=C2=B0), feeding the 4 inputs of the two TwinRX (A:0, A=
:1 and
> B:0, B:1).
>
> I save the raw IQ data via Gnuradio Companion in a file and I repeat the
> procedure several times, generating several files. All the files are save=
d
> with the same USRP tuning (I don=E2=80=99t stop or retune the signal/USRP=
 between
> two acquisitions). Basically I just click on a *Save* QT GUI Check Box in
> GRC many times which triggers a *File Sink* block and thus generates as
> many files.
>
>
>
> Then I want to re-plot the signals from the IQ data via Matlab, and my
> problem is that I get some different phase shift between the signals.
> Please find attached a screenshot of 12 identical acquisitions (12
> successive clicks on *Save*). What is important to me is the phase shift
> between the two signals, and I expected it to be identical in all cases
> (since all the acquisitions are identical). It seems to be OK for almost
> all the acquisitions, except for the 8, 9 and 10, where the phase shift i=
s
> different from all the others (and the three of them look identical=E2=80=
=A6). I
> have perform this test several times and every time some random
> acquisitions are shifted from the others (sometimes there are 2 or 3
> different values of phase shift, it is not always 90=C2=B0 or else).
>
>
>
> There is something I misunderstood or I do wrong but I can=E2=80=99t find=
 what. I
> have read some people with a similar issue discussing about the function
> *set_time_now()* but I don=E2=80=99t really know how to deal with it.
>
>
>
> To acquire the signal I am using either * UHD: USRP Source* block with 4
> channels or the *TwinRX USRP Source* block. In the first case, LO
> parameters are the following:
>
> -          Ch0 Source Internal / export True
>
> -          Ch1 Source Companion / export False
>
> -          Ch2 Source External / export False
>
> -          Ch3 Source External / export False
>
>
>
> I work on *Ubuntu* 18.04 (I can=E2=80=99t change since some other activit=
ies rely
> on this computer).
>
> -          *GRC* 3.7.10.1 (minimum version required for *gr-doa*
> application)
>
> -          *UHD* 3.10.3.0 (with the v3.10.1.0 recommended for *gr-doa *ap=
plication,
> my TwinRX were not detected (*Unknown*) via *uhd_usrp_probe*)
>
> -          *gr-doa* installed from source but all the make test have
> failed (I guess this is another topic since I don=E2=80=99t use *gr-doa*
> functions in my basic test presented above?).
>
>
>
> I am quite a new comer to this SDR world, thus any help would be much
> appreciated, thanks very much in advance!
>
>
>
> Kind regards,
>
>
>
> *Etienne VAILLANT*
>
>
>
>
>
> Perhaps you could share your GRC flow-graph with us?
>
> Also, there have been some phase-offset fixes in later versions of UHD,
> but it's not clear at this point whether that applies in your case or not=
,
>   which is where having the GRC flow-graph to look at would be useful.
>
> Cheers
>
> _________________________________________________________________________=
__________________________________________________________
>
> This email and any attachments are confidential to the intended recipient=
 and may also be privileged.
> If you are not the intended recipient please delete it from your system a=
nd notify the sender.
> You should not copy it or use it for any purpose nor disclose or distribu=
te its contents to any other person.
>
>
> Ce courriel et ses pieces-jointes sont envoyes de maniere confidentielle =
et doivent etre traites avec attention.
> Si vous n'etes pas le destinataire, merci de le detruire et d'en informer=
 son auteur.
> Vous ne devez pas copier, utiliser, reveler ou diffuser son contenu a qui=
conque.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000317b4b059ffaedfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Etienne VAILLANT,<div><br></div><div>It&#39;s also worth n=
oting that you need to do some work on the generated python flowgraph outsi=
de of GRC to ensure a consistent phase relationship between channels. Namel=
y, you need to make sure the following criteria are met on a TwinRX system:=
</div><div><ol><li>All USRPs share a common reference clock (10MHz Ref)</li=
><li>All USRPs share a common sense of time (PPS)</li><li>LOs are shared=C2=
=A0</li><li>DSP tuning is synchronous</li><li>Streaming is started synchron=
ously</li></ol></div><div>If it&#39;s a single X310, don&#39;t worry about =
1 and 2 - the internal reference and PPS are fine. Sounds like you&#39;re s=
haring LOs correctly for number 3. For number 5 I believe you can set a str=
eam start time in your USRP source block, and number 4 requires=C2=A0you im=
plement timed commands in the generated python code (all cordics in the FPG=
A need to be synchronously reset within the DDC). We&#39;ve actually been d=
iscussing something=C2=A0really similar in the thread [[Re: [USRP-users] US=
RP X310 ignored DSP retuning on TX when using a timed command]]. This is de=
aling with some TX nuances which shouldn&#39;t be an issue for you if you&#=
39;re just doing RX.</div><div><br clear=3D"all"><div><div dir=3D"ltr" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam R=
eiter=C2=A0</div></div></div></div></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 27, 2020 at 7:03=
 AM VAILLANT.Etienne via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">





<div bgcolor=3D"white" lang=3D"FR">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Hi Marcus,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Thank you for your answer.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
I have upgrade my system to UHD 3.13.0.2 and GRC 3.7.13.4 and I still have =
those random phase shifts.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Please find attached my flow-graph and some screenshots of what I get when =
I start the acquisition (before and after manually shifting the phase betwe=
en channels).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
I have also added the warnings I got when I click on play in GRC, plus the =
results of 12 identical acquisitions as an example (12 successive clicks on=
 SAVE).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Thanks very much for your support.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Best regards,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
Etienne.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">De=C2=A0:</span>=
</b><span style=3D"color:windowtext"> USRP-users &lt;<a href=3D"mailto:usrp=
-users-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.=
ettus.com</a>&gt;
<b>De la part de</b> Marcus D. Leech via USRP-users<br>
<b>Envoy=C3=A9=C2=A0:</b> lundi 24 f=C3=A9vrier 2020 19:43<br>
<b>=C3=80=C2=A0:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br>
<b>Objet=C2=A0:</b> *** BULK *** Re: [USRP-users] Issues using TwinRX and x=
310 (phase shift)<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">-------=
---------------------------------------------------------------------------=
----------------------------------------------------<br>
Attention, ce courriel provient d Internet. L emetteur n est peut-etre pas =
celui que=C2=A0vous pensez.
<br>
Merci de considerer ce point en lisant ce courriel, en y repondant, ou en c=
liquant sur les liens.<br>
---------------------------------------------------------------------------=
-----------------------------------------------------------</span><span sty=
le=3D"font-size:12pt"><u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal">On 02/24/2020 05:06 AM, VAILLANT.Etienne via USRP-us=
ers wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Hi all,</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I would like to perform DOA mea=
surements and I am using a USRP x310 with two TwinRX.</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">First I am trying to perform so=
me very basic tests in order to understand what I am doing: I generate a CW=
 at 1850 MHz, going through a power splitter (4-ways 0=C2=B0), feeding the =
4 inputs of the two TwinRX (A:0, A:1 and
 B:0, B:1).</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I save the raw IQ data via Gnur=
adio Companion in a file and I repeat the procedure several times, generati=
ng several files. All the files are saved with the same USRP tuning (I don=
=E2=80=99t stop or retune the signal/USRP between
 two acquisitions). Basically I just click on a <i>Save</i> QT GUI Check Bo=
x in GRC many times which triggers a
<i>File Sink</i> block and thus generates as many files.</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Then I want to re-plot the sign=
als from the IQ data via Matlab, and my problem is that I get some differen=
t phase shift between the signals. Please find attached a screenshot of 12 =
identical acquisitions (12 successive
 clicks on <i>Save</i>). What is important to me is the phase shift between=
 the two signals, and I expected it to be identical in all cases (since all=
 the acquisitions are identical). It seems to be OK for almost all the acqu=
isitions, except for the 8, 9 and
 10, where the phase shift is different from all the others (and the three =
of them look identical=E2=80=A6). I have perform this test several times an=
d every time some random acquisitions are shifted from the others (sometime=
s there are 2 or 3 different values of phase
 shift, it is not always 90=C2=B0 or else).</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">There is something I misunderst=
ood or I do wrong but I can=E2=80=99t find what. I have read some people wi=
th a similar issue discussing about the function
<i>set_time_now()</i> but I don=E2=80=99t really know how to deal with it.<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">To acquire the signal I am usin=
g either <i>
UHD: USRP Source</i> block with 4 channels or the <i>TwinRX USRP Source</i>=
 block. In the first case, LO parameters are the following:</span><u></u><u=
></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-GB">Ch0 Source Internal / export True=
</span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-GB">Ch1 Source Companion / export Fal=
se</span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-GB">Ch2 Source External / export Fals=
e</span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><span lang=3D"EN-GB">Ch3 Source External / export Fals=
e</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I work on <i>Ubuntu</i> 18.04 (=
I can=E2=80=99t change since some other activities rely on this computer).<=
/span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><i><span lang=3D"EN-GB">GRC</span></i><span lang=3D"EN=
-GB"> 3.7.10.1 (minimum version required for
<i>gr-doa</i> application)</span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><i><span lang=3D"EN-GB">UHD</span></i><span lang=3D"EN=
-GB"> 3.10.3.0 (with the v3.10.1.0 recommended for
<i>gr-doa </i>application, my TwinRX were not detected (<i>Unknown</i>) via=
 <i>uhd_usrp_probe</i>)</span><u></u><u></u></p>
<p><u></u><span>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><u></u><i><span lang=3D"EN-GB">gr-doa</span></i><span lang=3D=
"EN-GB"> installed from source but all the make test have failed (I guess t=
his is another topic since I don=E2=80=99t use
<i>gr-doa</i> functions in my basic test presented above?). </span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am quite a new comer to this =
SDR world, thus any help would be much appreciated, thanks very much in adv=
ance!</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Kind regards,</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span>Etienne VAILLANT</span></b><u></u><u></u></=
p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:&quot;Time=
s New Roman&quot;,serif"><u></u>=C2=A0<u></u></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:12pt;font-family:&quot;Times New Roman&quot;,serif">Perhaps you could sha=
re your GRC flow-graph with us?<br>
<br>
Also, there have been some phase-offset fixes in later versions of UHD, but=
 it&#39;s not clear at this point whether that applies in your case or not,=
<br>
=C2=A0 which is where having the GRC flow-graph to look at would be useful.=
<br>
<br>
Cheers<u></u><u></u></span></p>
</div>
<pre>______________________________________________________________________=
_____________________________________________________________

This email and any attachments are confidential to the intended recipient a=
nd may also be privileged.
If you are not the intended recipient please delete it from your system and=
 notify the sender.=20
You should not copy it or use it for any purpose nor disclose or distribute=
 its contents to any other person.
=20

Ce courriel et ses pieces-jointes sont envoyes de maniere confidentielle et=
 doivent etre traites avec attention.
Si vous n&#39;etes pas le destinataire, merci de le detruire et d&#39;en in=
former son auteur.=20
Vous ne devez pas copier, utiliser, reveler ou diffuser son contenu a quico=
nque.
</pre></div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000317b4b059ffaedfd--


--===============0770203414624170988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0770203414624170988==--

