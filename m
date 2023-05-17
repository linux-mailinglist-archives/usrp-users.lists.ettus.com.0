Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA8D7071E5
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 21:21:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF899384907
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 15:21:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684351274; bh=ELlCt/Wh+mvU3HAxRwUs9AofysVLTY2hnoakwWJYJyg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=THFExTo6WkeRLiQtMeD7ds5YoyU1tU4gVN0oTFtFiGXuC43Yfd8TQ71GpqiQhhlDF
	 cB+hjOuQgSUA1NS/lEwhH7ZN3nIZFbW/4YBkcwR1JojoCHqL8OsQ93hU5E0aebYfOb
	 gWIvbhQ4UHnMA9noPSxaZYWbhhxLNSraGhV2Jt7mzWi/93lK88jCtBRuO7CZGxx1pB
	 5J0ksoEOkCCrNmZWi9cj2ew7XdWmU2JmH4AZUdtrPso8OVGxsfuZmhYogozRJSBZrN
	 6jgXdKao5VduJR6EkOpmZODY2kL+xW9usOUh5VmTSa0UrBLwdP87GcwmXSZL4OiXD4
	 iWlsZAYIxzA0Q==
Received: from sonic306-26.consmr.mail.gq1.yahoo.com (sonic306-26.consmr.mail.gq1.yahoo.com [98.137.68.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 35603383F8A
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 15:20:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="B+3iL3uF";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684351215; bh=TZKqiI2dj+kEuicq4OQskFQITQen1m3OvU0hSPBq1Hg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=B+3iL3uFZOlG/YNZBubiBUriAVoKzIiAzXfNAg289ECnuMUncOJdgcw+SqxdOhgglKWhCfW4k1309kyqu4iJbhEudgRltm9Vt4p6WSWeR0GbTa7XbM7pESBeK38APXG80jDewJw65a/AjP4o5jE8Q/rcSGd5k3S6elAjjunnhyXWLgoi3qmHpFxpqg+moL3zogpXssHVBNz4uk9J65u6TXrPMoiLmqDaLarcBMT3wIX8//faLuwV98KX8tfjTDMeK2HOMWMXdW90R8WQYylv/R5c7CT90B7FrKS71P5LhGbIWbwNHlK691Kh0p/l2BwvnRFM5zQi4K24qYGSjeIOig==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684351215; bh=8jaAMEHEAL8q5vMTjEw7kKfw6mEflsepHxk7JWgEUTb=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=E1ymuUa+47Hwn3FJ5ipGhai5JHxs2pRHErqUFfKke+LOai5pyo0UV5JvPrOCakWf35bxJlpGTVXKMNFIJiM7HcHK0e9JVJ9Dsxgh+SUfXhNqOxtI/kb1rMpW0Zv7IdSnYPaxULhZYMZd6uV8/s1WcWAFrgRrD1sh6S6oBchJU0FqbB6QDgQROA/v7To8wFSg8whtV0GjRJrhfKppi3cPn7jDWgFRWTQWCDPYUg3aZE1IEZ4t2TvvRTBfVMVzRrWhsZ+hGnzg5KXndfRNolQrex/gJQsztnuChJn31gEDlJaBPoZn+X/Cjmq3LWcXTAELHvvg9OLP936i1UlbUvZZ4w==
X-YMail-OSG: 9MLpBz0VM1lk_cjFzqi7iT47x81Ft5D09Zp9Wv9RAdmQwqH5Mzvq4dmAnQadt1y
 jexDCK0cTKFnrzjJmzGg06iYChylgqAgNrFdJJT.HrRzdoYrtwmIJn5p7FrI9p2.XpZsLRf7PD5F
 oYPx.gm_HCtTwXn2146wwJIGI8yy8DnbPsD5a0Sn80QSNFtpymNPbjop_JwKgS4LOnVvzVdNiGc9
 Hrn_6nPT3_UCVQfEuT4OAvFajNDAyRbKlrnHSgZ.oa6z5skREK7jlEXUftZAbXou5I2F81etFv0b
 q3HaC0ZAPRAjZ6nYRwGcSETDux7a4PN8iiZxDdNs4cAwJcLi57DxAKu5B8llTUZPO73FE.6Okc8T
 1kaAXGD5TLBKVNMBt6WrSp_FcTCqUcSiQ89JNFtkj6aKYqb3qjc2mv4DWBT05F6AFj9ee.BlAGPk
 V5Nza6xCuES.SVnd1JrTrURdjC6rs6OlGBScbXztsAbmLgqjPm3eIcgr5DjbYKiOUCn0ZxzcGmn3
 NsmlCRgkObpUBXIt0l4cpQaqTlDwyJ119ZMPxEJGlpKRLlrz8YT49DgIeo3Xa0R6LDpeC4s.tOHG
 DvJGRPOuVWx5qOaKIiVeLpyMDh.fA7o6WVyFAOr5lauLuT1uBKUyPJdgj9OjKEazqyMzDnWsO9lw
 HX2chFY7U0dJt3W8bWoqEeHfeBvG6_QorB88Q_.TJ7Ox.suTJFGUXD9PF39FyvemqmCj049LsAmj
 61UJ6kKCrCVmfNuPt2JCJH2d0qPduKLt7MrIrHZzKQiKNfd4QSzORaOGdQ9GDt6qvlgYCF70.LDA
 Lx7VHEk94gOyvtgQcCoO7ulYoZezX2SFc.inMp.8BvD7zv3Bt1A_VxIrlikRFd_xTLjRYHujHlwA
 y96aMsP3PziBmNlCEFWri8FgfDQjB6zuxl6Y5tg8RphnOduXkyyz7y_HSl7ZGwFDmzcQkD9c.IcZ
 wVZuBTOfYHhTC075BdKvsEjYmsfbQlmU257B2Pg9mlgR6IsBG72qcOZjyyyJd.mUquq6Dy3r9etw
 7RvBQcFOIUShuG6QUJIYtw.tsRpW_jY6brIQ_rM2q.1m0B61hotahb.Wy2v.9lR3BdIPR6LXTHxy
 osV5R.FYpWw9Gs_QQ81bbn0to5u5aBf.viBwmvKXNKH0clTGrv2nsvO4JL4Y6x7DJ71sFgNI4aPY
 XUhy_N_pd9Vo7P35IEdI.4U2SSedLygOPcVUpFaWcdv5Twd.KZek3KoPc5EBmCFRfUX8VEI5a98U
 TPtEWWkt38F6HhVB9PqBh5WSETGXPoN8BndrWKEROsTMDYWTcmPuBHacHhIQs1MSrpfq86Zl0.XY
 e6PwbSS995ETbi1BUBxpNS3M3djdBS4HS9V37Mco9LTQ0AU6MC33RTvcSkF4FLVBSivAvagU4iGD
 3d9tRjwAqEBBJKTm_715dpU50zIIKVA61iYdf8W_UpHsG3MbBX8KBVaqn9CN4jfyXDc03_UmctTE
 NfEaAlAHzdzVvsTsbmw.5_Hv69Sni6tTY1PjgDcZmMYyuF3KkX9zD2owD2d2ON1yayO1lgm_3AB2
 TTDO.VmNrz2r9PuzlaTCzBkJWoKdFNt12UsaITlBilewoGc6Q9jVBQXmurB8eUR2vEO2pocdN5V1
 ZGLh0ebak.ReFaWnNBZr6ec5b6gf0akcv0As96odk_hw9rJ3XtE7g87yO7eRVQ..muA33zXgkyEP
 axdL4Ofja3XDyBdGjGYo7H_0Vu9jBtUeeWVx4yxiaxWYwRMvlFham4XLsi8MREbCcAPaVUkSyNoB
 KtVIAVthFEsJ_ItDOzVacN.aSvKdCGcvvksTFO.k5Tv67I65GRX_5JP4zOf9aupE4utdhNBiIifG
 4.uUbbYNiyECrRmZIb7IQKlnskTsv4BTZ2s6ZVtoShfiAp.cCZsk445KWdXNpUrOGffpmZJ9MAI5
 yivGoceNZPR.lL_jT94LPrdziF.3Z4vkffMZkkgqR4P7nS3l25w.IBvuAs7t8l080upl1Ls4UHpf
 JY_bHywIm52kJ40KnKGh32L1zw3spb6ANzFoWaxJWAXdxp8Y5ayjCVJFmpXfOK7XciUwoV.jKTHN
 TsB.5YMjHEjrTi0TZNT3Mfd824NDnc.tUVed1LyuagEgSZKaLTPsktrRUNKvunfBdGKtzU2ZtY9v
 kuYGMpQoFst9IbKQW.7lct9saFulZfm_mLLPgfY0uuv_6cCHF_bN7RicojOcuceB.uEV87Q--
X-Sonic-MF: <cjohnson@serranosystems.com>
X-Sonic-ID: 4fa64595-954e-40e9-96f8-61ad50f2d56a
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.gq1.yahoo.com with HTTP; Wed, 17 May 2023 19:20:15 +0000
Date: Wed, 17 May 2023 19:20:12 +0000 (UTC)
From: "cjohnson ." <cjohnson@serranosystems.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1054159327.2913169.1684351212412@mail.yahoo.com>
In-Reply-To: <a017cc06-abad-0f0f-88dc-5f26cacda8c0@gmail.com>
References: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com> <a017cc06-abad-0f0f-88dc-5f26cacda8c0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21471 YMailNorrin
Message-ID-Hash: 4MM3TJ3QGMVJV7WKCRGSZABZNQ5CTI5E
X-Message-ID-Hash: 4MM3TJ3QGMVJV7WKCRGSZABZNQ5CTI5E
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4MM3TJ3QGMVJV7WKCRGSZABZNQ5CTI5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5924634532959175068=="

--===============5924634532959175068==
Content-Type: multipart/alternative;
	boundary="----=_Part_2913168_797272020.1684351212410"

------=_Part_2913168_797272020.1684351212410
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Okay, thanks for that information.=C2=A0=C2=A0
What should we try next?
Thanks,--Cy
    On Wednesday, May 17, 2023 at 12:05:39 PM PDT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
  On 17/05/2023 14:49, cjohnson@serranosystems.com wrote:
 =20
=20

Hi Marcus,
=20
I am still interested to know how your team tests to verify the FPGA is sen=
ding the data=E2=80=A6.meanwhile I did two quick experiments based on your =
suggestions.
 I have no visibility into the details of the R&D teams testing apparatus, =
but I have been told that this feature was tested
 =C2=A0 in the automated test jig they use.=C2=A0 That's all I know.
=20
 I'm a (very) part-time contractor, and not an Ettus/NI R&D employee.=C2=A0=
 So I'm singularly unqualified to talk about the
 =C2=A0 test setup.
=20
=20
=20
=20
1) Same setup using the second interface I setup on the network card for th=
e remote port @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=
=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D54321 --ada=
pter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.
=20
Setup netcat -ul 54321 to listen to this port, and can be verified as liste=
ning (bottom line):
=20
 Proto Recv-Q Send-Q Local Address           Foreign Address         State =
    =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* =20
=20
Still no traffic to 192.168.30.30 (remote streaming dest), only control dat=
a between USRP (192.168.30.2) and host (192.168.30.1) when sniffing.
=20
=20
=20
2) Set the dest-addr to be the host (192.168.30.2), which I would think wou=
ld be equivalent to =E2=80=9Cnormal streaming=E2=80=9D. =E2=80=9C./remote_r=
x.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.2 =
--dest-port=3D54321 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=
=80=9D=20
=20
Setup netcat -ul 54321 to listen to this port, and can be verified as liste=
ning (bottom line):
=20
 Proto Recv-Q Send-Q Local Address           Foreign Address         State =
    =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* =20
=20
I don=E2=80=99t see any high speed IQ data going between 192.168.30.1 (host=
) and 192.168.30.2 (USRP), only the normal control trickle.
=20

=20
=20
Thanks,
=20
=E2=80=94Cy
=20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_2913168_797272020.1684351212410
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpb4355ee1yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Okay, thanks for that information.&nbsp;&nbsp;</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">What shou=
ld we try next?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=
=3D"false">--Cy</div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_5088712209" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, May 17, 2023 at 12:05:39 PM PDT, Marcus D=
. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv6486873639"><div>
    <div class=3D"yiv6486873639moz-cite-prefix">On 17/05/2023 14:49,
      <a rel=3D"nofollow noopener noreferrer" shape=3D"rect" ymailto=3D"mai=
lto:cjohnson@serranosystems.com" target=3D"_blank" href=3D"mailto:cjohnson@=
serranosystems.com" class=3D"yiv6486873639moz-txt-link-abbreviated">cjohnso=
n@serranosystems.com</a> wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><p>Hi Marcus,</p>
      <p>I am still interested to know how your team tests to verify the
        FPGA is sending the data=E2=80=A6.meanwhile I did two quick experim=
ents
        based on your suggestions.</p>
   =20
    I have no visibility into the details of the R&amp;D teams testing
    apparatus, but I have been told that this feature was tested<br clear=
=3D"none">
    &nbsp; in the automated test jig they use.&nbsp; That's all I know.<br =
clear=3D"none">
    <br clear=3D"none">
    I'm a (very) part-time contractor, and not an Ettus/NI R&amp;D
    employee.&nbsp; So I'm singularly unqualified to talk about the<br clea=
r=3D"none">
    &nbsp; test setup.<div id=3D"yiv6486873639yqtfd61628" class=3D"yiv64868=
73639yqt9844494158"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <p>1) Same setup using the second interface I setup on the network
        card for the remote port @192.168.30.30, =E2=80=9C./remote_rx.py
        --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30=
.30
        --dest-port=3D54321 --adapter=3Dsfp1
        --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.</p>
      <p>Setup netcat -ul 54321 to listen to this port, and can be
        verified as listening (bottom line):</p>
      <blockquote>
        <pre><code>Proto Recv-Q Send-Q Local Address           Foreign Addr=
ess         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
      </blockquote>
      <p>Still no traffic to 192.168.30.30 (remote streaming dest), only
        control data between USRP (192.168.30.2) and host (192.168.30.1)
        when sniffing.</p>
      <p> </p>
      <p>2) Set the dest-addr to be the host (192.168.30.2), which I
        would think would be equivalent to =E2=80=9Cnormal streaming=E2=80=
=9D.
        =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20
        --dest-addr=3D192.168.30.2 --dest-port=3D54321 --adapter=3Dsfp1
        --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D </p>
      <p>Setup netcat -ul 54321 to listen to this port, and can be
        verified as listening (bottom line):</p>
      <blockquote>
        <pre><code>Proto Recv-Q Send-Q Local Address           Foreign Addr=
ess         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                      =
   =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
      </blockquote>
      <p>I don=E2=80=99t see any high speed IQ data going between 192.168.3=
0.1
        (host) and 192.168.30.2 (USRP), only the normal control trickle.</p=
>
      <p><br clear=3D"none">
      </p>
      <p>Thanks,</p>
      <p>=E2=80=94Cy</p>
      <br clear=3D"none">
      <fieldset class=3D"yiv6486873639moz-mime-attachment-header"></fieldse=
t>
      <pre class=3D"yiv6486873639moz-quote-pre">___________________________=
____________________
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=
=3D"mailto:usrp-users@lists.ettus.com" class=3D"yiv6486873639moz-txt-link-a=
bbreviated">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_=
blank" href=3D"mailto:usrp-users-leave@lists.ettus.com" class=3D"yiv6486873=
639moz-txt-link-abbreviated">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"yqt9844494158" id=3D"yqtfd44069">________=
_______________________________________<br clear=3D"none">USRP-users mailin=
g list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br=
 clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" ymailto=
=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-users-leav=
e@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"><=
/div></div>
            </div>
        </div></body></html>
------=_Part_2913168_797272020.1684351212410--

--===============5924634532959175068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5924634532959175068==--
