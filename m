Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E03767D1
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 17:20:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FB353841CD
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 11:20:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZSdOBzOC";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3883F383EF0
	for <USRP-users@lists.ettus.com>; Fri,  7 May 2021 11:19:45 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id o1so6866160qta.1
        for <USRP-users@lists.ettus.com>; Fri, 07 May 2021 08:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Q0iP597Q42tQK9750v6LfX18h/U20yXXc8v4puqA7+s=;
        b=ZSdOBzOCYZfz85UKEvDkn7cH6OL1mHX/3b1kk9exEupTyxatRF7X5lV8bCMz9gHq6M
         rldVae0R0M0f5fAxX8vIDPBQC/7wnAcvbVrYXMt+S+PZUBXx3zRr8oyxi7cNxPt1uYe/
         xUnrGAPU4JAHDqlw4R0V28VIRs96/wejMQPEHZ/inSSzGO3X+HIeMFdhCpjUU5z8/Xvp
         vXau9v4xTb7cir4bQUy+OW/RCUCSwDVsc/dZ6p8gfK3WkKTRxQcEjTcT/0Flx7+1PoSm
         cGGOjNq4aO5RzbPuwdjMJGhm3rcDyMqhqqi9ju3M18e+gzvWvILtiNfIiR7Z+Sc7qTSA
         nabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Q0iP597Q42tQK9750v6LfX18h/U20yXXc8v4puqA7+s=;
        b=Omqbwr1Eb48Fx8sj/feH0xr3z8IEN4RRVMrUBPbIByKGTi0uT8RCdhK6caQhYyLm77
         D+u/kr1rudxIt3jzMtr4dy25wIckfxhGPFfG2ANUZmDnkUiMpjVBD1tX9/qpT9Ez220d
         yuMMyplXI3a2TvUh5++Ej/epb5jizqi0bXd1R86ay8X8+L30BsLG5RQFElRhIJBRQZJ9
         +KR86PzMZDk0lAUwqWslPMS322JN5/ouv7H+RI2+b0g7knnVpBLwNXGLu/6C1U49XnqH
         piyT5g5fY0gT3EYqCRhcvfDfrrGqLLOPTBAqPHtEgo+7WkCVjsRZYc4hrV6SreC70S2U
         JpGw==
X-Gm-Message-State: AOAM532N6/o3BYUHsjI6UndGDUGoY3O2x12omwuQ2PIo6oYDdwdQHSiu
	5eeoAN1xxA0W4jG1bGrdirQZ8TauI0m2gw==
X-Google-Smtp-Source: ABdhPJxhgXZx6vQl6n0rG5HoHYZVUzlyjE4LpTGt7bAAR5wZ0EA5g5zKJqb96s8T337pUm2bT694Sg==
X-Received: by 2002:ac8:e83:: with SMTP id v3mr9706006qti.25.1620400784442;
        Fri, 07 May 2021 08:19:44 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h188sm5017708qkd.23.2021.05.07.08.19.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 08:19:43 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 7 May 2021 11:19:42 -0400
Message-Id: <F5105DDC-01C9-4AC1-9341-0B388C37012E@gmail.com>
References: <CAErymBh8ud_G-UX50t0Xox12TETNMmgjZcZ8dgmzxJWvMjDxrg@mail.gmail.com>
In-Reply-To: <CAErymBh8ud_G-UX50t0Xox12TETNMmgjZcZ8dgmzxJWvMjDxrg@mail.gmail.com>
To: Achilleas Anastasopoulos <anastas@umich.edu>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: OW2RWOAXK7C5UYZ5C2OWTNBUGDQPT7CO
X-Message-ID-Hash: OW2RWOAXK7C5UYZ5C2OWTNBUGDQPT7CO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp sink burst transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OW2RWOAXK7C5UYZ5C2OWTNBUGDQPT7CO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2027269662352676998=="


--===============2027269662352676998==
Content-Type: multipart/alternative; boundary=Apple-Mail-BB2C653A-01D3-47D3-84A2-B1B9D82087F0
Content-Transfer-Encoding: 7bit


--Apple-Mail-BB2C653A-01D3-47D3-84A2-B1B9D82087F0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I can answer at least one of your questions.=20

The tx_time tag is used for TDMA type applications where the burst *timing* i=
s critical.=20

You send the burst a little in advance with the time tag, and the USRP won=E2=
=80=99t commence transmission until that time.=20

Sent from my iPhone

> On May 7, 2021, at 10:19 AM, Achilleas Anastasopoulos <anastas@umich.edu> w=
rote:
>=20
> =EF=BB=BF
> I posted the following on discuss gnuradio list but I am also posting here=
 in case this is more appropriate.
> ---------------------------------------------------------
> Hi all,
>=20
> I am reading from here:
>=20
> https://wiki.gnuradio.org/index.php/USRP_Sink
>=20
> how to do burt transmission with the usrp_sink.
> My questions have to do with the second option:
>=20
> ----
> Using tagged streams (See Tagged Stream Blocks). To use this capability, y=
ou must specify which string the usrp_sink block should be looking for to de=
note the length of the next PDU to be transmitted. Set the "tsb_tag_name" pa=
rameter in the usrp_sink to whatever string your radio application uses to d=
enote your PDU length. A commonly used string for this purpose is simply "tx=
_pkt_len". If using Tagged Streams for timed bursts, you must include your "=
tx_pkt_len" tag and a "tx_time" tag on the first sample of a tx burst. If yo=
ur first "tx_pkt_len" tag has an offset of 0, and your packet length is 1000=
 items, your next "tx_pkt_len" and "tx_time" tags must appear with an offset=
 of 1000. TX bursts should not overlap, and there should not be gaps in samp=
les between bursts.=20
> ----
>=20
> Q1: why do we need two tags to make this happen? I would think that  "tx_p=
kt_len" tag would be sufficient: when a tag like this is found by the usrp s=
ink then it waits for that many samples to come in and then it transmits the=
m in burst mode. Then it waits for the next such tag and so on.
> What is the meaning/use of the second tag  "tx_time"?
>=20
> Q2: Does the "tx_time" tag have to be exactly that name (as opposed to the=
 "tx_pkt_len" tag which can be user defined?)
>=20
> Q3: The text above is talking about PDU's but my understanding is that a P=
DU is a special type of a PMT, while the USRP sink input has to be a tagged s=
tream, not a PMT/PDU. Should the input be a PDU (to a message port?) or shou=
ld it be a tagged stream?
>=20
> thanks
> Achilleas
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-BB2C653A-01D3-47D3-84A2-B1B9D82087F0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I can answer at least one of your questions=
.&nbsp;<div><br></div><div>The tx_time tag is used for TDMA type application=
s where the burst *timing* is critical.&nbsp;</div><div><br></div><div>You s=
end the burst a little in advance with the time tag, and the USRP won=E2=80=99=
t commence transmission until that time.&nbsp;<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 7, 2=
021, at 10:19 AM, Achilleas Anastasopoulos &lt;anastas@umich.edu&gt; wrote:<=
br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><div>I posted the following on discuss gnuradio list but I a=
m also posting here in case this is more appropriate.</div><div>------------=
---------------------------------------------</div>Hi all,<div><br></div><di=
v>I am reading from here:</div><div><br></div><div><a href=3D"https://wiki.g=
nuradio.org/index.php/USRP_Sink" target=3D"_blank">https://wiki.gnuradio.org=
/index.php/USRP_Sink</a><br></div><div><br></div><div>how to do burt transmi=
ssion with the usrp_sink.</div><div>My questions have to do with the second o=
ption:</div><div><span style=3D"color:rgb(37,37,37);font-family:sans-serif;f=
ont-size:14px"><br></span></div><div><span style=3D"color:rgb(37,37,37);font=
-family:sans-serif;font-size:14px">----</span></div><div><span style=3D"colo=
r:rgb(37,37,37);font-family:sans-serif;font-size:14px">Using tagged streams (=
See&nbsp;</span><a href=3D"https://wiki.gnuradio.org/index.php/Tagged_Stream=
_Blocks" title=3D"Tagged Stream Blocks" target=3D"_blank" style=3D"color:rgb=
(6,69,173);font-family:sans-serif;font-size:14px;background:none;text-decora=
tion-line:none">Tagged Stream Blocks</a><span style=3D"color:rgb(37,37,37);f=
ont-family:sans-serif;font-size:14px">). To use this capability, you must sp=
ecify which string the usrp_sink block should be looking for to denote the l=
ength of the next PDU to be transmitted. Set the "tsb_tag_name" parameter in=
 the usrp_sink to whatever string your radio application uses to denote your=
 PDU length. A commonly used string for this purpose is simply "tx_pkt_len".=
 If using Tagged Streams for timed bursts, you must include your "tx_pkt_len=
" tag and a "tx_time" tag on the first sample of a tx burst. If your first "=
tx_pkt_len" tag has an offset of 0, and your packet length is 1000 items, yo=
ur next "tx_pkt_len" and "tx_time" tags must appear with an offset of 1000. T=
X bursts should not overlap, and there should not be gaps in samples between=
 bursts.&nbsp;</span></div><div><span style=3D"color:rgb(37,37,37);font-fami=
ly:sans-serif;font-size:14px">----</span></div><div><span style=3D"color:rgb=
(37,37,37);font-family:sans-serif;font-size:14px"><br></span></div><div>Q1: w=
hy do we need two tags to make this happen? I would think that&nbsp; "tx_pkt=
_len" tag would be sufficient: when a tag like this is found by the usrp sin=
k then it waits for that many samples to come in and then it transmits them i=
n burst mode. Then it waits for the next such tag and so on.</div><div>What i=
s the meaning/use of the second tag&nbsp; "tx_time"?</div><div><br></div><di=
v>Q2: Does the "tx_time" tag have to be exactly that name (as opposed to the=
 "tx_pkt_len" tag which can be user defined?)</div><div><br></div><div>Q3: T=
he text above is talking about PDU's&nbsp;but my understanding is that a PDU=
 is a special type of a PMT, while the USRP sink input has to be a tagged st=
ream, not a PMT/PDU. Should the input be a PDU (to a message port?) or shoul=
d it be a tagged stream?</div><div><br></div><div>thanks</div><font color=3D=
"#888888"><div>Achilleas</div><div><br></div></font></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-BB2C653A-01D3-47D3-84A2-B1B9D82087F0--

--===============2027269662352676998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2027269662352676998==--
