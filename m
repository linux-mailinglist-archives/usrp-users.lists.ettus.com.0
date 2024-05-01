Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA798B8BB7
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 16:11:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 490F9385344
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 10:11:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714572698; bh=lr6QjLd9gdNopFe5JaikRPnPF0zCyx0fz0rkYLCIsnU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WEdbo74WiJ0QGtjfIcH8iii/VflY8kdSls+kLcVewZz5emL3i8++d1cv3DnbstVBi
	 tOOXd7s2rN9laBAlj7jkxV/iRqLjRSdg01uUnbZQdbxiwZY4tVPXT9cdvg8AhxCplZ
	 rOMv+O0l9WQ6n5IB/vfa1u6CgHR5lcbEIYRNekm1lilbQ8Pn1odnqcbsGlES7tlSSH
	 fUY9Upg6IAtlYuwVBodqHThjJplBQoWJy5scVn0cE6K4eZX9/wcJ5EBZbyB971iNjz
	 BTW1OeHf4nH3EG2Zf7GLTtdWOtmMuuo3hrdz81Wt9F2Fe3LcRFOK6GFaBBnb6vVxmR
	 1nT1onET0mJ2g==
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 24AD0384CED
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 10:11:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="VKfe4qZT";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714572685; bh=CWhsi19l5rUMrPZy7vr9j5TdEHvxNxX+tACK3bmm6qQ=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=VKfe4qZTX4UBDVFKlMusug/x+HcA6VfJnwKkXDB4pm6IyJDL+oK86zQpt08e30DvawrNVKs/ZMhdzwvzVr+zFm6dWh8O9ZrYZF4uta4904u6/WyctQ8TuQFZ+mJrVbBP68sFt8Jqu0byZ3FRC9VL6B9xvYYi+qRStCAxiGD/mKllHoXDP8eDfhNMMskDk7QB6eSkVbCddzoenVpB41YBTTwQu8Ctfp67fVzK6wAElVhHTyfn/+RMzXjdVsLTehsOIio9Sk4A1fh7fvw4jPSiUlLUdIthxna+JN1JrG5s4NwDAc+UqEtinLPuiXnjfUnbypODGBfsieNKKa0yIRyh2g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1714572685; bh=zMXZIJ9nrwi+wlpL94VMCp+R3OMK/mz4onwhhZp0+XS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Shg/hPyheCnmU+oaggULMDOblYEd1liWARJS/c6nWMYDhfGMCl1P5nR8CowFj2EPiQUpRV1P8JSniO1RonGZAfFaksdeSw+fJYGN8sHXmvB4XjchQxjJHU6qFby3gkzJwGj8QJPqLY3DXSgXlYCelGma6eG10ASXALJykarnHWDuzTlTDg5ddnquWxqxhpi7ySzLDoJa6GC0CF7ph2YCAUnSi2EI01I8YsRFvjT/Oanm88skVNVKFBOrTJaSpDFenZ8pWpx87wMyHwJrMfI0AvWNnBcIWN942j85BtsoMcoE2hM+9ENlIf90DcacybhlI2zrcq47WzuYq9G1KOIUQw==
X-YMail-OSG: XQCLF30VM1kCTc3yknSBceVD9YnJZzVxqGJzf2WIJlXkpf4w9pjW.RYewPOcgwt
 BrQ_di.AO0p83tbAR_NQN8LWax0iH108_NJhxKT9NcaApMTE8D7qr0OQBbjoYu7WnI7sDcH5RccQ
 3ouj33v39.XvtgZa1xsIpZLGFRhS1645I.xB6kjydN94001z_TOa8pZykFYizYPhErFcaUQPYgem
 oI5Al5.hGsfv2wIQ7aQRVEcFaDSz9el3xcuAHpyRJeRDkyXXLFRVOme66bY6SfIMCVzSNkp_EnZE
 RXQByYbVej0FKV6ycugWr8qOsfDs.rzY.rWUVXtlab3Rpy2XnppCx3731Fe.NNt.kVFVC494V.9x
 WLQIXrQrBYi_NIbsOkz_HwqNM.laONNuVnfbZpMkBTUR7KqajnxjXTwJEQ6tT6cJ1YPwLjCKuFRs
 pYB5KEhzCbjhQSXKuNWOghk5d3eD1eCnN9KHMA8OWcsRT4oyOzY3zMkvYYo1.NO214mfSblZQI.S
 swneJHdWYIU_JinJkqLCu8odpGdBHlvz31koAqb_oxhDNld7wS_l5ICP_is.nXl0O6EgpY0v9Kr.
 M.42M5WBv0NHReu.Xm3N2o.5AvK1SUH0yX9BJhdV4vAPnq1ZifPUByqCwjz0aYEuSjMhDNa8T8nW
 N35oTRR6RG_vCGChcte5Mji18gGqBqn.RZS5mCn.W0SnCD1wovnY0HLSqFo2uPltzScO8eJDxzKt
 CNn8bIJH6_Y_bzDmvwDFRotBifir1Yq55zh5e9_84htqVWSpx_Sk.7mOIG_XxFu4l75GV_ROWso1
 xbJIEx3Pxe20jeOOslkdckMeafe0Uu3UXRFuE86oqRFQPrys70.QX3PZVQYyzVFhyNVG_d58cUuD
 TFYSzNAwSAEv3aj3KMPiqG5bNabbrzhtAXxaDQIf9VPe7ko7tuzX7hWZEB1xZ6IoVCpyWsVYEcU9
 TJTHeMoZ5yMiIpzU7GRnTWeIPGIR_McS8NubOLrlA5Svg_gio8BVSK5cuSur8Qf7nMqiQuPN7CQ1
 VZ..Wj9CSnp7VMP2UQVOCR4gxiHQfwIwqv5ecKJ6kMcVAgB9dD8pTACyEUwAJbWUQr2waJliG.X5
 1xDChuRC4ffpc16CuKoFSOdsZYp7MCikdEkHEQFfnPhvtnfkfxXnpzJSwLd_BCDEz0sA0WspsWC7
 oaRRN8VnHmf76I8emhmO6ezRNOUKuCBVisG7y73vSe7brFaQgLAO2Ll97XVhYk7TAQNLG2EHu61d
 ztxn5t3SaTyrTKAdIEoQZrTJOFiIK1itZQooIoxZsj8WnFPQixwmgCqbaHniNPwXGIiZOH57rH_h
 MEb4eN0h3WbvOXDKK2Td7z1J95ed5LH7Eue9QKyghprKYMysRtQUDj6Q7ihxED.8d9c_WE43l9Xp
 svXTZG1KxTTH5wLv0jDGYaeCkLID.TpGCQC2Oiwnm6wiZmlkjpp9aUa8XbHiahR9DPwDgaq_4Hep
 6VZ2yI.Q_7fRE9Yom29eVvy6oMBVrZz2qzze_DCLnqkyJ1OMHpkVOhsy0Q0NqGwQ3X70xr_t.sMN
 E0.l7hlbCx.T_cRBx_S_VM_GHxItbdKATEjh2MPI.qDpy6Nv2UQgt3L3L4f3EXHNPI7HT5LjBkBV
 FTaMQLTgmkss6GWP9yOi7gLMZZd1j20.ttCAVhr52BFU_GEHm1QnP6SjctQn7prrh0LXATprt03v
 ityBKtGqlbKQXf_2ftlSg2FUq_TgMBQupYXrnaBG5u.gim1lenjVFATXPx8d.jSCqRe4pgj3I4Mf
 x8caEAIpHL.lGTf4R6v3EPDhoO423.HqyRP4zWQj5492Y9e3kXLUY.VxA6Uy0zLS4ZV7ZvwptbMa
 xR2AhMY8yUInfa.qTnneueaKW5H7UlgSIzM5CqHXHIU9PBv.wOaKrXw.OVbAY7.Lm76vsFUyXHIP
 0w3WL8GY3LQUtwVvXk9W7jlCTQojDGQaARWqd30GdJfK2y.k2KIkYmo6VCc4xIf8Utn1BE2p_zsM
 qDkZJLECpNVvHmOkG48jokXKY0Zp7mwbi630FyMr04ZaO0o4eGxljAz5x.gVut9t7kvNUoRSKC2g
 BOZxk1BZ3D6uKggFaWYw3Rwi6.pEjy.51LqHgfhDjhUGjNcqemKy84KupmBvDilMpHSXMJD1l4DX
 NzkfdMw3DNmF5..Y9wkNh_ppjARSeyLlJspfmFiv5Y_dfMMwME_v6e5N7hV15RbJex45eo165TPy
 B8UrVAMigMO8N2qdpPwJXb5SFmMyutbYrQUk3DgyM4Q--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 57842159-bbbb-44af-8666-f08360dd7a1c
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Wed, 1 May 2024 14:11:25 +0000
Date: Wed, 1 May 2024 14:11:21 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <236821295.3178397.1714572681617@mail.yahoo.com>
In-Reply-To: <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com>
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com> <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com> <336160565.3149887.1714566315941@mail.yahoo.com> <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: DUX4DROEZXW6YM2WDJCTZQ2LCPGOBGAU
X-Message-ID-Hash: DUX4DROEZXW6YM2WDJCTZQ2LCPGOBGAU
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUX4DROEZXW6YM2WDJCTZQ2LCPGOBGAU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4588922328062859447=="

--===============4588922328062859447==
Content-Type: multipart/alternative;
	boundary="----=_Part_3178396_1637820383.1714572681615"

------=_Part_3178396_1637820383.1714572681615
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Thanks for your response.
"Are you setting up clocking identically for both USRPs?=C2=A0=C2=A0 That i=
s setting the reference clock to "external" and the 1PPS source to "externa=
l" on both devices?=C2=A0=C2=A0 Are you using a single multi_usrp object fo=
r all RX channels?"
Yes, I use multi_usrp multi_usrp::make('addr0=3D192.168.12.2,second_addr0=
=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clo=
ck_rate=3D184.32e6')
=C2=A0
"external" set for both ref and pps:usrp->set_clock_source("external")usrp-=
>set_time_source("external")
I think this should automatically set both devices.

"What type of daughtercards are in your X310?"
UBX
Kind regards.


    On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 01/05/2024 08:25, zhou via USRP-users wrote:
 =20
=20
 Hi All,=20
  I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope the r=
eceived signals have stable phase relationship but they don't seem to be. I=
 am wondering why and how to fix it.=20
  I measured the phase using the connection as below:=20
  cos(t)+i*sin(t) signal is split into and received on four Rx antennas.=C2=
=A0Two X310s are connected to the same OctoClock for 10MHz Ref and PPS. Tx =
and Rx commands are all timed. The measurement results are as below:=20
 =20
 The Tx signal is continuous during test. I measured phase every second for=
 20 sec. In the 2nd USRP, the phases are stable on both antennas while it i=
s not in the 1st. If I change the Tx signal to the 1st USRP, then the resul=
ts swap - phases become stable in the 1st USRP and unstable in the 2nd.=20
  My first though was that there might be small CFO between USRPs even thou=
gh both are connected to the OctoClock, but CFO should have caused linear c=
hange. Here, the phase offset is not linear and kind of random within 20 se=
cond measurement.=20
  What can be the reason? Any suggestion will be appreciated.
=20
 Kind regards, H.  Are you setting up clocking identically for both USRPs?=
=C2=A0=C2=A0 That is setting the reference clock to "external" and the 1PPS=
 source to "external" on both devices?=C2=A0=C2=A0 Are you using a single m=
ulti_usrp object for all RX channels?
=20
 What type of daughtercards are in your X310?
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3178396_1637820383.1714572681615
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpb1f78624yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Thanks for your response.</div><div dir=3D"ltr" data-setdir=3D"false"><br>=
</div><div dir=3D"ltr" data-setdir=3D"false"><div><span style=3D"color: rgb=
(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">"=
Are you setting up clocking identically for both USRPs?&nbsp;&nbsp; That is=
 setting the reference clock to "external" and the 1PPS source to "external=
" on both devices?&nbsp;&nbsp; Are you using a single multi_usrp object for=
 all RX channels?"</span></div><div><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Yes, I use multi_usrp multi_usrp::make(<span>'addr0=3D192.168.12=
.2,second_addr0=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.=
15.2,master_clock_rate=3D184.32e6'</span>)<br clear=3D"none" style=3D"color=
: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;">&nbsp;<br><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;">"external" set for both ref and pp=
s:</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span>usrp-&gt=
;set_clock_source("external")</span></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><span>usrp-&gt;set_time_source(<span><span style=3D"color: rgb(0, 0, =
0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">"external")=
</span></span></span><br>I think this should automatically set both devices=
.<br><br clear=3D"none" style=3D"color: rgb(38, 40, 42); font-family: Helve=
tica Neue, Helvetica, Arial, sans-serif;"><span style=3D"color: rgb(38, 40,=
 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">"What typ=
e of daughtercards are in your X310?"</span><br clear=3D"none" style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;"></div>UBX</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false">Kind regards.</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div><br></div><div><br></div>
       =20
        </div><div id=3D"ydp5189b7afyahoo_quoted_4632613607" class=3D"ydp51=
89b7afyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp5189b7afyiv7691143590"><div id=3D"ydp518=
9b7afyiv7691143590yqt92825" class=3D"ydp5189b7afyiv7691143590yqt7336830375"=
><div>
    <div class=3D"ydp5189b7afyiv7691143590moz-cite-prefix">On 01/05/2024 08=
:25, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp5189b7afyiv769114359=
0ydpc723dc89yahoo-style-wrap">
        <div dir=3D"ltr">Hi All,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I am trying to use 4Rx and
          4Tx antennas from two X310 USRPs. I hope the received signals
          have stable phase relationship but they don't seem to be. I am
          wondering why and how to fix it.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I measured the phase using
          the connection as below:</div>
        <div dir=3D"ltr"><img title=3D"Inline image" alt=3D"Inline image" s=
rc=3D"" style=3D"max-width:800px;" class=3D"ydp5189b7afyiv7691143590yahoo-i=
nline-image" data-inlineimagemanipulating=3D"true"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">cos(t)+i*sin(t) signal is
          split into and received on four Rx antennas.&nbsp;<span><span sty=
le=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans=
-serif;">Two
              X310s are connected to the same OctoClock for 10MHz Ref
              and PPS. Tx and Rx commands are all timed. The measurement
              results are as below:</span></span></div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
          <span></span>The Tx signal is continuous during test. I
          measured phase every second for 20 sec. In the 2nd USRP, the
          phases are stable on both antennas while it is not in the 1st.
          If I change the Tx signal to the 1st USRP, then the results
          swap - phases become stable in the 1st USRP and unstable in
          the 2nd.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">My first though was that
          there might be small CFO between USRPs even though both are
          connected to the OctoClock, but CFO should have caused linear
          change. Here, the phase offset is not linear and kind of
          random within 20 second measurement.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">What can be the reason? Any
          suggestion will be appreciated.<br clear=3D"none">
          <span></span><br clear=3D"none">
          <span></span>Kind regards,</div>
        <div dir=3D"ltr">H.</div>
      </div>
   =20
    Are you setting up clocking identically for both USRPs?&nbsp;&nbsp; Tha=
t is
    setting the reference clock to "external" and the 1PPS source to
    "external" on both devices?&nbsp;&nbsp; Are you using a single multi_us=
rp
    object for all RX channels?<br clear=3D"none">
    <br clear=3D"none">
    What type of daughtercards are in your X310?<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp5189b7afyqt7336830375" id=3D"ydp5189b7=
afyqt89423">_______________________________________________<br clear=3D"non=
e">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@l=
ists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" =
href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D=
"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div=
>
            </div>
        </div></body></html>
------=_Part_3178396_1637820383.1714572681615--

--===============4588922328062859447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4588922328062859447==--
