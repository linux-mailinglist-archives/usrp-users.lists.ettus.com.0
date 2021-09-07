Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F22F402F51
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 22:00:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DD8538455D
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 16:00:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Lvsglx8s";
	dkim-atps=neutral
Received: from sonic303-3.consmr.mail.bf2.yahoo.com (sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 22721384023
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 15:59:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631044783; bh=+yn+lRh4V5x6aSWtNWQxO2HrFdVBH3/uamYCkfKeuJc=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Lvsglx8sacLt1/lIK9vEBKBNOJK1l1ENQOS8X0m5cNHKp1p1xN5Ieg7a4dzx3GuoZF+c/JA7fCPxGw56w2JmFBRrd4mHBGIo5+aSIGbEjF3VqqTXntp2IGMBOsmk2LCzLHS/YF0VfTuYWqIp3NgpquQWUrGnt8ROsPZcXaZiCvzCgtW7AWJs/PXRdFWAwzh8E/Zf0G7W/qjgxmkFtODA6EmF/ucKbtEfURxKC6KQxBB9On9fl8kKAyyxJ5b8aVOxBXjtwheeZniSJeKcaEB3MKttQ41SDkwKxgYIrktKM09RnFL+wE7bZQmXn5dBmGE5W7Jb0vKRfAKQpT+CgoBSIQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631044783; bh=kXI459Dr/i9HSvv5LL7hkQiaGO6TdFUTc8bwR8YF6Ql=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=mCCWl5AFbBJWI0FgeYZFmg74qcHgTGx3yfH/MVuM43UZkzKwEuAGqo27wGdXVcV2ilZqRXgfgQqmJR8Eof927TRDZ6p3Xg8LQbdcZEzcceuxhoLt+y7hzS1nLKmWIqmyenxNushdbnbzrb/AGMhZa/25/UE6WOXdiA8TsU5VWfaayHxuJoAIMw+EovJb1fF40FGrXCVS+8FRCKJoKS1VeoQwtLh8QUbhSEFmKYjH3MFv8ElHMHDbAYdBmCDOdlFS3TF/iVZErkotfNcGYIqqC85stlSBrUa1u/6axd4MnRw6y+wSvka/apT4gp1BEN/oBJBa20t69EZGTEGZhUthbQ==
X-YMail-OSG: 23SOcKcVM1neo7IEcWLl9BOv3MZ1VjNFSqMNi79yWH449V8dTsguylFMYCLoUO_
 VxbeQfLU9YO33AgzcYG5EIYeRWWaZfVEEdZnzYlE.CaKQwbV5EjNbRk.LgtzxWSPqZw1TmA_wYm5
 I6pn0_RFxgO1Hjl1JpDXY5u8tEaNxysrIYGaYNd8P9ihTMgF7lyct1Chb93BTt5VlovoCOpg4eGu
 nqtCu.4sel6_LbdDN3_z9MVUIj6Xf_Ocq0H1DCSvPghi90ArufPQItPEkzdMZfIduRuF_ic6AKDh
 o5Q8DeaUCFWR_USbIVi7vLS.sJcennMMroGlDeZ.tHmqvCWcegMFwVvkuPZOgbn_Fz1YceFayIbJ
 NIa5PiZooT6B8_7rFF818yH75P7rhhKeF0uicjhtHydqZpnO3hpKvHg5py9v6PH9qsqOkksA5Uvg
 McjkEASJGwFYYFn8mzNQ68y2FljTTvReriHPElAe1ODj9V_KwY23KAJgoqJerZbQOZ6X_s7mJYL5
 l0NtFFWUhYKOwGl1_ntAWQO9qrfL4SIPYqbAnEpE26wrRsphdOK6QYR1SPVzlRcLA_rKnnX7YMqk
 VASwkqIcVaOGu4lljhTDxbczAlZlz7cmK1TPtqpmLf9Z_kHshcSZ0brOAYBTwwi7sCFN7pgyIYUF
 uT4ivEyodvf1XA1.B05qwbVztTxFoD07rRM72f_jXGulkqypIvRmJgXTqu2GHJlVoRHXUFl9DMnU
 5GF5Z7pBiTLzzehhXuMANXwCnBxn0vgxfVb9vpJQT2QZVg8vPWoAxzkvQi.I6vGged2_zbBA04fZ
 URVF6QeOv4BCU6AUrgwWpwF3OliMvPa3fXFoD2x9FAMbKnBBYNT9VP5C9w1vni4xtr5dc0clDItU
 8av3bVs_X7pfVW2VsuzEnsU8qJhL7EWimmmzZvWDN9yvHlM9cmhLj1zYseIn8regDSPqMkxvkyAT
 8UfToVQp6g4a88M0IPHxEiFv1Z5__J5NDZ9nWjJzYpnMzeF0c8Uu7ZUvTHYdC5R7xw4zAUZwQEBI
 JvfIN9H2zG8FVTzrGcnWOpSvCZlZsquGgk1j4r4DbWZASFtG0tCm9NECjTz.DOcgsSdfnNqiz2F2
 YxwVsSO1_M90SCQMLme6waJo4k3c1QTMDMidSUxcRUt1YM644DcpFS7sOEJUTEXh49MWnIwMs_.1
 0n_ECQTuzji3w4ctLq5FVn5CfICjQSZZqe8wzPrDG.I2K0uWpDRnLA1a0nfmiOcdUEOPXlqIh1Em
 w8d9Iv4Twrno4A8..shACV5UYQsV8I7RAIPV.AE1K0l3MtIdbo9AbZDWJ1IwU8fKEEQ5FayghgfW
 mb1ulINjhPA3wxPCdr.cChuZXEMwERS6M5HJRq7khkmjUlIk7xzS9SVM0B5eO_ELr3je1gpzlZnK
 yR29fjIJYGxvbNzCvBgrRPCbK_gUz.Jok2M80emwD4CvUnlYHbRF1Tcl7.R7ubp1pMnxrNAuqPqM
 q8JsfoLWfMaacUtRrl.mrC3asw34JnL1xz54fxAEAgZ8XT6BzdfDlJAB9.X3SRLhuxRPOkx4Mo.t
 FHe.5KtI5nR05EUcrgvxYKF0b9Yj.TVJ7FFBsFtj3KwaUWDuwtoUUbUsIVi3.sBUhAFBNQkw0f.2
 a5XyeRnB5IL1gS8wTRujtZ9GQTx15Fm1DdYxQ_FYTjSuZQZcQ.kas7zgmLDpDwd0zXMyzMElMj5t
 QncQm3hgzitWowiGbUKcwW5CjHbmu8HLbnV__u3UsaItLqljYHOC4.8CFOUGO9UTzPXgQHQzPg29
 PE.GQ7TnuGWQWnzZiza6ApWFOc6aVk5gRk6RDy4QOqIM4JIjWPDUVMtchpNHSbLuxSKCh3BmXA_n
 U5vkyDlpzZ6SVo6n03C_YxexdT4cTspxYVV7UhXz536TMrxMuNOZ1JkCbRfkG4iuUagDHqcztFF6
 7Ng.PnKR.y76lkTwSaJQbXvZv.8iNYy9Nn7oq7kEcXUTOLZPlMoi97sTuGcGpUdEqhTrHBM8eADB
 PS77U_xHexocLMxXNGaVgU.23.SxCfoz464ZFciJ.QUmDviBfXIm55HKpE0_.NxlqoGRhTryWobQ
 0iOxVoPDkgnaVgYpFH8QcW6EMKVCLy0PpsJ33jwNZOwfy_FpwM75Kd9w7THxqwgtcJpAorU9pMhE
 JlFNV_hqrPO4DM8WjJB1XsElcvU6Skj6B9jmLcBP1gik9u_LBhbNSAwPnInUTbJUMxiyzXzLkrIj
 kmUPage2spAvRNSSdIeiJVIb88Qr3aTHIQGlphwWa6D0XmCsu_NhxqNdy06MIvZY-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 Sep 2021 19:59:43 +0000
Date: Tue, 7 Sep 2021 19:59:39 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <665568616.1984947.1631044779652@mail.yahoo.com>
In-Reply-To: <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com> <147565774.1577833.1630969165270@mail.yahoo.com> <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com> <715684581.1865263.1631015683450@mail.yahoo.com> <c1edb69a-6d45-f2c1-73b3-c49ca4863c28@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: I6DJDGR5T7MFTFOELYTSL22OQFUOTWNX
X-Message-ID-Hash: I6DJDGR5T7MFTFOELYTSL22OQFUOTWNX
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I6DJDGR5T7MFTFOELYTSL22OQFUOTWNX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8467559055016228696=="

--===============8467559055016228696==
Content-Type: multipart/alternative;
	boundary="----=_Part_1984946_156119771.1631044779647"

------=_Part_1984946_156119771.1631044779647
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks a lot, Marcus.The kernel version I am using in host is=C2=A05.4.0-8=
1, but there is no packet drop. It is still strange that packet drop happen=
ed in USRP.=C2=A0In my test, sometimes there are ULLLL errors. I am wonderi=
ng if there is something wrong with network buffer.

    On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-07 7:54 a.m., zhou wrote:
 =20
=20
 Thanks Marcus. What is the reason for Rx packet drop in N321? I have confi=
gured the same MTU on both ends of the connection. Interestingly, there is =
no Tx packet loss but Rx.  Hmmm, so, just found this:
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
.165=C2=A0 Bcast:192.168.255.255=C2=A0 Mask:255.255.255.0
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
------=_Part_1984946_156119771.1631044779647
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp9253c75yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks a lot, Marcus.</div><div dir="ltr" data-setdir="false">The kernel version I am using in host is&nbsp;<span>5.4.0-81, but there is no packet drop. It is still strange that packet drop happened in USRP.&nbsp;</span></div><div dir="ltr" data-setdir="false"><span>In my test, sometimes there are ULLLL errors. I am wondering if there is something wrong with network buffer.</span></div><div dir="ltr" data-setdir="false"><span><br></span></div><div><br></div>
        
        </div><div id="ydp4cd0c25ayahoo_quoted_1436736301" class="ydp4cd0c25ayahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, 7 September 2021, 14:39:54 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp4cd0c25ayiv6248530318"><div>
    <div class="ydp4cd0c25ayiv6248530318moz-cite-prefix">On 2021-09-07 7:54 a.m., zhou wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div class="ydp4cd0c25ayiv6248530318ydp49813887yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Thanks Marcus. What is the
          reason for Rx packet drop in N321? I have configured the same
          MTU on both ends of the connection. Interestingly, there is no
          Tx packet loss but Rx.</div>
      </div>
    
    Hmmm, so, just found this:<br clear="none">
    <br clear="none">
    <blockquote>
      <p>Beginning with kernel 2.6.37, it has been changed the meaning
        of dropped packet count. Before, dropped packets was most likely
        due to an error. Now, the rx_dropped counter shows statistics
        for dropped frames because of:</p>
      <ul><li>Softnet backlog full</li><li>Bad / Unintended VLAN tags</li><li>Unknown / Unregistered protocols</li><li>IPv6 frames when the server is not configured for IPv6</li></ul>
      <p>[...]</p>
      <p>If the rx_dropped counter stops incrementing while tcpdump is
        running; then it is more than likely showing drops because of
        the reasons listed earlier.</p>
      <p><br clear="none">
      </p>
      <p><br clear="none">
      </p>
      <p>IN other words, mostly harmless. At some point, the semantics
        of "dropped packets" changed, and I didn't even notice.</p><div class="ydp4cd0c25ayiv6248530318yqt3364300945" id="ydp4cd0c25ayiv6248530318yqtfd36587"><br clear="none">
      </div><div class="ydp4cd0c25ayiv6248530318yqt3364300945" id="ydp4cd0c25ayiv6248530318yqtfd18160">
      <p><br clear="none">
      </p>
      <p><br clear="none">
      </p>
    </div></blockquote><div class="ydp4cd0c25ayiv6248530318yqt3364300945" id="ydp4cd0c25ayiv6248530318yqtfd90433">
    <blockquote type="cite">
      <div class="ydp4cd0c25ayiv6248530318ydp49813887yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div><br clear="none">
        </div>
      </div>
      <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyahoo_quoted" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyahoo_quoted_1290698225">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 7 September 2021, 00:05:57 BST, Marcus D.
            Leech <a shape="rect" class="ydp4cd0c25ayiv6248530318moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com" rel="nofollow" target="_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          <div>
            <div id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621">
              <div>
                <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621moz-cite-prefix">On
                  2021-09-06 6:59 p.m., zhou wrote:<br clear="none">
                </div>
                <blockquote type="cite"> </blockquote>
              </div>
              <div>
                <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                  <div dir="ltr">Hi Marcus,</div>
                  <div dir="ltr"><br clear="none">
                  </div>
                  <div dir="ltr">Could you please help on this?</div>
                  <div dir="ltr">I find some confusing information on
                    MTU configuration in different ettus web pages:</div>
                  <div dir="ltr"><a shape="rect" href="https://files.ettus.com/manual/page_transport.html" rel="nofollow" target="_blank">https://files.ettus.com/manual/page_transport.html</a>&nbsp;:&nbsp;
                    MTU=8000 for 10GigE<br clear="none">
                  </div>
                  <div dir="ltr"><a shape="rect" href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel="nofollow" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>&nbsp;:
                    MTU=9000 for 10GigE<br clear="none">
                  </div>
                  <div><br clear="none">
                  </div>
                  <div dir="ltr">Which one is correct? :&nbsp;</div>
                  <div><br clear="none">
                  </div>
                  <div dir="ltr">Thanks.</div>
                </div>
                They're both valid, in that a larger MTU tends to
                improve bulk performance at high sample rates.<br clear="none">
                <br clear="none">
                The caveat is that BOTH SIDES of the connection have to
                "agree" on the MTU, and some host controllers<br clear="none">
                &nbsp; will happily accept a large MTU, but be unable to
                actually support it, although that situation is NOT one<br clear="none">
                &nbsp; that I have seen in 10GiGe controllers--they
                inherently want to support "jumbo frames".
                <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621yqt4485559050" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621yqtfd46881"><br clear="none">
                  <br clear="none">
                  <br clear="none">
                  <blockquote type="cite">
                    <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydp16591bb1yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                      <div><br clear="none">
                      </div>
                      <div><br clear="none">
                      </div>
                    </div>
                    <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yahoo_quoted_1193244036">
                      <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                        <div> On Monday, 6 September 2021, 22:33:35 BST,
                          zhou via USRP-users <a shape="rect" class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">&lt;usrp-users@lists.ettus.com&gt;</a>
                          wrote: </div>
                        <div><br clear="none">
                        </div>
                        <div><br clear="none">
                        </div>
                        <div>
                          <div id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124">
                            <div>
                              <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpb9dc4fa4yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                                <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd67245"> </div>
                                <div dir="ltr">
                                  <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd87247"> </div>
                                  <div>
                                    <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd61407">
                                      <div dir="ltr">Hi,&nbsp;</div>
                                    </div>
                                    <div dir="ltr"><br clear="none">
                                    </div>
                                    <div dir="ltr">I have a problem with
                                      the N321 USRP. I find packet
                                      dropped in USRP but not in host.
                                      In host, I am running Ubuntu
                                      18.04.</div>
                                    <div><br clear="none">
                                    </div>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>&nbsp;<u>Below
                                          is the ifconfig result in
                                          N321:</u></b></p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~#
                                      ifconfig</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eth0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Link encap:Ethernet&nbsp; HWaddr
                                      00:80:2F:32:36:BA</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet addr:192.168.10.165&nbsp;
                                      Bcast:192.168.255.255&nbsp;
                                      Mask:255.255.255.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      UP BROADCAST RUNNING MULTICAST&nbsp;
                                      MTU:<b>1500</b>&nbsp; Metric:1</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets:618374 errors:0 <b><span style="color:red;">dropped:11485</span></b><span style="color:red;"> </span>overruns:0
                                      frame:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets:193714 errors:0
                                      dropped:0 overruns:0 carrier:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      collisions:0 txqueuelen:1000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX bytes:39776733 (37.9 MiB)&nbsp; TX
                                      bytes:14546432 (13.8 MiB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Interrupt:27 Base address:0xb000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">int0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Link encap:Ethernet&nbsp; HWaddr
                                      AE:CD:BA:E1:CF:96</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet addr:169.254.0.1&nbsp;
                                      Bcast:169.254.0.255&nbsp;
                                      Mask:255.255.255.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      UP BROADCAST RUNNING MULTICAST&nbsp;
                                      MTU:9000&nbsp; Metric:1</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets:456 errors:0 dropped:0
                                      overruns:0 frame:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets:15 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      collisions:0 txqueuelen:1000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX bytes:37392 (36.5 KiB)&nbsp; TX
                                      bytes:2770 (2.7 KiB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Link encap:Local Loopback</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet addr:127.0.0.1&nbsp;
                                      Mask:255.0.0.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      UP LOOPBACK RUNNING&nbsp; MTU:65536&nbsp;
                                      Metric:1</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets:89 errors:0 dropped:0
                                      overruns:0 frame:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets:89 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      collisions:0 txqueuelen:1000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX bytes:7480 (7.3 KiB)&nbsp; TX
                                      bytes:7480 (7.3 KiB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp0</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Link encap:Ethernet&nbsp; HWaddr
                                      00:80:2F:32:36:BB</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet addr:192.168.12.2&nbsp;
                                      Bcast:192.168.12.255&nbsp;
                                      Mask:255.255.255.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      UP BROADCAST RUNNING MULTICAST&nbsp;
                                      MTU:<b>9000</b>&nbsp; Metric:1</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets:6239 errors:0 <b><span style="color:red;">dropped:804
                                        </span></b>overruns:0 frame:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets:5669 errors:0 dropped:0
                                      overruns:0 carrier:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      collisions:0 txqueuelen:1000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX bytes:18466697 (17.6 MiB)&nbsp; TX
                                      bytes:18417536 (17.5 MiB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>sfp1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Link encap:Ethernet&nbsp; HWaddr
                                      00:80:2F:32:36:BC</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet addr:192.168.13.2&nbsp;
                                      Bcast:192.168.13.255&nbsp;
                                      Mask:255.255.255.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      UP BROADCAST RUNNING MULTICAST&nbsp;
                                      MTU:<b>9000</b>&nbsp; Metric:1</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets:24868 errors:0 <b><span style="color:red;">dropped:796</span></b><span style="color:red;"> </span>overruns:0
                                      frame:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets:24613 errors:0
                                      dropped:0 overruns:0 carrier:0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      collisions:0 txqueuelen:1000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX bytes:20486915 (19.5 MiB)&nbsp; TX
                                      bytes:19611643 (18.7 MiB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><u><b>Below
                                          is ifconfig result in host:</b></u></p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">user@USRP-SERVER:~$
                                      ifconfig</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>eno1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>1500</b></p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet 192.168.10.143&nbsp; netmask
                                      255.255.255.0&nbsp; broadcast
                                      192.168.255.255</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet6 fe80::b27b:25ff:fe1d:9e4e&nbsp;
                                      prefixlen 64&nbsp; scopeid
                                      0x20&lt;link&gt;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ether
                                      b0:7b:25:1d:9e:4e&nbsp; txqueuelen
                                      1000&nbsp; (Ethernet)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets 5604&nbsp; bytes 416435
                                      (416.4 KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX errors 0&nbsp; dropped 0&nbsp; overruns
                                      0&nbsp; frame 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets 404&nbsp; bytes 68556 (68.5
                                      KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX errors 0&nbsp; dropped 0 overruns 0&nbsp;
                                      carrier 0&nbsp; collisions 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      device interrupt 16&nbsp; memory
                                      0xd2100000-d2120000</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f0</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b><span style="color:red;">9000</span></b></p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet 192.168.12.1&nbsp; netmask
                                      255.255.255.0&nbsp; broadcast
                                      192.168.12.255</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet6 fe80::faf2:1eff:fe42:dddc&nbsp;
                                      prefixlen 64&nbsp; scopeid
                                      0x20&lt;link&gt;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      ether f8:f2:1e:42:dd:dc&nbsp;
                                      txqueuelen 1000&nbsp; (Ethernet)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets 294&nbsp; bytes 35184 (35.1
                                      KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX errors 0&nbsp; dropped 0&nbsp; overruns
                                      0&nbsp; frame 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets 395&nbsp; bytes 37148 (37.1
                                      KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX errors 0&nbsp; dropped 0 overruns 0&nbsp;
                                      carrier 0&nbsp; collisions 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal"><b>enp1s0f1</b>:
flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu <b>9000</b></p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet 192.168.13.1&nbsp; netmask
                                      255.255.255.0&nbsp; broadcast
                                      192.168.13.255</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;
                                      &nbsp;&nbsp;&nbsp;&nbsp;inet6
                                      fe80::faf2:1eff:fe42:dddd&nbsp;
                                      prefixlen 64&nbsp; scopeid
                                      0x20&lt;link&gt;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      ether f8:f2:1e:42:dd:dd&nbsp;
                                      txqueuelen 1000&nbsp; (Ethernet)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets 9&nbsp; bytes 2228 (2.2 KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX errors 0&nbsp; dropped 0&nbsp; overruns
                                      0&nbsp; frame 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets 72&nbsp; bytes 7983 (7.9 KB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX errors 0&nbsp; dropped 0 overruns 0&nbsp;
                                      carrier 0&nbsp; collisions 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">lo:
flags=73&lt;UP,LOOPBACK,RUNNING&gt;&nbsp; mtu 65536</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet 127.0.0.1&nbsp; netmask 255.0.0.0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      inet6 ::1&nbsp; prefixlen 128&nbsp; scopeid
                                      0x10&lt;host&gt;</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      loop&nbsp; txqueuelen 1000&nbsp; (Local
                                      Loopback)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX packets 21071&nbsp; bytes 1497110
                                      (1.4 MB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      RX errors 0&nbsp; dropped 0&nbsp; overruns
                                      0&nbsp; frame 0</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX packets 21071&nbsp; bytes 1497110
                                      (1.4 MB)</p>
                                    <p class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124ydpc002c510MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      TX errors 0&nbsp; dropped 0 overruns 0&nbsp;
                                      carrier 0&nbsp; collisions 0</p>
                                    <div>&nbsp;</div>
                                    <div>Could you please let me know
                                      what is the possible reason for
                                      packet drop in USRP? How to fix
                                      it?</div>
                                  </div>
                                  <div><br clear="none">
                                  </div>
                                  <div dir="ltr">Thanks for any inputs.</div>
                                  <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqt2927466630" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yiv8219365124yqtfd49064">
                                    <div dir="ltr"><br clear="none">
                                    </div>
                                    <div dir="ltr"><br clear="none">
                                    </div>
                                    <br clear="none">
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yqt2927466630" id="ydp4cd0c25ayiv6248530318ydpa0c1475fyiv5669889621ydpba31248yqtfd65263">_______________________________________________<br clear="none">
                            USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">
                            To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none">
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear="none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear="none">
  </div></div></div><div class="ydp4cd0c25ayqt3364300945" id="ydp4cd0c25ayqtfd40783">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_1984946_156119771.1631044779647--

--===============8467559055016228696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8467559055016228696==--
