Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89955403900
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 13:40:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46422384753
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 07:40:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="cYp/cBdK";
	dkim-atps=neutral
Received: from sonic309-13.consmr.mail.bf2.yahoo.com (sonic309-13.consmr.mail.bf2.yahoo.com [74.6.129.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 694E1384251
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 07:39:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631101178; bh=9EngJ5cENMfaYbYCE2STsLsQV/MKdZP7U+OVBHOhmKY=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=cYp/cBdKwmL1CBH7JFtDZJJN9cxnQ4SdYbfDOzZpPo9jU3bXMotfBLkyFlQHvK2HjCbCo59YW/8tTiJm5VsvUu/Pr5mbD9xgoYVmn/KMfczVCx2MqWEGw5XAJpG0thVwWz+r3hIu4dOKl1+Y1ENPfo3k+Wrcm0poyeTooSkpaQaM4VXrXmD+OIi/pCcgYeKw4OCY8o1qasH+WI/XwnYmJgY6AeL/YAV4TalG3DD97c21sJKzWmel6q0FYm5hBbSk3R2q1rvpDbD5eF3WOKIJZSo1lM61m6VmqwfErfxHVNBfwIQ+hD0iYb3GWRnNCADTCjLUZC5Igs8++WjNAIL8pA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631101178; bh=5Nf4i1v6JKOI1+rMfmpJuAs2oElOI4DOAQmgRFGMTQV=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=SkDGs69TSWidE3HB5MuP1jKfcxBGOnnGp4TfoGKgkFdaprAS3278yl1aY6+brOVePmr79wS3+AJT3z1e7o3lBIRRmw6MFniiePGg7l/4iShwxh+4jt1/Q4T3NqQG/uhvyrbK37UqOykLqtNy4pX4vr+c/WHbIRtClbX1rcYnQdlPv1nNPyDlHPLi7sn/RGfHu8pUSzLyZWcscAuBH/QpvgGSLErJW+9dYJS0KqZ+81TZtCKOSuYu3s86bi29aooKqex3TQQwVOOKepAyHj/dkDMLHk2/5NgJSURfqLFtvzNddWOE3f5FiYG66T+IsucvBXG2s24XrmkEzc77TqFvgQ==
X-YMail-OSG: t5FsRTwVM1mJ3ab1.GXJ09z9_XZm9UAX.8CbN3GsVYxlnaqyBJKrRas90rqR55a
 ngw_Gu38E49UUFtVLbRIJ0XUbx.6B6.s9YaABTDRNte43Xa43HscjLGeamnZ2X.mZyrhqsBJ456u
 9eOUQeu5fdfsyAlZ_W0rVWJwTheywi_l3ofmI.4HErP6QDLMaWoaVYZh_p56xO.LC4lKLClUxM.U
 4W7A45KZg_1UlSWFIa6lYe2ToR_Jqc0pSG7QLGCDdAR6BQQx3FnGfyQLvTRd8Ic4eoLUTZZsBQli
 coCqL14I9sUyVj2Y2gyBuzkcVbcm19OD91rduL1PFt3SpixVzUD5L88quv9AtGXof9viaRHAjVnC
 KcqeeKzWtZBILJB60wyuUP__MmEM6T_Y8xNfvbVQDO4F8DfEEDfDYSrBWwotcuPssEq927GXEAb3
 E1q.Db_vtzU4wXX7tDAJx3ZoWH1YsB.4RFvsU5cEin74vID2EpN95uDugWIxMiK0bz_Kx2jC9Yuq
 KCC1bMkarZkiI_khz_QiCv2y_043v_u1U7XYzlQL15FVYRrHZLBTTPryUydvpT6AYWmg5LcuXEqA
 pzjm56vXcM7OofCkEnzlpTv5Wgblc996gBfHQ2uDyLMDT3JyHuK6LXHopWSnXB8fSokgwfM7Za3p
 newTBE_YbkVJdH9Fu3uC1i4vfjfr8vS1vdg.dYk3PlVbi5gdUbNuh0T8NWQ6o8X9Q.oD8DUEDH2s
 FdXgoB.c9miJT57YsnwbnxM8BqEhEmcGtdb0CVNfWFOuuFP.D_gqwFwBgQOhaNOwYnqYwv5WvbR_
 5QDI6oqgtgx3N6mU5w4dNunPsGHCLme65TgPDhnxhs2J8pYvD75yjGuoHLEirRPT008xGUJEixSG
 Yk8OFYHwlDid0OUcNquYAJXZT2mnkzGyX64DJ65zJ7pP_WSpPJbbp4wgJDtVV43dh.OY56QRy9xC
 qQFaFxAQ7WzdbW0wi0tVSM9kPTiDvjllj011J8hgFWcDC4DIMQ_X18NNxKksxkPvvimwp2ARG1w2
 HDcc2DbnQX1JB4RzT5rZZVmbsRmFxCJP90BYf0wNVB05o0EEXWeTQx.PNp0guRt29WkjFl2_npXo
 LGdJYEJS.916DVeDaB6Cz_ax6WXlu45jFwl3hzXeqcDALyJ_bWIcxBw6U57iC6z2xFU1sYhQ6hnH
 swZREJEnSyAbTaNfa2LXT5OxggLv1cM9iFku9bnF7LSaTWWVm1DaQP6UcTOr1Is2rBaI0GObPRbr
 4odYU4L90zTpJw6rYreGaWEMJlDsW7RW7.KCgiOAAX44DoayxojFydw5.NDIYQgeK2PnQo7Stb4S
 RpuaNylXAMxdAxYSL.kjNAyBRJW3nkdsR0w_.VNfDrMFSLfITcSFhP2J5dZIwx9pbgA_FkYBoyvX
 oVDaCaFYtAbIPLfSzc06bXWSn6uv2WATZDbfP7UOtDSdNtEul4rN.dAkMPQpdJhf4S.kqI3nMUW2
 dpOk6iGZbe_ySgyqLOYwtXUVHsgd_S.6oqwANgWqLHYQT4n0gDNZCEejoHuMBuNckxPaM6ejTcm4
 IE3W_jm_.1Zu1vcxRZ8QTIHZInawsS58.rlAjtpEdwp223Fjk3M8DsrUHYFESZnlMjhZ6CpgMh0p
 5vBQCY1O.5pY7_xxX6QcZhKpJB6s7Zy4svpTtNNS3iXidoSFoNqK7DHoBJol5BToR.ybw8rGK83P
 Q37aPYPO3DOvR0N3I1aWj8bNf.RslaJbIYSkZz4EYLxNyHVY5_IV0B0BshgQru_gwikNU4.cp3Gk
 vlRd0vzbppUNLpARaVtOJ2dlWScJGS1pYSxoochkLQyAaOup7nm1vIIVf9mKmdbbYJ5nIDrjxhiK
 yXz2.wRDcJyt.NYEub04zPb6.nhopwtiNPvBqThatT5K41QeY2zORShkjcFdID6rpeNgvtiTh_Yy
 y_URh_Co7dsWBhcmPC9k5qr6d6c0RmNDcjF6uQsVe6BZLj5FN4VtfnlcCna.UZ_ZQR9C6xpxghuc
 vxXmBulkY2jfguX9hd3W8Ru6X6yPR7iWXGOkzfkhlIallXMykrzpGiPMLTbHsS_8j5KyVMT3zyS0
 RCTXZ1Y2H37jH.xF2hdO8U8mbr8yOyq3yPSSwc3UnGA1dCf3LrpOA4TH8bGzcsvXkG0CbRv49VY7
 V7b21LzjEjQKcPJKV04QivbFIb.hyzfivNKMMVoRuhZtpURAx.AuamIunXt5LszV5z6KvgdNI.VF
 y.YoYBKRbAmksntFbe41EwdoIwiswLe3UR.P6drm85O3a8Vkz.lWHNojXxzyz
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.bf2.yahoo.com with HTTP; Wed, 8 Sep 2021 11:39:38 +0000
Date: Wed, 8 Sep 2021 10:26:56 +0000 (UTC)
To: <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <878683371.2099899.1631096816175@mail.yahoo.com>
In-Reply-To: <400fca7d-921f-7d2e-94dc-064542348c9f@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com> <147565774.1577833.1630969165270@mail.yahoo.com> <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com> <715684581.1865263.1631015683450@mail.yahoo.com> <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com> <665568616.1984947.1631044779652@mail.yahoo.com> <400fca7d-921f-7d2e-94dc-064542348c9f@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: 6FE4J33333BL5ZXANDIKQ74KOLYT26AF
X-Message-ID-Hash: 6FE4J33333BL5ZXANDIKQ74KOLYT26AF
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FE4J33333BL5ZXANDIKQ74KOLYT26AF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4242741183903419958=="

--===============4242741183903419958==
Content-Type: multipart/alternative;
	boundary="----=_Part_2099898_718703225.1631096816167"

------=_Part_2099898_718703225.1631096816167
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,=C2=A0The LLL errors happened in host when it talks to N321.N321=
 is connected to the host through two 10GigE SFP cables directly; these is =
no other device in the middle. N321 has one extra RJ45 1GigE cable for mana=
gement. This cable is connected to a switch; host is also connected to this=
 switch.
If N321 receives unsupported protocols on the management port (RJ45) and th=
en generated Rx drop, it is reasonable. But on SFP ports, I don't know what=
 protocol they receive apart from broadcast from host when running uhd_find=
_device and the configuration commands.
Does UHD use IRQ or polling method to retrieve data from NIC?
For the ULLL error in host, I doubt on two things:- tx buffer size: because=
 of the high sampling rate, the tx buffer needs to be bigger to tolerate fl=
uctuation and interruption during processing. What command can be used to c=
heck tx buffer size?- cpu core allocation, NIC binding. There are 8 cores i=
n host; I use separate cores for Tx and Rx. In my program, there are four t=
hreads which use 3 cores, but in htop, I can see 8 threads in my process. A=
re the extra threads created by UHD?=C2=A0

    On Tuesday, 7 September 2021, 22:47:44 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-07 3:59 p.m., zhou wrote:
 =20
=20
 Thanks a lot, Marcus. The kernel version I am using in host is=C2=A05.4.0-=
81, but there is no packet drop. It is still strange that packet drop happe=
ned in USRP.=C2=A0 In my test, sometimes there are ULLLL errors. I am wonde=
ring if there is something wrong with network buffer.  L means "late packet=
', which means that the thing that's producing packets isn't "keeping up" w=
ith the required
 =C2=A0 cadence of samples being consumed by the radio.
=20
 Do you get this when talking to the N321 from your host, or when using the=
 N321 in embedded mode (using the
 =C2=A0 Linux OS running on the N321).
=20
 How are your N321 and host computer connected?=C2=A0 Are they connected vi=
a a switch or direct connected?
=20
 It's not clear to me how the "RX drops" is triggered for the "unsupported =
protocols" case--whether that's just unsupported
 =C2=A0 *ETHERNET* protocols, or any protocol packet for which there isn't =
a service registered on the system--in this case your
 =C2=A0 N321.=C2=A0 If it's the latter, then it may just be the case that y=
our host PC is sending perhaps broadcast or other packets for
 =C2=A0 which there are no services registered on your N321 system to proce=
ss them, so it drops them, and just logs it.=C2=A0 Unless
 =C2=A0 your host PC is doing a LOT of this, it's of no consequence.
=20
=20
=20
 =20
 =20
      On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
 =20
     On 2021-09-07 7:54 a.m., zhou wrote:
 =20
=20
    Thanks Marcus. What is the reason for Rx packet drop in N321? I have co=
nfigured the same MTU on both ends of the connection. Interestingly, there =
is no Tx packet loss but Rx.  Hmmm, so, just found this:
=20
=20
=20
Beginning with kernel 2.6.37, it has been changed the meaning of dropped pa=
cket count. Before, dropped packets was most likely due to an error. Now, t=
he rx_dropped counter shows statistics for dropped frames because of:
   =20
   - Softnet backlog full
   - Bad / Unintended VLAN tags
   - Unknown / Unregistered protocols
   - IPv6 frames when the server is not configured for IPv6
=20
[...]
=20
If the rx_dropped counter stops incrementing while tcpdump is running; then=
 it is more than likely showing drops because of the reasons listed earlier=
.
=20

=20
=20

=20
=20
IN other words, mostly harmless. At some point, the semantics of "dropped p=
ackets" changed, and I didn't even notice.
=20
  =20

=20
=20

=20
 =20
 =20
 =20
      On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
 =20
     On 2021-09-06 6:59 p.m., zhou wrote:
 =20
=20
    Hi Marcus,=20
  Could you please help on this? I find some confusing information on MTU c=
onfiguration in different ettus web pages: https://files.ettus.com/manual/p=
age_transport.html=C2=A0:=C2=A0 MTU=3D8000 for 10GigE
  https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=C2=A0: =
MTU=3D9000 for 10GigE
 =20
  Which one is correct? :=C2=A0=20
  Thanks.  They're both valid, in that a larger MTU tends to improve bulk p=
erformance at high sample rates.
=20
 The caveat is that BOTH SIDES of the connection have to "agree" on the MTU=
, and some host controllers
 =C2=A0 will happily accept a large MTU, but be unable to actually support =
it, although that situation is NOT one
 =C2=A0 that I have seen in 10GiGe controllers--they inherently want to sup=
port "jumbo frames".=20
=20
=20
=20
 =20
 =20
      On Monday, 6 September 2021, 22:33:35 BST, zhou via USRP-users <usrp-=
users@lists.ettus.com> wrote: =20
 =20
             Hi,=C2=A0 =20
  I have a problem with the N321 USRP. I find packet dropped in USRP but no=
t in host. In host, I am running Ubuntu 18.04.=20
 =20
=C2=A0Below is the ifconfig result in N321:
=20
root@ni-n3xx-320CAAB:~# ifconfig
=20
eth0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BA
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.10=
.165=C2=A0Bcast:192.168.255.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:1500=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:618374 er=
rors:0 dropped:11485 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:193714 er=
rors:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:39776733 (3=
7.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Interrupt:27 Base ad=
dress:0xb000
=20
=C2=A0
=20
int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr AE:CD:B=
A:E1:CF:96
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:169.254.0.=
1=C2=A0 Bcast:169.254.0.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:456 error=
s:0 dropped:0 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:15 errors=
:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:37392 (36.5=
 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
=20
=C2=A0
=20
lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Local Loopback
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:127.0.0.1=
=C2=A0 Mask:255.0.0.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP LOOPBACK RUNNING=
=C2=A0 MTU:65536=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:89 errors=
:0 dropped:0 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:89 errors=
:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:7480 (7.3 K=
iB)=C2=A0 TX bytes:7480 (7.3 KiB)
=20
=C2=A0
=20
sfp0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BB
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.12=
.2=C2=A0 Bcast:192.168.12.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:6239 erro=
rs:0 dropped:804 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:5669 erro=
rs:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:18466697 (1=
7.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
=20
=C2=A0
=20
sfp1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2=
F:32:36:BC
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.168.13=
.2=C2=A0 Bcast:192.168.13.255=C2=A0 Mask:255.255.255.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUNNING=
 MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:24868 err=
ors:0 dropped:796 overruns:0 frame:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:24613 err=
ors:0 dropped:0 overruns:0 carrier:0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 collisions:0 txqueue=
len:1000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:20486915 (1=
9.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
=20
=C2=A0
=20
Below is ifconfig result in host:
=20
user@USRP-SERVER:~$ ifconfig
=20
eno1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 1500
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.10.143=C2=A0 netmas=
k 255.255.255.0=C2=A0 broadcast 192.168.255.255
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::b27b:25ff:fe1d:9e4e=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e=C2=A0 txq=
ueuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 5604=C2=A0 bytes 4164=
35 (416.4 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 404=C2=A0 bytes 68556=
 (68.5 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device interrupt 16=C2=A0 memory=
 0xd2100000-d2120000
=20
=C2=A0
=20
enp1s0f0:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.12.1=C2=A0 netmask =
255.255.255.0=C2=A0 broadcast 192.168.12.255
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::faf2:1eff:fe42:dddc=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dc=C2=A0 tx=
queuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 294=C2=A0 bytes 35184=
 (35.1 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 395=C2=A0 bytes 37148=
 (37.1 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0
=20
enp1s0f1:flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.13.1=C2=A0 netmask =
255.255.255.0=C2=A0 broadcast 192.168.13.255
=20
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:dddd=
=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dd=C2=A0 tx=
queuelen 1000=C2=A0 (Ethernet)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 9=C2=A0 bytes 2228 (2=
.2 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 72=C2=A0 bytes 7983 (=
7.9 KB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
=20
=C2=A0
=20
lo:flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 127.0.0.1=C2=A0 netmask 255=
.0.0.0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 ::1=C2=A0 prefixlen 128=C2=
=A0 scopeid 0x10<host>
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop=C2=A0 txqueuelen 1000=C2=A0=
 (Local Loopback)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 21071=C2=A0 bytes 149=
7110 (1.4 MB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0=C2=A0 dropped 0=C2=
=A0 overruns 0=C2=A0 frame 0
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 21071=C2=A0 bytes 149=
7110 (1.4 MB)
=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0=C2=A0 dropped 0 over=
runs 0=C2=A0 carrier 0=C2=A0 collisions 0
 =C2=A0 Could you please let me know what is the possible reason for packet=
 drop in USRP? How to fix it? =20
  Thanks for any inputs. =20
 =20
 =20
      _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
=20
      =20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
=20
  =20
------=_Part_2099898_718703225.1631096816167
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp366bf986yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,&nbsp;</div><div d=
ir=3D"ltr" data-setdir=3D"false">The LLL errors happened in host when it ta=
lks to N321.</div><div dir=3D"ltr" data-setdir=3D"false">N321 is connected =
to the host through two 10GigE SFP cables directly; these is no other devic=
e in the middle. N321 has one extra RJ45 1GigE cable for management. This c=
able is connected to a switch; host is also connected to this switch.</div>=
<div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setd=
ir=3D"false">If N321 receives unsupported protocols on the management port =
(RJ45) and then generated Rx drop, it is reasonable. But on SFP ports, I do=
n't know what protocol they receive apart from broadcast from host when run=
ning uhd_find_device and the configuration commands.</div><div dir=3D"ltr" =
data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Does=
 UHD use IRQ or polling method to retrieve data from NIC?</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>For the ULLL error in host, I doubt on two things:</div><div dir=3D"ltr" d=
ata-setdir=3D"false">- tx buffer size: because of the high sampling rate, t=
he tx buffer needs to be bigger to tolerate fluctuation and interruption du=
ring processing. What command can be used to check tx buffer size?</div><di=
v dir=3D"ltr" data-setdir=3D"false">- cpu core allocation, NIC binding. The=
re are 8 cores in host; I use separate cores for Tx and Rx. In my program, =
there are four threads which use 3 cores, but in htop, I can see 8 threads =
in my process. Are the extra threads created by UHD?&nbsp;</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpbdd21bdeyahoo_quoted_1487745696" class=3D"ydpbd=
d21bdeyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 7 September 2021, 22:47:44 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpbdd21bdeyiv5505480720"><div>
    <div class=3D"ydpbdd21bdeyiv5505480720moz-cite-prefix">On 2021-09-07 3:=
59 p.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div class=3D"ydpbdd21bdeyiv5505480720ydp9253=
c75yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;">
        <div dir=3D"ltr">Thanks a lot, Marcus.</div>
        <div dir=3D"ltr">The kernel version I am using
          in host is&nbsp;<span>5.4.0-81, but there is no packet drop. It i=
s
            still strange that packet drop happened in USRP.&nbsp;</span></=
div>
        <div dir=3D"ltr"><span>In my test, sometimes
            there are ULLLL errors. I am wondering if there is something
            wrong with network buffer.</span></div>
      </div>
   =20
    L means "late packet', which means that the thing that's producing
    packets isn't "keeping up" with the required<br clear=3D"none">
    &nbsp; cadence of samples being consumed by the radio.<br clear=3D"none=
">
    <br clear=3D"none">
    Do you get this when talking to the N321 from your host, or when
    using the N321 in embedded mode (using the<br clear=3D"none">
    &nbsp; Linux OS running on the N321).<br clear=3D"none">
    <br clear=3D"none">
    How are your N321 and host computer connected?&nbsp; Are they connected
    via a switch or direct connected?<br clear=3D"none">
    <br clear=3D"none">
    It's not clear to me how the "RX drops" is triggered for the
    "unsupported protocols" case--whether that's just unsupported<br clear=
=3D"none">
    &nbsp; *ETHERNET* protocols, or any protocol packet for which there isn=
't
    a service registered on the system--in this case your<br clear=3D"none"=
>
    &nbsp; N321.&nbsp; If it's the latter, then it may just be the case tha=
t your
    host PC is sending perhaps broadcast or other packets for<br clear=3D"n=
one">
    &nbsp; which there are no services registered on your N321 system to
    process them, so it drops them, and just logs it.&nbsp; Unless<br clear=
=3D"none">
    &nbsp; your host PC is doing a LOT of this, it's of no consequence.<div=
 class=3D"ydpbdd21bdeyiv5505480720yqt8045889163" id=3D"ydpbdd21bdeyiv550548=
0720yqtfd86915"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"ydpbdd21bdeyiv5505480720ydp9253c75yahoo-style-wrap" sty=
le=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13=
px;">
        <div dir=3D"ltr"><span><br clear=3D"none">
          </span></div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayahoo_quoted" id=3D"=
ydpbdd21bdeyiv5505480720ydp4cd0c25ayahoo_quoted_1436736301">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D.
            Leech <a shape=3D"rect" class=3D"ydpbdd21bdeyiv5505480720moz-tx=
t-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318">
              <div>
                <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530=
318moz-cite-prefix">On
                  2021-09-07 7:54 a.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530=
318ydp49813887yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvet=
ica, Arial, sans-serif;font-size:13px;">
                  <div dir=3D"ltr">Thanks Marcus. What is the reason for
                    Rx packet drop in N321? I have configured the same
                    MTU on both ends of the connection. Interestingly,
                    there is no Tx packet loss but Rx.</div>
                </div>
                Hmmm, so, just found this:<br clear=3D"none">
                <br clear=3D"none">
                <blockquote>
                  <p>Beginning with kernel 2.6.37, it has been changed
                    the meaning of dropped packet count. Before, dropped
                    packets was most likely due to an error. Now, the
                    rx_dropped counter shows statistics for dropped
                    frames because of:</p>
                  <ul><li>Softnet backlog full</li><li>Bad / Unintended VLA=
N tags</li><li>Unknown / Unregistered protocols</li><li>IPv6 frames when th=
e server is not configured
                      for IPv6</li></ul>
                  <p>[...]</p>
                  <p>If the rx_dropped counter stops incrementing while
                    tcpdump is running; then it is more than likely
                    showing drops because of the reasons listed earlier.</p=
>
                  <p><br clear=3D"none">
                  </p>
                  <p><br clear=3D"none">
                  </p>
                  <p>IN other words, mostly harmless. At some point, the
                    semantics of "dropped packets" changed, and I didn't
                    even notice.</p>
                  <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv62485=
30318yqt3364300945" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318y=
qtfd36587"><br clear=3D"none">
                  </div>
                  <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv62485=
30318yqt3364300945" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318y=
qtfd18160">
                    <p><br clear=3D"none">
                    </p>
                    <p><br clear=3D"none">
                    </p>
                  </div>
                </blockquote>
                <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530=
318yqt3364300945" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318yqt=
fd90433">
                  <blockquote type=3D"cite">
                    <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv624=
8530318ydp49813887yahoo-style-wrap" style=3D"font-family:Helvetica Neue, He=
lvetica, Arial, sans-serif;font-size:13px;">
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv624=
8530318ydpa0c1475fyahoo_quoted" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayi=
v6248530318ydpa0c1475fyahoo_quoted_1290698225">
                      <div style=3D"font-family:'Helvetica Neue', Helvetica=
, Arial, sans-serif;font-size:13px;color:#26282a;">
                        <div> On Tuesday, 7 September 2021, 00:05:57
                          BST, Marcus D. Leech <a shape=3D"rect" class=3D"y=
dpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318moz-txt-link-rfc2396E" href=
=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollow" target=3D"_blank">&lt;=
patchvonbraun@gmail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv=
6248530318ydpa0c1475fyiv5669889621">
                            <div>
                              <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0=
c25ayiv6248530318ydpa0c1475fyiv5669889621moz-cite-prefix">On
                                2021-09-06 6:59 p.m., zhou wrote:<br clear=
=3D"none">
                              </div>
                              <blockquote type=3D"cite"> </blockquote>
                            </div>
                            <div>
                              <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0=
c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;">
                                <div dir=3D"ltr">Hi Marcus,</div>
                                <div dir=3D"ltr"><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Could you please help on
                                  this?</div>
                                <div dir=3D"ltr">I find some confusing
                                  information on MTU configuration in
                                  different ettus web pages:</div>
                                <div dir=3D"ltr"><a shape=3D"rect" href=3D"=
https://files.ettus.com/manual/page_transport.html" rel=3D"nofollow" target=
=3D"_blank">https://files.ettus.com/manual/page_transport.html</a>&nbsp;:&n=
bsp;
                                  MTU=3D8000 for 10GigE<br clear=3D"none">
                                </div>
                                <div dir=3D"ltr"><a shape=3D"rect" href=3D"=
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel=3D"n=
ofollow" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tunin=
g_Tips_and_Tricks</a>&nbsp;:
                                  MTU=3D9000 for 10GigE<br clear=3D"none">
                                </div>
                                <div><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Which one is correct? :&nb=
sp;</div>
                                <div><br clear=3D"none">
                                </div>
                                <div dir=3D"ltr">Thanks.</div>
                              </div>
                              They're both valid, in that a larger MTU
                              tends to improve bulk performance at high
                              sample rates.<br clear=3D"none">
                              <br clear=3D"none">
                              The caveat is that BOTH SIDES of the
                              connection have to "agree" on the MTU, and
                              some host controllers<br clear=3D"none">
                              &nbsp; will happily accept a large MTU, but b=
e
                              unable to actually support it, although
                              that situation is NOT one<br clear=3D"none">
                              &nbsp; that I have seen in 10GiGe
                              controllers--they inherently want to
                              support "jumbo frames".
                              <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0=
c25ayiv6248530318ydpa0c1475fyiv5669889621yqt4485559050" id=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621yqtfd46881"><br =
clear=3D"none">
                                <br clear=3D"none">
                                <br clear=3D"none">
                                <blockquote type=3D"cite">
                                  <div class=3D"ydpbdd21bdeyiv5505480720ydp=
4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" s=
tyle=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:=
13px;">
                                    <div><br clear=3D"none">
                                    </div>
                                    <div><br clear=3D"none">
                                    </div>
                                  </div>
                                  <div class=3D"ydpbdd21bdeyiv5505480720ydp=
4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted" id=3D"=
ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp=
ba31248yahoo_quoted_1193244036">
                                    <div style=3D"font-family:'Helvetica   =
                                    Neue', Helvetica, Arial, sans-serif;fon=
t-size:13px;color:#26282a;">
                                      <div> On Monday, 6 September 2021,
                                        22:33:35 BST, zhou via
                                        USRP-users <a shape=3D"rect" class=
=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv566988962=
1moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"n=
ofollow" target=3D"_blank">&lt;usrp-users@lists.ettus.com&gt;</a>
                                        wrote: </div>
                                      <div><br clear=3D"none">
                                      </div>
                                      <div><br clear=3D"none">
                                      </div>
                                      <div>
                                        <div id=3D"ydpbdd21bdeyiv5505480720=
ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124">
                                          <div>
                                            <div class=3D"ydpbdd21bdeyiv550=
5480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365=
124ydpb9dc4fa4yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvet=
ica, Arial, sans-serif;font-size:13px;">
                                              <div class=3D"ydpbdd21bdeyiv5=
505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv82193=
65124yqt2927466630" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318y=
dpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd67245">
                                              </div>
                                              <div dir=3D"ltr">
                                                <div class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv624853031=
8ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd87247">
                                                </div>
                                                <div>
                                                  <div class=3D"ydpbdd21bde=
yiv5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8=
219365124yqt2927466630" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530=
318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd61407">
                                                    <div dir=3D"ltr">Hi,&nb=
sp;</div>
                                                  </div>
                                                  <div dir=3D"ltr"><br clea=
r=3D"none">
                                                  </div>
                                                  <div dir=3D"ltr">I have
                                                    a problem with the
                                                    N321 USRP. I find
                                                    packet dropped in
                                                    USRP but not in
                                                    host. In host, I am
                                                    running Ubuntu
                                                    18.04.</div>
                                                  <div><br clear=3D"none">
                                                  </div>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>&nbsp;<u>Below
                                                        is the ifconfig
                                                        result in N321:</u>=
</b></p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~#
                                                    ifconfig</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>eth0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    Link encap:Ethernet&nbs=
p;
                                                    HWaddr
                                                    00:80:2F:32:36:BA</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    inet
                                                    addr:192.168.10.165&nbs=
p;
Bcast:192.168.255.255&nbsp; Mask:255.255.255.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    UP BROADCAST RUNNING
                                                    MULTICAST&nbsp; MTU:<b>=
1500</b>&nbsp;
                                                    Metric:1</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX packets:618374
                                                    errors:0 <b><span style=
=3D"color:red;">dropped:11485</span></b><span style=3D"color:red;">
                                                    </span>overruns:0
                                                    frame:0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    TX packets:193714
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0</p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX bytes:39776733
                                                    (37.9 MiB)&nbsp; TX
                                                    bytes:14546432 (13.8
                                                    MiB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    Interrupt:27 Base
                                                    address:0xb000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">int0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    Link encap:Ethernet&nbs=
p;
                                                    HWaddr
                                                    AE:CD:BA:E1:CF:96</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    inet
                                                    addr:169.254.0.1&nbsp;
                                                    Bcast:169.254.0.255&nbs=
p;
                                                    Mask:255.255.255.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    UP BROADCAST RUNNING
                                                    MULTICAST&nbsp; MTU:900=
0&nbsp;
                                                    Metric:1</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX packets:456
                                                    errors:0 dropped:0
                                                    overruns:0 frame:0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    TX packets:15
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0</p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX bytes:37392 (36.5
                                                    KiB)&nbsp; TX bytes:277=
0
                                                    (2.7 KiB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    Link encap:Local
                                                    Loopback</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    inet addr:127.0.0.1&nbs=
p;
                                                    Mask:255.0.0.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    UP LOOPBACK RUNNING&nbs=
p;
                                                    MTU:65536&nbsp; Metric:=
1</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX packets:89
                                                    errors:0 dropped:0
                                                    overruns:0 frame:0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    TX packets:89
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0</p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX bytes:7480 (7.3
                                                    KiB)&nbsp; TX bytes:748=
0
                                                    (7.3 KiB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>sfp0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    Link encap:Ethernet&nbs=
p;
                                                    HWaddr
                                                    00:80:2F:32:36:BB</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    inet
                                                    addr:192.168.12.2&nbsp;
                                                    Bcast:192.168.12.255&nb=
sp;
                                                    Mask:255.255.255.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    UP BROADCAST RUNNING
                                                    MULTICAST&nbsp; MTU:<b>=
9000</b>&nbsp;
                                                    Metric:1</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX packets:6239
                                                    errors:0 <b><span style=
=3D"color:red;">dropped:804
                                                      </span></b>overruns:0
                                                    frame:0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    TX packets:5669
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0</p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX bytes:18466697
                                                    (17.6 MiB)&nbsp; TX
                                                    bytes:18417536 (17.5
                                                    MiB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>sfp1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    Link encap:Ethernet&nbs=
p;
                                                    HWaddr
                                                    00:80:2F:32:36:BC</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    inet
                                                    addr:192.168.13.2&nbsp;
                                                    Bcast:192.168.13.255&nb=
sp;
                                                    Mask:255.255.255.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    UP BROADCAST RUNNING
                                                    MULTICAST&nbsp; MTU:<b>=
9000</b>&nbsp;
                                                    Metric:1</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX packets:24868
                                                    errors:0 <b><span style=
=3D"color:red;">dropped:796</span></b><span style=3D"color:red;">
                                                    </span>overruns:0
                                                    frame:0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    TX packets:24613
                                                    errors:0 dropped:0
                                                    overruns:0 carrier:0</p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    collisions:0
                                                    txqueuelen:1000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
                                                    RX bytes:20486915
                                                    (19.5 MiB)&nbsp; TX
                                                    bytes:19611643 (18.7
                                                    MiB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><u><b>Below
                                                        is ifconfig
                                                        result in host:</b>=
</u></p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">user@USRP-SERVER:~$
                                                    ifconfig</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>eno1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>1500</b></p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet 192.168.10.143&nbs=
p;
                                                    netmask
                                                    255.255.255.0&nbsp;
                                                    broadcast
                                                    192.168.255.255</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet6
                                                    fe80::b27b:25ff:fe1d:9e=
4e&nbsp;
                                                    prefixlen 64&nbsp;
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ethe=
r
                                                    b0:7b:25:1d:9e:4e&nbsp;
                                                    txqueuelen 1000&nbsp;
                                                    (Ethernet)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX packets 5604&nbsp;
                                                    bytes 416435 (416.4
                                                    KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX errors 0&nbsp; dropp=
ed
                                                    0&nbsp; overruns 0&nbsp=
; frame
                                                    0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX packets 404&nbsp;
                                                    bytes 68556 (68.5
                                                    KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX errors 0&nbsp; dropp=
ed
                                                    0 overruns 0&nbsp;
                                                    carrier 0&nbsp;
                                                    collisions 0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    device interrupt 16&nbs=
p;
                                                    memory
                                                    0xd2100000-d2120000</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b><span style=
=3D"color:red;">9000</span></b></p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet 192.168.12.1&nbsp;
                                                    netmask
                                                    255.255.255.0&nbsp;
                                                    broadcast
                                                    192.168.12.255</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet6
                                                    fe80::faf2:1eff:fe42:dd=
dc&nbsp;
                                                    prefixlen 64&nbsp;
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    ether
                                                    f8:f2:1e:42:dd:dc&nbsp;
                                                    txqueuelen 1000&nbsp;
                                                    (Ethernet)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX packets 294&nbsp;
                                                    bytes 35184 (35.1
                                                    KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX errors 0&nbsp; dropp=
ed
                                                    0&nbsp; overruns 0&nbsp=
; frame
                                                    0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX packets 395&nbsp;
                                                    bytes 37148 (37.1
                                                    KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX errors 0&nbsp; dropp=
ed
                                                    0 overruns 0&nbsp;
                                                    carrier 0&nbsp;
                                                    collisions 0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>9000</b></p=
>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet 192.168.13.1&nbsp;
                                                    netmask
                                                    255.255.255.0&nbsp;
                                                    broadcast
                                                    192.168.13.255</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp=
;inet6
                                                    fe80::faf2:1eff:fe42:dd=
dd&nbsp;
                                                    prefixlen 64&nbsp;
                                                    scopeid
                                                    0x20&lt;link&gt;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    ether
                                                    f8:f2:1e:42:dd:dd&nbsp;
                                                    txqueuelen 1000&nbsp;
                                                    (Ethernet)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX packets 9&nbsp; byte=
s
                                                    2228 (2.2 KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX errors 0&nbsp; dropp=
ed
                                                    0&nbsp; overruns 0&nbsp=
; frame
                                                    0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX packets 72&nbsp; byt=
es
                                                    7983 (7.9 KB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX errors 0&nbsp; dropp=
ed
                                                    0 overruns 0&nbsp;
                                                    carrier 0&nbsp;
                                                    collisions 0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">lo:
flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet 127.0.0.1&nbsp;
                                                    netmask 255.0.0.0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    inet6 ::1&nbsp; prefixl=
en
                                                    128&nbsp; scopeid
                                                    0x10&lt;host&gt;</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    loop&nbsp; txqueuelen
                                                    1000&nbsp; (Local
                                                    Loopback)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX packets 21071&nbsp;
                                                    bytes 1497110 (1.4
                                                    MB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    RX errors 0&nbsp; dropp=
ed
                                                    0&nbsp; overruns 0&nbsp=
; frame
                                                    0</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX packets 21071&nbsp;
                                                    bytes 1497110 (1.4
                                                    MB)</p>
                                                  <p class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    TX errors 0&nbsp; dropp=
ed
                                                    0 overruns 0&nbsp;
                                                    carrier 0&nbsp;
                                                    collisions 0</p>
                                                  <div>&nbsp;</div>
                                                  <div>Could you please
                                                    let me know what is
                                                    the possible reason
                                                    for packet drop in
                                                    USRP? How to fix it?</d=
iv>
                                                </div>
                                                <div><br clear=3D"none">
                                                </div>
                                                <div dir=3D"ltr">Thanks
                                                  for any inputs.</div>
                                                <div class=3D"ydpbdd21bdeyi=
v5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv821=
9365124yqt2927466630" id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv624853031=
8ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd49064">
                                                  <div dir=3D"ltr"><br clea=
r=3D"none">
                                                  </div>
                                                  <div dir=3D"ltr"><br clea=
r=3D"none">
                                                  </div>
                                                  <br clear=3D"none">
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class=3D"ydpbdd21bdeyiv5505480=
720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yqt2927466630"=
 id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayiv6248530318ydpa0c1475fyiv566988=
9621ydpba31248yqtfd65263">_______________________________________________<b=
r clear=3D"none">
                                          USRP-users mailing list -- <a sha=
pe=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">
                                          To unsubscribe send an email
                                          to <a shape=3D"rect" href=3D"mail=
to:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usr=
p-users-leave@lists.ettus.com</a><br clear=3D"none">
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayqt3364300945"=
 id=3D"ydpbdd21bdeyiv5505480720ydp4cd0c25ayqtfd40783">_____________________=
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
------=_Part_2099898_718703225.1631096816167--

--===============4242741183903419958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4242741183903419958==--
