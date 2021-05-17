Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15225383D3B
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 21:24:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA6E738448A
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 15:24:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="sb0dROAF";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id D1A63383BF6
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 15:24:04 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id f18so6927132qko.7
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 12:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=5lhZxCl3S0o93rTHumwljJHBMPOPKsB79D+m1ekGDz0=;
        b=sb0dROAFbx965n4Fwq3fIYvN9TloWSNVAvAamZxU120k310ruiiZGhnqIsoS3iYfNW
         tYH6cJksQeiIJ7bJ/z9gwE+vToKXXfHlihuzf6cb2wUnGuXtxhF50f2AOcJr9uFs+3RW
         EeKMm9krlbfbTLx7HO7JbVd+AkCgbckQjv090zbQ43MlQNBtdQpDcjGmlcQBge4FLam2
         I4hibg+HaNX+/IhzM1YxJij+YZLhJPdR9y+NCIPRDhChoG2D9S8SfHRFbUJB+p3/1AVa
         F09VG2d9wMbQFCimmgluFIWAcjFPnQx9no5/KoGY0nXHZPiPuBTcfzl2kFMa2HR2in0R
         l7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=5lhZxCl3S0o93rTHumwljJHBMPOPKsB79D+m1ekGDz0=;
        b=e6MLX61qQ/2V6iZ/R05O6Ur5ZZK7w2fcgupyZeFFF9yQCcV6CiEGrkftrSBl1FBv5F
         xT6Gm7YYlFuX2LEVUuNiz7Sq96QS7zObjjKQf825rcKWYZ60+4cExS5MVbu3pSlVpbh2
         5DLhUe2auLqhHSZVeFoGhSLMPQTEl090x/ok1zAeeh7d7qCyKZ6N0muLyr4IXa6KDxV6
         RdBduepPmmkYfRWhvtS8BxcSPb4ghJ+mDihE4UvTgavWO9NPBz7zu1dVzZIw3OeDjoZ8
         2JFmHCbiGCuDtauvc2oj44a+KmAPceMs4eU4hLH5Ev0ZRj5Q+32P16K8JNgIn91jcjUM
         O5dw==
X-Gm-Message-State: AOAM530QGI5YpfDXLkRU4qKHVbrhTKrcbA6262a7kPE1TFI435xLVpZr
	UcilUO/0uRpErySF2fNZXMoXfPQh0FQ=
X-Google-Smtp-Source: ABdhPJyRi8e3r8+NMdathPkMeM6Pli5seIPnppwsUmdFeM8gjWP9Z7dFZEf9xZFxh0TKK8d0woPCiw==
X-Received: by 2002:a37:7246:: with SMTP id n67mr1377213qkc.71.1621279443938;
        Mon, 17 May 2021 12:24:03 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id u2sm10961486qkk.75.2021.05.17.12.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 12:24:03 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 17 May 2021 15:24:02 -0400
Message-Id: <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com>
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
In-Reply-To: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: HKNWMQBKTCVHN2SJ2727HZHTKGJC32JM
X-Message-ID-Hash: HKNWMQBKTCVHN2SJ2727HZHTKGJC32JM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HKNWMQBKTCVHN2SJ2727HZHTKGJC32JM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3368143165340211601=="


--===============3368143165340211601==
Content-Type: multipart/alternative; boundary=Apple-Mail-C5FCAA4E-B260-4AAF-9508-FAABB1C0FB58
Content-Transfer-Encoding: 7bit


--Apple-Mail-C5FCAA4E-B260-4AAF-9508-FAABB1C0FB58
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You haven=E2=80=99t said what type of daughter cards you=E2=80=99re using.=20=


Nor exactly how you=E2=80=99re setting things up
In your software.=20

Sent from my iPhone

> On May 17, 2021, at 1:56 PM, Zeng, Huacheng <huacheng.zeng@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> An update - I update UHD to 4.0 version and run the code again. With this v=
ersion I got some warning message (see below). Did I set up the X310 usrp im=
properly?
>=20
>=20
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.HEAD-0-=
g90ce6062
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> RX channel num: 2
> TX channel num: 2
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> tx_max_num_samps =3D 364
> rx_max_num_samps =3D 364
>=20
> Thanks,
> Hua
>=20
>> On Mon, May 17, 2021 at 12:04 PM Huacheng Zeng <zenghuacheng@gmail.com> w=
rote:
>> Hi all,
>>=20
>> I am using X310 as an MIMO transmitter to send two data streams. I observ=
ed from the received signal that the two data streams are misaligned in the t=
ime domain. I suspect that it is the X310's timing/frequency synchronization=
 problem. Below is the output information. Is there any C++ API reference fo=
r setting up X310 as a MIMO transmitter/receiver? Any suggestions would be a=
ppreciated.
>>=20
>> Thanks,
>> Hua
>>=20
>>=20
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
3.1.HEAD-0-gbbce3e45
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 31804F1
>>     addr: 192.168.10.2
>>     fpga: HG
>>     name:
>>     product: X310
>>     type: x300
>>=20
>>=20
>>=20
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
3.1.HEAD-0-gbbce3e45
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [INFO] [GPS] No GPSDO found
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1292 MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>> Actual RX Freq: 915.000000 MHz...
>> Actual TX Freq: 915.000000 MHz...
>> Actual RX Rate: 2.000000 Msps...
>> Actual TX Rate: 2.000000 Msps...
>> Rx antenna is RX2
>> Tx antenna is TX/RX
>> Actual RX Gain: 0.000000 dB...
>> Actual TX Gain: 15.000000 dB...
>> Actual RX Bandwidth: 2.000000 MHz...
>> Actual TX Bandwidth: 2.000000 MHz...
>> Actual RX Freq: 915.000000 MHz...
>> Actual TX Freq: 915.000000 MHz...
>> Actual RX Rate: 2.000000 Msps...
>> Actual TX Rate: 2.000000 Msps...
>> Rx antenna is RX2
>> Tx antenna is TX/RX
>> Actual RX Gain: 0.000000 dB...
>> Actual TX Gain: 15.000000 dB...
>> Actual RX Bandwidth: 2.000000 MHz...
>> Actual TX Bandwidth: 2.000000 MHz...
>> RX channel num: 2
>> TX channel num: 2
>> tx_max_num_samps =3D 364
>> rx_max_num_samps =3D 364
>> =20
>>=20
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-C5FCAA4E-B260-4AAF-9508-FAABB1C0FB58
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You haven=E2=80=99t said what type of daugh=
ter cards you=E2=80=99re using.&nbsp;<div><br></div><div>Nor exactly how you=
=E2=80=99re setting things up</div><div>In your software.&nbsp;<br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On May 17, 2021, at 1:56 PM, Zeng, Huacheng &lt;huacheng.zeng@gmail.c=
om&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<div dir=3D"ltr"><div>An update - I update UHD to 4.0 version=
 and run the code again. With this version I got some warning message (see b=
elow). Did I set up the X310 usrp improperly?</div><div><br></div><div><br><=
/div><div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0=
.HEAD-0-g90ce6062<br>[INFO] [X300] X300 initialization sequence...<br>[INFO]=
 [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200=
 MHz<br><span style=3D"color:rgb(255,0,0)">[WARNING] [RFNOC::GRAPH] One or m=
ore blocks timed out during flush!</span><br>Actual RX Freq: 915.000000 MHz.=
..<br>Actual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 Msps...<=
br>Actual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx antenna is TX=
/RX<br>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 dB...<br>=
Actual RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...=
<br>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 915.000000 MHz...<b=
r>Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx=
 antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>=
Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: 2.000000 MHz...<br>A=
ctual TX Bandwidth: 2.000000 MHz...<br>RX channel num: 2<br>TX channel num: 2=
<br><span style=3D"color:rgb(255,0,0)">[WARNING] [0/Radio#0] Attempting to s=
et tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attempting to set tick=
 rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attempting to set tick rate t=
o 0. Skipping.<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Sk=
ipping.</span><br>tx_max_num_samps =3D 364<br>rx_max_num_samps =3D 364</div>=
<div><br></div><div>Thanks,</div><div>Hua<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, 2021 at 12=
:04 PM Huacheng Zeng &lt;<a href=3D"mailto:zenghuacheng@gmail.com">zenghuach=
eng@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I am using X310 as an=
 MIMO transmitter to send two data streams. I observed from the received sig=
nal that the two data streams are misaligned in the time domain. I suspect t=
hat it is the X310's timing/frequency synchronization problem. Below is the o=
utput information. Is there any C++ API reference for setting up X310 as a M=
IMO transmitter/receiver? Any suggestions would be appreciated.</div><div><b=
r></div><div>Thanks,</div><div>Hua</div><div><br></div><div><br></div>[INFO]=
 [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.13.1.HEAD-=
0-gbbce3e45<br>--------------------------------------------------<br>-- UHD D=
evice 0<br>--------------------------------------------------<br>Device Addr=
ess:<br>&nbsp; &nbsp; serial: 31804F1<br>&nbsp; &nbsp; addr: 192.168.10.2<br=
>&nbsp; &nbsp; fpga: HG<br>&nbsp; &nbsp; name:<br>&nbsp; &nbsp; product: X31=
0<br>&nbsp; &nbsp; type: x300<div><br></div><div><br></div><div><br></div><d=
iv>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
3.1.HEAD-0-gbbce3e45<br>[INFO] [X300] X300 initialization sequence...<br>[IN=
FO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 2=
00 MHz<br>[INFO] [GPS] No GPSDO found<br>[INFO] [0/DmaFIFO_0] Initializing b=
lock control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passe=
d (Throughput: <b><font color=3D"#ff0000">1292</font></b> MB/s)<br>[INFO] [0=
/DmaFIFO_0] BIST passed (Throughput: <b><font color=3D"#ff0000">1299</font><=
/b> MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10=
0000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD=
100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0=
000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0=
000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0=
000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0=
000000000000)<br>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 915.00=
0000 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 M=
sps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.0000=
00 dB...<br>Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: 2.000000=
 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<br>Actual RX Freq: 915.00000=
0 MHz...<br>Actual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 Ms=
ps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx antenna=
 is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 dB.=
..<br>Actual RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 M=
Hz...<br>RX channel num: 2<br>TX channel num: 2<br>tx_max_num_samps =3D 364<=
br>rx_max_num_samps =3D 364<br>&nbsp;</div><div><br></div><div><br></div><di=
v><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-C5FCAA4E-B260-4AAF-9508-FAABB1C0FB58--

--===============3368143165340211601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3368143165340211601==--
