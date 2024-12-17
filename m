Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0159F4FAA
	for <lists+usrp-users@lfdr.de>; Tue, 17 Dec 2024 16:43:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF50F385A08
	for <lists+usrp-users@lfdr.de>; Tue, 17 Dec 2024 10:43:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734450231; bh=DnNJkbO2gRAPamALwugLsGQiAruHVEa7Kot4fCPkbWI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WPFfE50SDqP69zrOBRoVd5nGMtc6p4MUDu7+dvwZ0L8niPZdsYw8tckUkYVLb0vwe
	 24UGujKW4Ai75FM3hkOalhD2Ld3/MGpPJsImVRDl61LdGUx8GAfbokQMMKMpiLflGs
	 rjxvQdZLZLQWvc6AtmPSG4refE9n4tctVMhW1nGUxxEwk9FpE3vxW0Dx4JElyg2cPJ
	 /7ZAl4mhKCCnwpIeFW/36i3zquTY2INLeBZaZnsiWr8mSly9LqCwTnzBg8B8dKMI2J
	 NOayRfym32UPfZ/hRm4N13UELaP/xiAPtG4TI4HwL/rxVbDchJwVpoWXLt6J69klAg
	 L319zaBIQzmMQ==
Received: from smtp.freepro.com (smtp.freepro.com [88.212.152.147])
	by mm2.emwd.com (Postfix) with ESMTPS id CEB5938534D
	for <usrp-users@lists.ettus.com>; Tue, 17 Dec 2024 10:43:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=novagrid.com header.i=@novagrid.com header.b="ZXI6to9u";
	dkim-atps=neutral
Received: from mail.novagrid.com (unknown [IPv6:2a05:6e02:104a:e10:9209:d0ff:fe1f:9359])
	by smtp.freepro.com (Postfix) with ESMTPS id 4YCLgm4C1yzcgyK
	for <usrp-users@lists.ettus.com>; Tue, 17 Dec 2024 16:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novagrid.com;
	s=default; t=1734450211;
	bh=QVKcPDQ9yClsrtgRfdbJMIW15mo/0C8hbPt1NRIUu6I=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=ZXI6to9uIovnoPZAmXaoVk3tjVRhG4ZNCloN3ThCgajYXNvd4EIe1gWX5njH+AI3c
	 +Qby/3FDHJnQJLnMFpBH2u+n/4/gMimdmr34GsOzeXzWHRfghv1ysykYHJQlIgKvpo
	 NbbecO5I1+V7Vmcby2wpA1F1ouK9T37QBp7BoYHs=
Message-ID: <9512fe80-00ae-b262-e6f0-9c142fb67855@novagrid.com>
Date: Tue, 17 Dec 2024 16:43:31 +0100
MIME-Version: 1.0
Content-Language: en-US, fr
To: usrp-users@lists.ettus.com
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <5fbd3c1d-1ab1-f199-7419-a670665f37f4@novagrid.com>
 <c9c6714e-8ef3-48ba-8a90-25be1f6b2285@gmail.com>
 <CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmail.com>
 <c37f7c4c-5415-4f27-abe8-0155943f6d3b@gmail.com>
From: Christophe Grimault <christophe.grimault@novagrid.com>
In-Reply-To: <c37f7c4c-5415-4f27-abe8-0155943f6d3b@gmail.com>
X-Synology-Spam-Status: score=-0.1, required 5, T_FILL_THIS_FORM_SHORT 0, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, HTML_MISSING_CTYPE 0, TO_DN_NONE 0, TO_MATCH_ENVRCPT_ALL 0, __NOT_A_PERSON 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, HTML_MESSAGE 0.001, ARC_NA 0, RCPT_COUNT_ONE 0, MISSING_XM_UA 0, MIME_TRACE 0, __FILL_THIS_FORM_SHORT 0, __THREADED 0, __TO_NO_BRKTS_PCNT 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Message-ID-Hash: KH2Y5TH6UX5DX75ACUBST3EC4MIHNHEI
X-Message-ID-Hash: KH2Y5TH6UX5DX75ACUBST3EC4MIHNHEI
X-MailFrom: christophe.grimault@novagrid.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KH2Y5TH6UX5DX75ACUBST3EC4MIHNHEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2997275662512681215=="

This is a multi-part message in MIME format.
--===============2997275662512681215==
Content-Type: multipart/alternative;
 boundary="------------fSDuNMuITaz2YTL5D79kFvm4"
Content-Language: en-US, fr

This is a multi-part message in MIME format.
--------------fSDuNMuITaz2YTL5D79kFvm4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Marcus, Brian,

Regarding your question about the device type, I'm using X300 with 2=20
twinrx under uhd 4.5.

I added some correlation + interpolation to get the accurate delay.=20
Here's the results :

  * with rx_rate0 =3D 2 *rx_rate1 I get around 11.68 samples in delay, as
    per below, whatever rx_rate0 in [390625.0*8, 390625.0*4, 390625.0*2]

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 delay_f =3D -11.680166, delay_f/rx_rates[0] =3D -3.73765e-06,=20
delay_i =3D -12, phi =3D 0.6401

  * with rx_rate0 =3D 4 *rx_rate1 I get around 17.52 samples in delay, as
    per below, whatever rx_rate0 in [390625.0*8, 390625.0*4]

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 delay_f =3D -17=
.52644, delay_f/rx_rates[0] =3D -5.6084e-06,=20
delay_i =3D -18, phi =3D -0.3705

As this delay seems consistent and depends only on the rate ratio, I=20
suspect, as you suggested, some difference in down-sampling stages=20
introduce a delay. I tried to see if this delay is some=20
multiple/congruence of the master clock but could not find any.

Also, with that script I get this error :

 =C2=A0[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush=
!

I run into this issue at least 50% of the time. And then one of the=20
buffers, sometimes both buffers, are empty. Still trying to figure out=20
why...


Thanks anyway, as I make substantial progress with you ;-)

Chris


Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
www.novagrid.com

Le 16/12/2024 =C3=A0 20:26, Marcus D. Leech a =C3=A9crit=C2=A0:
> On 16/12/2024 14:24, Brian Padalino wrote:
>>
>>
>> My guess is that you're going through another Halfband FIR filter=20
>> somewhere, so there is group delay that isn't being accounted for in=20
>> the digital filters.
>>
>> What is the lag (in samples) of the lower rate sampled signal?
>>
>> Brian
> That was my other thought, assuming that the streams really are=20
> starting at the same time--different group delay
> =C2=A0 due to the different sample rates.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------fSDuNMuITaz2YTL5D79kFvm4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Marcus, Brian,</p>
    <p>Regarding your question about the device type, I'm using X300
      with 2 twinrx under uhd 4.5.</p>
    <p>I added some correlation + interpolation to get the accurate
      delay. Here's the results :</p>
    <ul>
      <li>with rx_rate0 =3D 2 *rx_rate1 I get around 11.68 samples in
        delay, as per below, whatever rx_rate0 in [390625.0*8,
        390625.0*4, 390625.0*2] <br>
      </li>
    </ul>
    <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 delay_f =3D -11.680166, delay_f/rx_rates[0] =3D
      -3.73765e-06, delay_i =3D -12, phi =3D 0.6401</p>
    <ul>
      <li>with rx_rate0 =3D 4 *rx_rate1 I get around 17.52 samples in
        delay, as per below, whatever rx_rate0 in [390625.0*8,
        390625.0*4] </li>
    </ul>
    <p>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 delay_f =3D=
 -17.52644, delay_f/rx_rates[0] =3D
      -5.6084e-06, delay_i =3D -18, phi =3D -0.3705<br>
    </p>
    <p>As this delay seems consistent and depends only on the rate
      ratio, I suspect, as you suggested, some difference in
      down-sampling stages introduce a delay. I tried to see if this
      delay is some multiple/congruence of the master clock but could
      not find any.</p>
    <p>Also, with that script I get this error :</p>
    <p>=C2=A0[WARNING] [RFNOC::GRAPH] One or more blocks timed out during
      flush!</p>
    <p>I run into this issue at least 50% of the time. And then one of
      the buffers, sometimes both buffers, are empty. Still trying to
      figure out why...</p>
    <p><br>
    </p>
    <p>Thanks anyway, as I make substantial progress with you ;-)</p>
    <p>Chris<br>
    </p>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com">ww=
w.novagrid.com</a></pre>
    <div class=3D"moz-cite-prefix">Le 16/12/2024 =C3=A0 20:26, Marcus D. =
Leech
      a =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c37f7c4c-5415-4f27-abe8-0155943f6d3b@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 16/12/2024 14:24, Brian Padalino
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4ryoiWnLRActkNZ-E+hSBog5wt38NGVwP1cp90Qq00qA@mail.gmai=
l.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div dir=3D"ltr"><br>
          <div class=3D"gmail_quote gmail_quote_container">
            <div><br>
            </div>
            <div>My guess is that you're going through another Halfband
              FIR filter somewhere, so there is group delay that isn't
              being accounted for in the digital filters.</div>
            <div><br>
            </div>
            <div>What is the lag (in samples) of the lower rate sampled
              signal?</div>
            <div><br>
            </div>
            <div>Brian</div>
          </div>
        </div>
      </blockquote>
      That was my other thought, assuming that the streams really are
      starting at the same time--different group delay<br>
      =C2=A0 due to the different sample rates.<br>
      <br>
      <br>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------fSDuNMuITaz2YTL5D79kFvm4--

--===============2997275662512681215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2997275662512681215==--
