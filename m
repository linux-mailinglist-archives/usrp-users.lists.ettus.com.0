Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MG1rH9Iil2lAvAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 15:48:50 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB915FC07
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 15:48:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78653385A6F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:48:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771512528; bh=g75wPK3OUWRGx2sm7cu9mqmlMEWwhLsanpBT6n4Y6v8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=sq5h5NWo1CTbg7BRols0AuHQEQ398yDaaBuPz4dy8zKolUdSO1dxTIB1jvS+P6Awk
	 g5PJOV5+wKmcEh1mwXVpkQMdeAn2gMM5DrubUAyKDCkYvbR+SFI/7LAWpvA/jq8Ah5
	 QVkiyR+kfL3ahlVAblqU+U9ngzDCymsq7Hda9wfinYd8Ml7KXMN8+ImfvZEU9ubhgP
	 fR2CAmr3lSy9W8YX/RA2i9O38mS28F0vUWkQ5CgshjXcaLuFozmnuuBJODzCo1sx+V
	 Ftk8mu3hDRP0gK4rGLw1r7pUXGECYYNE2g3C6kWg+UO8CDKARVkEcyStNS3pFwgP4d
	 J9IwXpS/cXIfQ==
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	by mm2.emwd.com (Postfix) with ESMTPS id ED988384E77
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 09:48:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AQlB9Ro5";
	dkim-atps=neutral
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-649dbff9727so1035566d50.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 06:48:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771512491; cv=none;
        d=google.com; s=arc-20240605;
        b=U5RfpwLeJNGXEXOxz3i9+WWyV7F7Sl8lQOILAmpMPchE7B9l/CQAWxdeUrjSSv0ANA
         09PrywH9e4FruuPVJ8wrbpO0JObvoXIpOOYutyn0HhYJDX50HyCOlv1xA9W5qIXM3S6V
         2MgmeulfyQrEE2Xc2kX7qTv3+WjIvLcJ1Kg36g58dBRp/z1vNkSYQo1FXOmu1AVcksQS
         D4Xt6BpsbtfpC8Lvb3JrJx2MMJoFZOumMPhU7qAYbf2W+cr6Epg0ga8XjGSlv5ph4Fim
         BMHYi+teD3XqMGK5Zy9rCF936ym4a2vDXAkYCbs7n0+M4jK2ZLP/YR3ecmJLDzo5DUD/
         2/ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jwzpcuGo1El3ZI3C76emz9kLkaMGbarCOLwO880wah8=;
        fh=cAU1CtYvR3ew8ZgRA79FiHfwcVu5AMySgSggALul32A=;
        b=POyMzYDhSthYCpl1j+pfBJuK4xfPJ1bzlEbpn+9vs+KRonq1gwA+/6gbyIbpph2c1m
         JXIZkgVsKF4m9UIHzpR9xuhrKmGoiR7jMumEW/J6eoFiVvEob/0fBQ78dc+6upZXHfDj
         MKTjgcDgO2R5ukXK4OxWKCtSUuuIIQllZLZH+esQBggw+fohbrVK1BnkVdb0iBDDI+A2
         RoaT9+6U49DqotcoqCFOKSywDi4Irsf+X+UObYdW0tmrc6M5vNDZVsKiqTyi2Kwj6oV+
         57LTo3T3Nm93FaKWdb5+yjvi+BJXzCx4EKCR7lUKkg2/hQG+Nr+nP8CGZVjHHFTZaTzj
         RoFw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1771512491; x=1772117291; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jwzpcuGo1El3ZI3C76emz9kLkaMGbarCOLwO880wah8=;
        b=AQlB9Ro58wtNwpT7kX8DcDwDNOM45sIaDmhDyb3QnMLJZHyKBYY6cE8AtyFmO61xB3
         /AORLDrJ2oMeOAqd5cp3WR+MIadTwe71HSAgWbhvSNkToywjGKStpaRA7di2fr5CBV9Z
         ppAnW6OZOJlskXzLc2NKY7u0gHGMzzu0tKA10PynPCz+sr2NXEbmLtz9doLxZerjeMNb
         +sG28m65t42uzaSEm+DriLHBimJKUdca/VyhYS8Z6xf0PREGf51dkWROpUpPVN9kpD/n
         aGLX73DH3ZN7YAnZeHpw/m2CetGZ35zCun7LbHeOQYqJMDwCvGdag+n9vbz4OtdnNUpR
         8jrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771512491; x=1772117291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwzpcuGo1El3ZI3C76emz9kLkaMGbarCOLwO880wah8=;
        b=XOPjgwfUg2mzrSlQ4wjKhTTLHREWL+Bmwf66uwvCxQceTDjH2OyKT9BgtiogDVhGvC
         wTXsCoWF5rGT46KMSxxaJOQaYpk8DgLQbzKSgpxVQG4Ti0epyLe8vHA6Xj0EQx1rlvPV
         tChIagUMpFIKLRd03nBP1h3bgBRdydWrz4zF6XJCmKXFTI3HHAl7Z2Cnj7EvvvhIQBA3
         dvEvhRZePm7zKJfVW2AFRDTlrlSRlu206PtpgPO8I4geOyEtAzqcjS+3v9B/tizh8XsR
         0eR6W1Y+4MuWb9n8eTuw61F2C89sszmIr10ku79PGjebBZJoaGNqz5s17eMVZbVPtW9F
         syMQ==
X-Gm-Message-State: AOJu0YxeCBkJ7/ShJU2nDzWGzw1/Og929rXF2avk6TLqlHIyL2UMcpps
	wspN2Z+Xt+2yrGm9WS0BkxWIvBqGmnyW+RknN1lDI/vqBaT4uqrjiAMpBZcxLuFR4tlNzLkh9E+
	SW8l2NZATHd+9b/fwvEUDEvWisVrJBaLN1kXzyPSVR31c0ONjvsU=
X-Gm-Gg: AZuq6aLo9QXoQOjLnLjLAHZF7SU6gLphtbCUd5oCYT01XEFFll2LxYaNbIM9xWmjgbv
	xfunjNoqJ9pmXkyNLzhdn0yHY/Iyn5w7zSrF5nTJctj1nKJ8h3f1ZLHICHMuua0UPRHfkSoEAlH
	ikXPhysqAd3ZocDLosM/xC4L277toaC3bjIzLXDP5DhEHLiIzPwu3kSDz1Ro5cGi7K7Ff4zV0nI
	EkdHwJDPbMk2DPAtfb0BZF5bm2USKfXJ8VOfoLkDV6lijXPwONCAe4SOtD0ycsf2LEY8C4kKuMD
	eJw1jAOeGHmWGBvC3zJ4Kijku4byMyOcbabpyHs=
X-Received: by 2002:a05:690e:1513:b0:64a:d6fa:2c6b with SMTP id
 956f58d0204a3-64c21b6f41fmr13653595d50.76.1771512491242; Thu, 19 Feb 2026
 06:48:11 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
 <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
 <CAFOi1A50oN_=rkq1NSsZT_YbfOV5NHaLpv5Tz+qxHFDL2niUvg@mail.gmail.com>
In-Reply-To: <CAFOi1A50oN_=rkq1NSsZT_YbfOV5NHaLpv5Tz+qxHFDL2niUvg@mail.gmail.com>
Date: Thu, 19 Feb 2026 09:48:02 -0500
X-Gm-Features: AZwV_Qgabbt5ilYG6s4or-6SFj9TltacP7DUoCxqKkr3XtGhUFReUBH3KMMYeZc
Message-ID: <CAB__hTSD_3qWxWz2gVa_Ac4fkYCDwr_0-GB-p0oYJJmWt+7SGg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: STSKBJUTE7GWPKGDV4SBO2LOG73HVEQX
X-Message-ID-Hash: STSKBJUTE7GWPKGDV4SBO2LOG73HVEQX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/STSKBJUTE7GWPKGDV4SBO2LOG73HVEQX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6482152457595100371=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nd.edu:replyto,nd.edu:email,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 8AEB915FC07
X-Rspamd-Action: no action

--===============6482152457595100371==
Content-Type: multipart/alternative; boundary="000000000000c19e59064b2e640a"

--000000000000c19e59064b2e640a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,
For my own understanding,....  Although the endpoint buffers don't use DRAM
as you pointed out, the replay block acting as a FIFO does, correct?  So,
if the first block on the FPGA side of the endpoint is the replay block,
won't you achieve the goal of a large FIFO. In other words, in this
scenario, isn't it basically guaranteed that the endpoint buffer will not
fill up (prior to the replay DRAM filling up) since it will be able to dump
into the replay DRAM (and assuming that you don't exceed the DRAM
bandwidth)?
Rob

On Thu, Feb 19, 2026 at 7:21=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

> One important thing to point out is that we do *not* use DRAM for the
> buffers, we use BRAM (of which much less is available). The requirement f=
or
> an endpoint buffer is that we can write to it synchronously. This is not
> possible with DRAM, you must go through a memory interface, and then wait
> for your write cycle, etc. The default Tx buffers are therefore already
> close to the limit. If you want to increase it, you typically have to
> change the design (e.g., take away the buffer from channel 1 and put it o=
n
> channel 0). But then you need to rebuild the image, which you're trying t=
o
> avoid.
>
> The 1 GiB of PL-DRAM memory included with the N320 is fantastic for
> storing large amounts of memory, e.g., for capture/replay. The *average*
> throughput of the DRAM is also fast enough to capture both channels at ma=
x
> rate (it's just that average throughput is not the only requirement for a=
n
> endpoint buffer). So if you can do replay/capture, then you're good. You
> can also try the replay_buffered stream arg, although it's not a silver
> bullet. It helps in some scenarios but not others, YMMV.
>
> --M
>
> On Tue, Jan 27, 2026 at 8:01=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
>> Thanks.  I saw notes that seem to indicate that option. Anyone at
>> Ettus/NI care to chime in as to how to do it?  I found an example for E3=
20
>> that shows an RFNoC .yml with a dram FIFO.  I could make one for N320, b=
ut
>> it is not clear how to use it from gnuradio.
>> ------------------------------
>> *From:* Rob Kossler <rkossler@nd.edu>
>> *Sent:* Tuesday, January 27, 2026 6:45 AM
>> *To:* Eugene Grayver <eugene.grayver@aero.org>
>> *Cc:* usrp-users <usrp-users@lists.ettus.com>
>> *Subject:* [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>>
>>
>> *Do not open links or attachments unless you recognize the sender. If
>> unsure, click the Report Phish button or forward the email to OPSEC. *
>> Hi Eugene,
>> I "think" that the replay block can act as a FIFO in recent UHD images.
>> But, there is a possibility I am wrong such that there is a build-time
>> parameter that is needed to config this.  Another option would be DPDK i=
f
>> you are not already using it.
>> Rob
>>
>> On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@a=
ero.org>
>> wrote:
>>
>> Hi,
>>
>> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has =
1
>> GB of DRAM.  I am getting occasional underflows when streaming at 200 Ms=
ps,
>> even though the CPU is not very loaded and easily meets the average
>> throughput.
>>
>> I have done all the usual stuff =E2=80=94 isolated cores, pin threads to=
 cores,
>> etc.
>>
>> Is there a way to increase the default DRAM buffer size w/out rebuilding
>> the FPGA image?
>>
>> Thanks.
>>
>> Eugene Grayver, Ph.D.
>> Principal Engineer
>> 310-336-1274
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c19e59064b2e640a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div>For my own understanding,....=C2=A0 Althoug=
h the endpoint buffers don&#39;t use DRAM as you pointed out, the replay=C2=
=A0block acting as a FIFO does, correct?=C2=A0 So, if the first block on th=
e FPGA side of the endpoint is the replay block, won&#39;t you achieve the =
goal of a large FIFO. In other words, in this scenario, isn&#39;t it basica=
lly guaranteed that the endpoint buffer will not fill up (prior to the repl=
ay DRAM filling up) since it will be able to dump into the replay DRAM (and=
 assuming that you don&#39;t exceed the DRAM bandwidth)?</div><div>Rob</div=
></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Feb 19, 2026 at 7:21=E2=80=AFAM Martin Braun=
 &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>One important thing to point out is that we do *not* use DR=
AM for the buffers, we use BRAM (of which much less is available). The requ=
irement for an endpoint buffer is that we can write to it synchronously. Th=
is is not possible with DRAM, you must go through a memory interface, and t=
hen wait for your write cycle, etc. The default Tx buffers are therefore al=
ready close to the limit. If you want to increase it, you typically have to=
 change the design (e.g., take away the buffer from channel 1 and put it on=
 channel 0). But then you need to rebuild the image, which you&#39;re tryin=
g=C2=A0to avoid.</div><div><br></div><div>The 1 GiB of PL-DRAM memory inclu=
ded with the=C2=A0N320 is fantastic for storing large amounts of memory, e.=
g., for capture/replay. The *average* throughput of the DRAM is also fast e=
nough to capture both channels at max rate (it&#39;s just that average thro=
ughput is not the only requirement for an endpoint buffer). So if you can d=
o replay/capture, then you&#39;re good. You can also try the replay_buffere=
d stream arg, although it&#39;s not a silver bullet. It helps in some scena=
rios but not others, YMMV.</div><div><br></div><div>--M</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 27=
, 2026 at 8:01=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayv=
er@aero.org" target=3D"_blank">eugene.grayver@aero.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.=C2=A0 I saw notes that seem to indicate that option. Anyone at Ettu=
s/NI care to chime in as to how to do it?=C2=A0 I found an example for E320=
 that shows an RFNoC .yml with a dram FIFO.=C2=A0 I could make one for N320=
, but it is not clear how to use it from gnuradio.</div>
<div id=3D"m_-1825515750492054494m_-4152883299313261974appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1825515750492054494m_-4152883299313261974divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=
=3D"#000000"><b>From:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 6:45 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);font-si=
ze:10pt;padding:1em">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Eugene,
<div>I &quot;think&quot; that the replay block can act as a FIFO in recent =
UHD images.=C2=A0 But, there is a possibility I am wrong such that there is=
 a build-time parameter that is needed to config this.=C2=A0 Another option=
 would be DPDK if you are not already using it.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The default TX buffer for N32x is 128k samples =3D 512 kB.=C2=A0 The box ha=
s 1 GB of DRAM.=C2=A0 I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have done all the usual stuff =E2=80=94 isolated cores, pin threads to co=
res, etc.=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_-1825515750492054494m_-4152883299313261974x_m_-821198415052638=
2119Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c19e59064b2e640a--

--===============6482152457595100371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6482152457595100371==--
