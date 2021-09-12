Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 507C5407EF7
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 19:32:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04680384860
	for <lists+usrp-users@lfdr.de>; Sun, 12 Sep 2021 13:32:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="YmT+LJPf";
	dkim-atps=neutral
Received: from sonic315-13.consmr.mail.bf2.yahoo.com (sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 43A2D384409
	for <usrp-users@lists.ettus.com>; Sun, 12 Sep 2021 13:31:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631467906; bh=Y00aIGvKBZFF1LPWyy8wjXy5rsrvQHj0rZ92CQ+deC8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=YmT+LJPfWlGDZblF9SnDrT42xOV4vBufXYsL8TZfd86p5EiROLqkNmTCMaU9ATd5BRGf5vnfMaHUFnIFLkNxPHkknksgoOEcOuD4+SwqK3VVH+5Pk2Gk32E0y/hjm7gk6Dva288tWHY2eVDsvxIAoPuLD/8TOk4zm/clYNEHrcLz3oszUfNvURRFwRJN15THFcJNHz1ag/Reh7RSTmB5ytkV8OriZ4RxIES5Em/tfbo7blQJTgx8Vr38kM+VhI1CQYib+mAkXKxlBYvyfcVwvd/QZL1DZ1ka2tkRgnt0GzzEjO4Ua/xd1D73tDZYLlLA/qHWi2oNTHwkEH8C3Y2Cwg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631467906; bh=T39SlSSquRLX8+nCkGIoUOpxTTEhmkXd3ZhmTZAbFTs=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=WtQLXsdFFjlIf2LXHWY5mFM/HP+sG+KJPAVZjHXHk+xfIaG2/PSnkBl/Yr4EzERBAqjzHBpSLN03FBnuPT62Jpv1weeT5mkBjwGiXBWUXTE3Bv6zGBMbMf3fJn59YhhSy7s/FAwojXY4wyv6wyy43UDceHmaflri0ghcpehp8x25Jh+VtPCYpd/aPCYMPwW5MWpAVD3b+79o4yWWkTBNq95s9Cpaf7FbQICBNILDvjk+gWsT93IKdzzV1mEUdKHWBDLCUtGOdAuElsj4ryy9jUV3SvsmK+8zwNYoSHtM8DB7EcAn4sLHjdYMwYCSIgq1q8p82gjHYOxgrPZKvQ3kNA==
X-YMail-OSG: y4ZsnbMVM1n5_fBABA6bWBx.u8HLbHg07N4DYy1vzKDr.jMEnZku7L0ZjW3s3ra
 S2u9LQlRfRt.br.eeYMT6cwphfmu1EATJJ57SU5QVJ5MtA_1KvHarj3w1v49Yy2gbnZjTsLXScEt
 KH2doMUs..0BUQrQfToDfE.zAbglE3KzTg.I2g0MC6uD3IqpuaNI6HjGRak.o2.xKO3LBgtsSh.1
 _ve2dAUyyqlH94SPltrptrVK1ieuhjYU0wD4lVfnJya4nsP0O2j6RH1jCFdt1HWL4sOjHA96l69v
 1WGwVx_65rOLF207ZFvJAEUNGr2NDAlRvg3Ak8h5GilasGS3XbqUOnovDTWczXOoLwD1feCAdatU
 KP.a3oVoTI7coOW059SRMzSWzLfEbCzhWchFxLOclWpolLjzbl2W8DdKqnKtqr1Gb6ielD6eLivI
 qYEHmKYBAmcBPpIaAl1cEp0dd7lJFXima1JSuJ5Ci7LazksMTOUSyaxXO2iSo__XaeNEs9f9XASC
 UFEN0jR3m7Go.B06m2Wo7kHmtrYIzeMZSHzCJDtxZ0.fcGg1wEwvP3JN9Xr1YgkqM06BNnKjduhk
 JSjPBm8gN9PQ7aCQ.BztdBwyXYPp7iQChA5FnvHHu5ASjniqL90SPRheRLIP3GE.Ha7DMNjaHXZH
 wTQKCYMEiqdE8SSaCQMoeeAnTy1fVxlJaW6tR36KfleSiynn8nTPJDn2eWWpCrlZEir_7Mum6uUX
 hMTjymEJNww4agTf7myRJZRYDwRPFrUOfmd686LA6ZJWsGlvKnbrsvMbGcCB2rnxlwJS3uABSPby
 5IO4dDuvX.ybS.o0bUJHRsvKTky_uWMWtBiq3ctU6vkEaamnZCrY2qN7Etf.p.Zr8_7toLnidjpM
 Z_jrd_N7.tCoKaoAgmm7LIy3Yg5MgK9WCGCmtOPnxfriOg.OQV.qS06Ct.4ptOYPIF3e4RQOD.Ac
 jDviDITarxtCgR6wdIy9e00rioYHANuq.bS.2gnRdJ8zaApBEMyN16NhBzvnjZGv3qAoXQNqsLcu
 10NunaRPAMeD.gNReXN1ZMFRrYTTxE9ujnmP0GY.pi_3Cwmdvs.upYjhVd6pTw2WS4FrLOUxX08J
 f6D0_rQPZoDj1RmHTop1lkpAwXouMWhDY54284Nhzk8eE.8EXLbyy.xdBTNK8NANRrpQSYX8deet
 17UCWnFCKrAOpamua8HLUDqsnHeXSS3Ms_no.nfY_Cg1thLCt5eTIXKRsy8n3wTSznP.7ltfpJnf
 Pd21tw26kAYC9NLWzWxod7jhyBAnu0qRXkkq288RCzGK6lgWXQb6EooRzaXfzOZRXF23qwiWSuy1
 O8a7rZCotYBfOI70JUivZ5Aoh_5SpWKBcaHO_cEzO_i8chA.yMg_qH4MYh1iDS.ZITtURzYAU.hW
 nVGRmYz7TbKmWgpwmz5E9OHkePTEIMLXyXae0fa2hEfyLP.YENZu9oVWqymRjNLj4VQoYRQzXX6h
 5Z0wNhtyZs5pGKwGtw8DEAiLRpGQCB7NGufOEYiAS1L_eNy9tzCdJsyurkkcztfrhrX__fTEbYsS
 MkMoHIQsS1LNH.Q1Gm49.NRax.F36ygW_L9RuvamHPa3jYy.XSmSFTx77J3jraY2nYiQ13vUNloO
 vWf_0UWo5ZgC05wvqtt2_IuKjbqE49.8MJMU2.OBZS8Cl2Hb81S94DdzNofscYHTQ8KR2Huff39a
 r2niAuGPlTPJnTHDGihFvc8_DaBhoLLoxMp7i5IttGSgKXCSx9CMpVCy33a_6m3MkII7EEnMMqVV
 Wl9G8zC25mXoqAW4Z6Lz8VFZjzuEp.1_RNoZt8n9gbQGLkp47zerNSA.bFfC2ZckA4TCqgA3xS44
 t4c.RLv3UQ_wFYAIOu6PZEV5l5KT29DbU3GtTjhTKPuh6hOj9O7D.HgZLzBISBHRk1WLNXn3DFM3
 usK5h7YxSkek5IGLt53_fVjV_IxkDXI0OBBj4Uhh07BiBvitFBjwJprxkjKYQmiilLH0BzxaXbRF
 Ijf_9dKCQTSB3B_Z5yPasBQecwrT1XLtu4sHTsNmi79SkVYRfguypdo6lCvFX0PNwvqxtmpP9ohU
 OVcna1g_txbt2BA.BLfVEpmx68D9goVi.kQeTBABObLqiYXjIDGt7Ryz5HKahZOMlToZVgow724C
 N7ucLAistgZe8XPpQCM9pw3bCliF7J.VvQbvB.oLnMjhPQrhz0.4H8Z2A5sR9H6uVOOL1EvGn9Vu
 hNAuJsnf7LosTUpOq3WKGDTw87KRPEVVNz8LXvF4lBGHAxugzrZmc1T4S9Sc-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Sun, 12 Sep 2021 17:31:46 +0000
Date: Sun, 12 Sep 2021 17:31:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <410306297.2886349.1631467905488@mail.yahoo.com>
In-Reply-To: <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com> <899213065.2697497.1631311503116@mail.yahoo.com> <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com> <1529290832.2403454.1631339791541@mail.yahoo.com> <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: AMZKBZDESKVOXLQWYZ6QDOAPUVWVHYZ6
X-Message-ID-Hash: AMZKBZDESKVOXLQWYZ6QDOAPUVWVHYZ6
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMZKBZDESKVOXLQWYZ6QDOAPUVWVHYZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2222099091922847524=="

--===============2222099091922847524==
Content-Type: multipart/alternative;
	boundary="----=_Part_2886348_672386226.1631467905485"

------=_Part_2886348_672386226.1631467905485
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Marcus. Yes, I am using 2xTx and 2xRx at 245Msps in N321.I understa=
nd that if my host CPU is not fast enough, no matter how much buffer I have=
, it won't help. Fortunately, my tests are actually working at most time, w=
hich means that the CPU is fast enough for 245Msps. Maybe it is just margin=
ally fast enough, not super fast. I run the test for a few hours. Occasiona=
lly, there are ULLL. So this is a stability issue. I think a bigger buffer =
will smooth the ripples in host performance. Though separate CPUs and threa=
ds are used for Tx, Rx, control and other processes, they share Linux, RAM =
and buses, so they are not completely independent. There could be collision=
 in resource access occasionally. If that happens, Tx thread can be hung fo=
r a short while and couldn't fill the buffer in time before the the device =
gets starved. Because the current buffer is very small, its tolerance to su=
ch interrupt is very limited. I think increasing the buffer size will make =
the system more reliable.=C2=A0
Thanks for mentioning the host-side buffer between the application layer an=
d the ethernet device drivers. How to check the existing setting, and how t=
o change it?

    On Saturday, 11 September 2021, 15:42:09 BST, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 2021-09-11 1:56 a.m., zhou wrote:
 =20
=20
 Thank you Marcus. I originally thought that there might be two levels of b=
uffer, one in device and one in host, and the one in host was bigger and co=
uld be configured by user, but after I checked the UHD library, I couldn't =
find the host-side buffer. So, I agree with you that the host sends the pac=
kets to the device immediately.  There IS a host-side buffer.=C2=A0 It exis=
ts in the OS kernel between the application layer and the ethernet device d=
rivers.
 =C2=A0 In *general* applications will write to I/O devices as fast as the =
kernel will let them.=C2=A0 This generally means that the
 =C2=A0 kernel must buffer traffic and then put the issuing thread to sleep=
 when the buffers are full.=C2=A0 In the case of the network,
 =C2=A0 the NIC can only issue frames at a fixed rate (10Gbit or 1Gbit)--if=
 the application writes faster than that, then the
 =C2=A0 kernel buffer is there to help, and, as I said, will put the applic=
ation thread to sleep when the buffer is full.
=20
 In *addition* to all that, in the continuous-streaming case, the radio wil=
l use (AFAIR) ethernet PAUSE frames to "pace"
 =C2=A0 the incoming data to allow smooth sending at exactly the desired sa=
mple rate.=C2=A0 This in turn will potentially trigger
 =C2=A0 the kernel buffer-management mechanisms, and potentially cause the =
sending thread to go to sleep for a bit.
=20
 Now, when you specify the send_buff_size as a *stream* argument, that ulti=
mately, on Linux systems, causes the
 =C2=A0 UDP socket to be configured with setsockopt() using the SO_SNDBUF o=
ption to tell the kernel what size of
 =C2=A0 buffer to use.=C2=A0 It's a bit obscure in the code because the cod=
e supports multiple types of I/O and network-stack
 =C2=A0 implementations.
=20
=20
 =20
  I also did the same measurement on host using X310 USRP. The results are =
the same as N321. Can I configure the send buffer size in device? especiall=
y in N321. It has 1G DDR3 RAM and a huge SD card. I don't want a very big b=
uffer; 10ms will be enough. The buffer size shall vary with sampling rate. =
I will appreciate it very much if you could get clarification from the devs=
 team. =C2=A0 =20
 Most of the DRAM on the N321 is for the Linux *CPU*, and is not available =
to the FPGA implementation (or, if it is, there's
 =C2=A0 a fixed chunk and the FPGA would have to be recompiled).=C2=A0 The =
dev team would know best.
=20
 But I'll make this comment here.=C2=A0 If the steady-state case that you'r=
e dealing with is that your host CPU cannot "keep up"
 =C2=A0 with a demand for samples at 245Msps, then NO AMOUNT OF BUFFERING w=
ill help you.=C2=A0=C2=A0 Are you doing this on 4 channels
 =C2=A0 at once?=C2=A0 That's an ungodly sample demand for even quite-well-=
appointed computers, even if you're just streaming
 =C2=A0 pre-formed sample frames out of a RAM buffer.=C2=A0=C2=A0 This isn'=
t, at a high-level, peculiar to USRPs or SDR or DSP.=C2=A0 In ANY
 =C2=A0 producer-consumer architecture with real-time constraints, if the p=
roducer cannot "keep up" with the consumer, then
 =C2=A0 no amount of pre-buffering will help for the continuous streaming c=
ase.=C2=A0 Even if the "producer" is able to keep up at
 =C2=A0 99.99% of the rate demand of the "consumer", buffers will eventuall=
y starve and there'll be an underrun.=C2=A0 Standard
 =C2=A0 computer-science stuff.
=20
=20
=20
=20
=20
 =20
 =20
        =20
      =20
   =20
   =20
=20
   _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
    =20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
=20
  =20
------=_Part_2886348_672386226.1631467905485
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf6805185yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus. Yes, I am usi=
ng 2xTx and 2xRx at 245Msps in N321.</div><div dir=3D"ltr" data-setdir=3D"f=
alse">I understand that if my host CPU is not fast enough, no matter how mu=
ch buffer I have, it won't help. Fortunately, my tests are actually working=
 at most time, which means that the CPU is fast enough for 245Msps. Maybe i=
t is just marginally fast enough, not super fast. I run the test for a few =
hours. Occasionally, there are ULLL. So this is a stability issue. I think =
a bigger buffer will smooth the ripples in host performance. Though separat=
e CPUs and threads are used for Tx, Rx, control and other processes, they s=
hare Linux, RAM and buses, so they are not completely independent. There co=
uld be collision in resource access occasionally. If that happens, Tx threa=
d can be hung for a short while and couldn't fill the buffer in time before=
 the the device gets starved. Because the current buffer is very small, its=
 tolerance to such interrupt is very limited. I think increasing the buffer=
 size will make the system more reliable.&nbsp;</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thanks fo=
r mentioning the host-side buffer <span><span style=3D"color: rgb(0, 0, 0);=
 font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">between the ap=
plication layer and the ethernet device drivers</span></span>. How to check=
 the existing setting, and how to change it?</div><div dir=3D"ltr" data-set=
dir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpda170c49yahoo_quoted_1907125867" class=3D"ydpda=
170c49yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, 11 September 2021, 15:42:09 BST, Marcus D.=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpda170c49yiv6189838529"><div>
    <div class=3D"ydpda170c49yiv6189838529moz-cite-prefix">On 2021-09-11 1:=
56 a.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div>
        <div dir=3D"ltr">Thank you Marcus.</div>
        <div dir=3D"ltr">I originally thought that
          there might be two levels of buffer, one in device and one in
          host, and the one in host was bigger and could be configured
          by user, but after I checked the UHD library, I couldn't find
          the host-side buffer. So, I agree with you that the host sends
          the packets to the device immediately.</div>
      </div>
   =20
    There IS a host-side buffer.&nbsp; It exists in the OS kernel between t=
he
    application layer and the ethernet device drivers.<br clear=3D"none">
    &nbsp; In *general* applications will write to I/O devices as fast as t=
he
    kernel will let them.&nbsp; This generally means that the<br clear=3D"n=
one">
    &nbsp; kernel must buffer traffic and then put the issuing thread to
    sleep when the buffers are full.&nbsp; In the case of the network,<br c=
lear=3D"none">
    &nbsp; the NIC can only issue frames at a fixed rate (10Gbit or
    1Gbit)--if the application writes faster than that, then the<br clear=
=3D"none">
    &nbsp; kernel buffer is there to help, and, as I said, will put the
    application thread to sleep when the buffer is full.<br clear=3D"none">
    <br clear=3D"none">
    In *addition* to all that, in the continuous-streaming case, the
    radio will use (AFAIR) ethernet PAUSE frames to "pace"<br clear=3D"none=
">
    &nbsp; the incoming data to allow smooth sending at exactly the desired
    sample rate.&nbsp; This in turn will potentially trigger<br clear=3D"no=
ne">
    &nbsp; the kernel buffer-management mechanisms, and potentially cause t=
he
    sending thread to go to sleep for a bit.<br clear=3D"none">
    <br clear=3D"none">
    Now, when you specify the send_buff_size as a *stream* argument,
    that ultimately, on Linux systems, causes the<br clear=3D"none">
    &nbsp; UDP socket to be configured with setsockopt() using the SO_SNDBU=
F
    option to tell the kernel what size of<br clear=3D"none">
    &nbsp; buffer to use.&nbsp; It's a bit obscure in the code because the =
code
    supports multiple types of I/O and network-stack<br clear=3D"none">
    &nbsp; implementations.<br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I also did the same
          measurement on host using X310 USRP. The results are the same
          as N321.</div>
        <div dir=3D"ltr">Can I configure the send
          buffer size in device? especially in N321. It has 1G DDR3 RAM
          and a huge SD card. I don't want a very big buffer; 10ms will
          be enough. The buffer size shall vary with sampling rate.</div>
        <div dir=3D"ltr">I will appreciate it very
          much if you could get clarification from the devs team.</div>
        <div dir=3D"ltr">&nbsp;</div>
      </div>
    </blockquote>
    Most of the DRAM on the N321 is for the Linux *CPU*, and is not
    available to the FPGA implementation (or, if it is, there's<br clear=3D=
"none">
    &nbsp; a fixed chunk and the FPGA would have to be recompiled).&nbsp; T=
he dev
    team would know best.<br clear=3D"none">
    <br clear=3D"none">
    But I'll make this comment here.&nbsp; If the steady-state case that
    you're dealing with is that your host CPU cannot "keep up"<br clear=3D"=
none">
    &nbsp; with a demand for samples at 245Msps, then NO AMOUNT OF BUFFERIN=
G
    will help you.&nbsp;&nbsp; Are you doing this on 4 channels<br clear=3D=
"none">
    &nbsp; at once?&nbsp; That's an ungodly sample demand for even
    quite-well-appointed computers, even if you're just streaming<br clear=
=3D"none">
    &nbsp; pre-formed sample frames out of a RAM buffer.&nbsp;&nbsp; This i=
sn't, at a
    high-level, peculiar to USRPs or SDR or DSP.&nbsp; In ANY<br clear=3D"n=
one">
    &nbsp; producer-consumer architecture with real-time constraints, if th=
e
    producer cannot "keep up" with the consumer, then<br clear=3D"none">
    &nbsp; no amount of pre-buffering will help for the continuous streamin=
g
    case.&nbsp; Even if the "producer" is able to keep up at<br clear=3D"no=
ne">
    &nbsp; 99.99% of the rate demand of the "consumer", buffers will
    eventually starve and there'll be an underrun.&nbsp; Standard<br clear=
=3D"none">
    &nbsp; computer-science stuff.<div class=3D"ydpda170c49yiv6189838529yqt=
6050799586" id=3D"ydpda170c49yiv6189838529yqtfd57633"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div><br clear=3D"none">
        <div dir=3D"ltr" style=3D"color:rgb(0, 0, 0);font-family:Helvetica =
Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color:rgb(0, 0, 0=
);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D"n=
one">
            </span></span></div>
        <div dir=3D"ltr" style=3D"color:rgb(0, 0, 0);font-family:Helvetica =
Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div class=3D"ydpda170c49yiv6189838529ydp694195a5yahoo_quoted" id=3D"=
ydpda170c49yiv6189838529ydp694195a5yahoo_quoted_1603233993">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"ydpda170c49yiv6189838529ydp694195a5yiv5942770610">
              <div>
                <div class=3D"ydpda170c49yiv6189838529ydp694195a5yiv5942770=
610yqt5932123032" id=3D"ydpda170c49yiv6189838529ydp694195a5yiv5942770610yqt=
fd72072">
                  <blockquote type=3D"cite">
                    <div class=3D"ydpda170c49yiv6189838529ydp694195a5yiv594=
2770610ydp18a06c0yahoo_quoted" id=3D"ydpda170c49yiv6189838529ydp694195a5yiv=
5942770610ydp18a06c0yahoo_quoted_1837252270">
                      <div style=3D"font-family:'Helvetica Neue', Helvetica=
, Arial, sans-serif;font-size:13px;color:#26282a;">
                        <div>
                          <div id=3D"ydpda170c49yiv6189838529ydp694195a5yiv=
5942770610ydp18a06c0yiv5378333377">
                            <div>
                              <div class=3D"ydpda170c49yiv6189838529ydp6941=
95a5yiv5942770610ydp18a06c0yiv5378333377yqt4910377105" id=3D"ydpda170c49yiv=
6189838529ydp694195a5yiv5942770610ydp18a06c0yiv5378333377yqtfd24992">
                                <blockquote type=3D"cite">
                                  <div class=3D"ydpda170c49yiv6189838529ydp=
694195a5yiv5942770610ydp18a06c0yiv5378333377ydpa2579362yahoo-style-wrap" st=
yle=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:1=
3px;">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr"> <br clear=3D"none">
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
_______________________________________________<br clear=3D"none">
                          USRP-users mailing list -- <a shape=3D"rect" href=
=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">u=
srp-users@lists.ettus.com</a><br clear=3D"none">
                          To unsubscribe send an email to <a shape=3D"rect"=
 href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a>
                          <div class=3D"ydpda170c49yiv6189838529ydp694195a5=
yiv5942770610ydp18a06c0yqt4910377105" id=3D"ydpda170c49yiv6189838529ydp6941=
95a5yiv5942770610ydp18a06c0yqtfd94940"><br clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpda170c49yiv6189838529ydp694195a5yqt5932123032"=
 id=3D"ydpda170c49yiv6189838529ydp694195a5yqtfd62361">_____________________=
__________________________<br clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">us=
rp-users-leave@lists.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_2886348_672386226.1631467905485--

--===============2222099091922847524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2222099091922847524==--
