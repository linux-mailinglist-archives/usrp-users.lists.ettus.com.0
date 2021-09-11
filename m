Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D040407540
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 07:57:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 227C4384DCA
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 01:57:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Pkcik4l1";
	dkim-atps=neutral
Received: from sonic302-1.consmr.mail.bf2.yahoo.com (sonic302-1.consmr.mail.bf2.yahoo.com [74.6.135.40])
	by mm2.emwd.com (Postfix) with ESMTPS id E3E6F384684
	for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 01:56:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631339792; bh=Y9fm+Y4MjYoAaoVAvr1ZmEW6vZ/iRugDB95kC/J3KEE=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Pkcik4l1OJnc3MkquvXXKpwkaPc1xcEl2hLin0xI4sgj3ceV86SaO/O5pbwGQviJesFiXkz6/25iq8DoTNyF7Rl8bQWsI6RL7Dz2qgZgxVIPmERhUxrFK9xC0TBfYfx8zkkzf0rqIMus5S1Mon+QLUXzmZnaONobjLlHf1SoAIfU30j7g9qPMavEE35oeqxbWZS5ue/t1dTO6n3jEqi5MSPqUAcCuS9ofJvXmq17dzjJzrNE7hCk+wfRfqsRE91Vky0GHx03BqSE8d2XjRBCCJnfK2sE7QtJEWgzFmd1DIjoxNyup1wFurGhpcNFqJHvCXgI6QGQ74XF9ca4CW+4Bw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631339792; bh=ZNKERHQdwSB4B8ZGry5QXOT+xetoI15fvZqHcchvGCD=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=QRWE101KofNUo063+JYIVqVIDku45gsStBFL17jDiD+J/vyzpWOxilWK2E0Wu6yj3yATgP7xHtIyyWdg4Up/ZXi94Upm+EV10HLUdjUzxMMeVfI3tCYSf8/mhs1q572QawvrJbIjdxtzZOdzQ5bLnzwLyv+w5VeNtfX8UykvuDNAhbzc5+MawRz7wAt/Qo/x2vHpPv10HaCfkeDGfU6+E/68hX4CARsGZT6SlphgioDneCM8G6vTCsAdyD8haFv0eg43h4MH58hN1o9HAaywvrQREChtBMRhgj/FFIrTpA7Uvkve4jwttYVqpvsDFwI85HDlCwVOuUclfeBX42e1ZQ==
X-YMail-OSG: PkUX6HgVM1mejw4cDDvFvHztob5rWyJDDADn5HkCO9HWDurd7EYbR.6.XRPGLUT
 DeVtK20pwnpfB2rwuAqBwyHHgBJi_anm6Sj17B6NJABoh0mlcDKJlSLB_kk9LhuLyzrjT0WPU8IL
 NlFsIXyj1rMuM0Gk_BuRVlCZa.9K4NrKBLZ0VBcOMaQmm25ZgX9H.9brQhFCjbZLDkuxBd0KsBSR
 w1K6lrF5HVsdm.za2VJ4WODZP9L4RloL7mySyvcu0K51CwBzu9DF5WzmvHUzTWHQnzftcvxjOJOP
 TEMgnGXEPvTro.foiKrK4UN72XdBeNlLDta.SJTh_PIij62j70JQBBnMsM.oV96DMRTEfXv2UTD6
 z4KWkq_TlAV68Gsz7ZHKIPs6DYSGX_mvv6hzK0hSOjNUGmQ.16HgNqo1jzbNTEkUhP7aIVR88WEJ
 XZj83a1tbHA1ATZxApSvHBoX8i8_rGk.oDnNfoYSnhOTKBprbGrMgeGCcYEe.OCb9906kmZtBZ5h
 G.Mydn.GbkBZiz72S2R11zwID6a_ABL29Dq.Yl.Fvuf8hOET4Aazmt3cdDkMp_lJiESVdY4avTUt
 vDOwGZzu01SxWmMJPtpQRXDKoyeWnBPoloV0xQStk2LHPKFTQt_m7F9xVcMKeQEZYjlYSuBTE8x2
 G2LGxcu.Xg6LTwwnRndXCV4S6kU9XrES2ucTr61pWfQU0_FpZIFzSdZ3RFkbS27BH_mtHGfeaQX6
 J22cX46Yb7QElWvcV6Oqgc62zpFRBt8OP8wE3AhYFLk8Gv5sbWf46BZjwwtLHnVb0sIlB20xWLGH
 KlhepS.kYqUsApcLwWezHV4ZDXsSLXJUYgHvGtWruFtNv927Gn2gXbxCsLo7gTNh6HVVMc1iWaoW
 Csx2uEMMPpDKklw.eMhYXmXbkeo3w.kD2adoA8fOyt1xwFkibwXCdjzycc0McQjsrIqwvdk2LVje
 8mX70kb.yXducRqbR5RpiKyA_NmHDNRBkjwMcUfYNkO5WaqcizLgCkFfPz3so_R_5eTppi3zU8xO
 bMa.VgxvyNrkmMmEBW97r0dfG8lg5_DEjGdHMuIU94mKtZVPKfIHnnqAL0QWOKdNWb0OyjBGwTi6
 bU5AGnEjtCXMRnKN6gZK9XAnImgl_QnqyWzDjZgavD5x9I6AXIOrl69c0_Ar9ICVxg3oUFqwiJE3
 qw01rodEDz20ifeY9DpxkkBbFvNTOBP_3erXJvslVXwvQ2FxY3Ffsp_oQs5r6b9q6mAFRcI_bKQI
 nmOw7JAirsyCtjPL8D4YRRerHzBUuuZwCw8NfuXgFocRYCKYiODBovuWX4ubKfTDyIZKTXh4SK5G
 vq_wBWe1VoTz7TfuHjsvZJR0z2qSqkYTXKk5aYG.GEhJmO76AUDryfKn.4O85h7CFEn2fp29M1Y2
 ApQdGVPVmi6PcNNQg9O.vAG0GuVzj9qg7fhZO0281JSVpjo2GHIwe2bDBY5jz5Djq2cPFFtZ0oRQ
 rgXIqSO0ak1rx7PATQaUaqeRtOjT9mkw9sILZip2XiT4apt0a8ZwIt5SY0Od8aKpYGKX6audCSc1
 ffg98szdopXYs_UiXZ98DkoQD7JZZb5JL2q5BBRLjcfaVwHIIWW654h2Wwd1NcbAjFdDESKVlOpt
 99m3gq.2IJYqtEkL7ZbXITDyJ1qtGoMqRNXZ2aHn8nhP1t6y39wHcx3_EHkNLCaf4i1pUkhrlKVx
 nmF4WpG_7Xyj3ECTupzVcFON7RtCCers3ujxm17S8dJOqxbupqpUQBY65cECaz8_1LIsOY9bhYUU
 U.xo1rHq_eS9u8b1FI85VTq1V8JOR9Z2zhINSDIov0LKtYeek5aGGt.o3s7e8k2WGKJwbMgjkEii
 uTKTLCFXiJ7f6pCueTSl1Ecby_HHuUIpFyAC0Sjkb0kuxhu31AmB4YqJ0KWEuCCai8pVB0H1F3FH
 o26uXNywIWcMsJ2KvZ75DLNKkiHpkC_CII5OAxNw_8JY8KGoQ4RhwnKguJPXS84TT623pmOLC0F2
 ohoLvobkU6lAzX1fxkxEkmN6b8.KfYVl9c9W3xlszULX742LwHBQj6RB1ZVshhfoMLevoQauGY38
 3BgCFCZLvFnlfhHYp0_umTglXnis6GO6ZMhgzSMCXo_TwQTl81Bz2Ynp6SIlQNbcu_zxUPc1aB5S
 suAwmBeUl0ZHKZG3ewzE1eDjOJbNyeWnK5eyAHGA.pEQFVCaSBH05CHXxcdq7A7LMLHb42qyJ2Im
 JUlOVj239v7llpRtb_AQ5PvJ5dRwzrr1FcGEKOQ.m872QWGZx83jMJRLt_Yw-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Sat, 11 Sep 2021 05:56:32 +0000
Date: Sat, 11 Sep 2021 05:56:31 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1529290832.2403454.1631339791541@mail.yahoo.com>
In-Reply-To: <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com> <899213065.2697497.1631311503116@mail.yahoo.com> <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: PD4Q4ZZCWUQSSWF55Y2J6BBQYJLPM52Y
X-Message-ID-Hash: PD4Q4ZZCWUQSSWF55Y2J6BBQYJLPM52Y
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PD4Q4ZZCWUQSSWF55Y2J6BBQYJLPM52Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0286375360056694302=="

--===============0286375360056694302==
Content-Type: multipart/alternative;
	boundary="----=_Part_2403453_1178099791.1631339791537"

------=_Part_2403453_1178099791.1631339791537
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thank you Marcus.I originally thought that there might be two levels of bu=
ffer, one in device and one in host, and the one in host was bigger and cou=
ld be configured by user, but after I checked the UHD library, I couldn't f=
ind the host-side buffer. So, I agree with you that the host sends the pack=
ets to the device immediately.
I also did the same measurement on host using X310 USRP. The results are th=
e same as N321.Can I configure the send buffer size in device? especially i=
n N321. It has 1G DDR3 RAM and a huge SD card. I don't want a very big buff=
er; 10ms will be enough. The buffer size shall vary with sampling rate.I wi=
ll appreciate it very much if you could get clarification from the devs tea=
m.=C2=A0
    On Friday, 10 September 2021, 23:18:39 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-10 6:05 p.m., zhou wrote:
 =20
=20
 Hi Marcus, thanks for your reply. No, I am not on MacOS. I am using Ubuntu=
. How can I configure send buff size in Linux? I went through the uhd libra=
ry but could not see it had any limit on buffer size. So, very strange wher=
e the buffer limit comes from.=20
  How do I measure the buffer? I created a packet of=C2=A0245760 bytes, and=
 I set=C2=A0metadata.has_time_spec=C2=A0 =3D true, and configure=C2=A0metad=
ata.time_spec to a future time, then I sent the packets. Before metadata.ti=
me_spec, the sent packets would be stored in the buffer. When send() was bl=
ocked, it meant the buffer was full. I counted; after 4 packets, send got b=
locked. Only after time passed=C2=A0metadata.time_spec, the packets in buff=
er were consumed, I could send another packet.  I'm not sure how much TX bu=
ffer space the N321 has in the FPGA, but it sounds like that's what you're =
running into.=C2=A0 I would expect it
 =C2=A0 to be very very much smaller than the amount of buffer available on=
 the host.=C2=A0 I don't think UHD will "hold on" to packets on the host
 =C2=A0 side if it isn't quite time for them to be sent.=C2=A0 It sends the=
m to the device, and if there isn't room on the device (because of
 =C2=A0 timed send), then it must necessarily ask the host to hold on to th=
em.
=20
 It pretty-much HAS to work this way, since the host side has very little c=
ontrol over latency, it has no way of really knowing
 =C2=A0 when it is safe to "release" timed TX packets to the actual hardwar=
e, so it sends them to the hardware immediately.
=20
 One of the devs might be able to clarify, but that's my understanding.
=20
=20
=20
  =C2=A0=20
      On Friday, 10 September 2021, 19:53:29 BST, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
 =20
     On 2021-09-10 2:39 p.m., zhou wrote:
 =20
=20
    Hi,=20
  I am trying to increase the buffer size in tx.=20
  According to=C2=A0https://files.ettus.com/manual/page_transport.html,=C2=
=A0=20
  =C2=A0it seems that we can change the default=C2=A0send_buff_size by spec=
ifying value in device arguments. I tried the following configuration:  uhd=
::usrp::multi_usrp::make('addr=3D192.168.12.2, second_addr=3D192.168.13.2, =
mgmt_addr=3D192.168.10.16, master_clock_rate=3D245.76e6, type=3Dn3xx,=C2=A0=
send_buff_size=3D33554432')
 =20
  But this didn't have any impact. I measured that the actual buffer is alw=
ays about ~1MB.  How did you measure the buffer?
=20
=20
=20
 =20
  Then in UHD library, I find the following limit:
       static const size_t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib=20
   =C2=A0 =C2=A0 if (link_params.send_buff_size > MAX_BUFF_SIZE_ETH_MACOS) =
{ =C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size =3D MAX_BUFF_SIZE_=
ETH_MACOS; =C2=A0 =C2=A0 }=20
    =20
 Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't relevant.=C2=A0 That=
 code doesn't even get compiled unless you're
 =C2=A0 on MacOS.=20
=20
=20
    33554432 > 1048576 (1Mib), so this may be why the above config didn't w=
ork. Then I tried the following configuration:
    uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168.=
13.2,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,sen=
d_buff_size=3D524288')
 =20
  This one didn't have any impact either. So, am I wrong in configuring=C2=
=A0send_buff_size in this way? what is the correct way?=20
  1M buffer size is too small for my application. I am using sampling rate =
245.76MHz. This buffer can only save data up to 0.5ms. I want to allocate a=
 bigger buffer to achieve better reliability.=20
  Thanks for any comment.=20
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
------=_Part_2403453_1178099791.1631339791537
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp2c8bce6fyahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thank you Marcus.</div><div =
dir=3D"ltr" data-setdir=3D"false">I originally thought that there might be =
two levels of buffer, one in device and one in host, and the one in host wa=
s bigger and could be configured by user, but after I checked the UHD libra=
ry, I couldn't find the host-side buffer. So, I agree with you that the hos=
t sends the packets to the device immediately.</div><div dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I also did=
 the same measurement on host using X310 USRP. The results are the same as =
N321.</div><div dir=3D"ltr" data-setdir=3D"false">Can I configure the send =
buffer size in device? especially in N321. It has 1G DDR3 RAM and a huge SD=
 card. I don't want a very big buffer; 10ms will be enough. The buffer size=
 shall vary with sampling rate.</div><div dir=3D"ltr" data-setdir=3D"false"=
>I will appreciate it very much if you could get clarification from the dev=
s team.</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;</div><div><br></=
div>
       =20
        </div><div id=3D"ydp694195a5yahoo_quoted_1603233993" class=3D"ydp69=
4195a5yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, 10 September 2021, 23:18:39 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp694195a5yiv5942770610"><div>
    <div class=3D"ydp694195a5yiv5942770610moz-cite-prefix">On 2021-09-10 6:=
05 p.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div class=3D"ydp694195a5yiv5942770610ydpec1c=
33byahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;">
        <div dir=3D"ltr">Hi Marcus, thanks for your
          reply.</div>
        <div dir=3D"ltr">No, I am not on MacOS. I am
          using Ubuntu. How can I configure send buff size in Linux?</div>
        <div dir=3D"ltr">I went through the uhd
          library but could not see it had any limit on buffer size. So,
          very strange where the buffer limit comes from.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">How do I measure the buffer?</div>
        <div dir=3D"ltr">I created a packet of&nbsp;<span>245760
            bytes, and I set&nbsp;<span>metadata.has_time_spec&nbsp; =3D tr=
ue, and
              configure&nbsp;<span>metadata.time_spec to a future time, the=
n
                I sent the packets. Before <span><span style=3D"color:rgb(0=
, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">metadata=
.time_spec,
                    the sent packets would be stored in the buffer. When
                    send() was blocked, it meant the buffer was full. I
                    counted; a</span></span>fter 4 packets, send got
                blocked. Only after time passed&nbsp;<span><span style=3D"c=
olor:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;=
">metadata.time_spec,
                    the packets in buffer were consumed, I could send
                    another packet.</span></span></span></span></span></div=
>
      </div>
   =20
    I'm not sure how much TX buffer space the N321 has in the FPGA, but
    it sounds like that's what you're running into.&nbsp; I would expect it=
<br clear=3D"none">
    &nbsp; to be very very much smaller than the amount of buffer available
    on the host.&nbsp; I don't think UHD will "hold on" to packets on the
    host<br clear=3D"none">
    &nbsp; side if it isn't quite time for them to be sent.&nbsp; It sends =
them to
    the device, and if there isn't room on the device (because of<br clear=
=3D"none">
    &nbsp; timed send), then it must necessarily ask the host to hold on to
    them.<br clear=3D"none">
    <br clear=3D"none">
    It pretty-much HAS to work this way, since the host side has very
    little control over latency, it has no way of really knowing<br clear=
=3D"none">
    &nbsp; when it is safe to "release" timed TX packets to the actual
    hardware, so it sends them to the hardware immediately.<br clear=3D"non=
e">
    <br clear=3D"none">
    One of the devs might be able to clarify, but that's my
    understanding.<div class=3D"ydp694195a5yiv5942770610yqt5932123032" id=
=3D"ydp694195a5yiv5942770610yqtfd72072"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"ydp694195a5yiv5942770610ydpec1c33byahoo-style-wrap" sty=
le=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13=
px;">
        <div dir=3D"ltr"><span><span><span><span><span style=3D"color:rgb(0=
, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp;</=
span></span></span></span></span></div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yahoo_quoted" id=3D"y=
dp694195a5yiv5942770610ydp18a06c0yahoo_quoted_1837252270">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Friday, 10 September 2021, 19:53:29 BST, Marcus D.
            Leech <a shape=3D"rect" class=3D"ydp694195a5yiv5942770610moz-tx=
t-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378333377">
              <div>
                <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv53783333=
77moz-cite-prefix">On
                  2021-09-10 2:39 p.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv53783333=
77ydpa2579362yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helveti=
ca, Arial, sans-serif;font-size:13px;">
                  <div dir=3D"ltr"><span>Hi,</span></div>
                  <div dir=3D"ltr"><span><br clear=3D"none">
                    </span></div>
                  <div dir=3D"ltr"><span>I am trying to increase the
                      buffer size in tx.</span></div>
                  <div dir=3D"ltr"><span><br clear=3D"none">
                    </span></div>
                  <div dir=3D"ltr"><span>According to&nbsp;</span><a shape=
=3D"rect" class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378333377" href=3D=
"https://files.ettus.com/manual/page_transport.html" rel=3D"nofollow" targe=
t=3D"_blank">https://files.ettus.com/manual/page_transport.html</a>,&nbsp;<=
/div>
                  <div><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">&nbsp;it seems that we can change the
                    default&nbsp;<span><span style=3D"color:rgb(0, 0,      =
                   0);font-family:Helvetica Neue, Helvetica, Arial, sans-se=
rif;"><b>send_buff_size </b>by
                        specifying value in device arguments. I tried
                        the following configuration:</span></span></div>
                  <div dir=3D"ltr"> <span>uhd::usrp::multi_usrp::make(</spa=
n>'addr=3D192.168.12.2,
                    second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16,
                    master_clock_rate=3D245.76e6, type=3Dn3xx,&nbsp;<b>send=
_buff_size</b>=3D33554432')<br clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><span><span><span style=3D"color:rgb(0, =
                          0, 0);font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;">But this didn't have any
                          impact. I measured that the actual buffer is
                          always about ~1MB.</span></span></span></div>
                </div>
                How did you measure the buffer?<br clear=3D"none">
                <br clear=3D"none">
                <br clear=3D"none">
                <blockquote type=3D"cite">
                  <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv537833=
3377ydpa2579362yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helve=
tica, Arial, sans-serif;font-size:13px;">
                    <div dir=3D"ltr"><span><span><span style=3D"color:rgb(0=
,                             0, 0);font-family:Helvetica Neue, Helvetica, =
Arial, sans-serif;"><br clear=3D"none">
                          </span></span></span></div>
                    <div dir=3D"ltr">Then in UHD library, I find the
                      following limit:<br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><span> </span>
                      <div>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">static const size_t
                              MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; //
                              1Mib</div>
                            <div><br clear=3D"none">
                            </div>
                          </div>
                          &nbsp; &nbsp; if (link_params.send_buff_size &gt;
                          MAX_BUFF_SIZE_ETH_MACOS) {</div>
                        <div>&nbsp; &nbsp; &nbsp; &nbsp; link_params.send_b=
uff_size =3D
                          MAX_BUFF_SIZE_ETH_MACOS;</div>
                        <div>&nbsp; &nbsp; }</div>
                        <div dir=3D"ltr"><br clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </div>
                </blockquote>
                Are you on MacOS?&nbsp;&nbsp; If not, that code isn't relev=
ant.&nbsp;
                That code doesn't even get compiled unless you're<br clear=
=3D"none">
                &nbsp; on MacOS.
                <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv53783333=
77yqt4910377105" id=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378333377yqtfd=
24992"><br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378=
333377ydpa2579362yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;">
                      <div dir=3D"ltr"><span> </span>
                        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, =
                              0, 0);font-family:Helvetica Neue, Helvetica, =
Arial, sans-serif;">33554432
                              &gt; <span>1048576 (</span>1Mib), so this
                              may be why the above config didn't work.
                              Then I tried the following configuration:</sp=
an></span><br clear=3D"none">
                        </div>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D=
192.168.13.2,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3D=
n3xx,<b>send_buff_size</b>=3D524288')<br clear=3D"none">
                            </div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><br clear=3D"none">
                            </div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">This one didn't have
                              any impact either.</div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">So, am I wrong in
                              configuring&nbsp;<span><span style=3D"color:r=
gb(0, 0,                                   0);font-family:Helvetica Neue, H=
elvetica, Arial, sans-serif;"><b>send_buff_size
                                  </b>in this way? what is the correct
                                  way?</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><span><span style=3D"color:rgb(0, 0,                           =
        0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br c=
lear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><span><span style=3D"color:rgb(0, 0,                           =
        0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">1M
                                  buffer size is too small for my
                                  application. I am using sampling rate
                                  245.76MHz. This buffer can only save
                                  data up to 0.5ms. I want to allocate a
                                  bigger buffer to achieve better
                                  reliability.</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><span><span style=3D"color:rgb(0, 0,                           =
        0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br c=
lear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><span><span style=3D"color:rgb(0, 0,                           =
        0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">Thank=
s
                                  for any comment.</span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><span><span style=3D"color:rgb(0, 0,                           =
        0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br c=
lear=3D"none">
                                </span></span></div>
                            <div dir=3D"ltr" style=3D"color:rgb(0, 0,      =
                         0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><br clear=3D"none">
                            </div>
                            <div><br clear=3D"none">
                            </div>
                          </div>
                          <br clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            _______________________________________________<br clear=3D"non=
e">
            USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usr=
p-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@list=
s.ettus.com</a><br clear=3D"none">
            To unsubscribe send an email to <a shape=3D"rect" href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp=
-users-leave@lists.ettus.com</a>
            <div class=3D"ydp694195a5yiv5942770610ydp18a06c0yqt4910377105" =
id=3D"ydp694195a5yiv5942770610ydp18a06c0yqtfd94940"><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp694195a5yqt5932123032" id=3D"ydp694195=
a5yqtfd62361">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_2403453_1178099791.1631339791537--

--===============0286375360056694302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0286375360056694302==--
