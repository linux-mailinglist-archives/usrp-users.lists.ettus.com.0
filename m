Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2C379CEE9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 12:53:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4196B3850FB
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 06:53:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694515997; bh=+BE7Mm8Jit4YylqrSiV80Ue8hTGPu18/vrJHbKBDx7c=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=iUkPEbSEMCM+vd6JBDR6oet2p2r02Zjf0emDugZUMzKtsw0eJvOE+aQkCPy0sEbXH
	 kMrWlEa/hBnHyO9EnYU4Z/ampKzyf8qh7+JAVX3C/f9mW58VU7VYnw2n5GvO/2cQw6
	 3/fiYOfseMyDQ048URm9lnNRXhHJM/tuXU1AkYpgRJ1FA4ohg/zuGVL4kYSIKKoM2S
	 r3gJpCWHUG8UYIlF9oO7tFRxxXFybpIYv4kUdJjyHzjk0IGxs/q5zrbZx7C632a4kv
	 M9ujZijfG9vkbzXT/HHLBiCFnQ25RhgsQgwrnA27H/0cxenb1vZA1v09RjGOvNobZL
	 GIotmPbxaZHMw==
Received: from sonic320-25.consmr.mail.bf2.yahoo.com (sonic320-25.consmr.mail.bf2.yahoo.com [74.6.128.206])
	by mm2.emwd.com (Postfix) with ESMTPS id B7052384C23
	for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 06:52:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="kz9QN90C";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694515930; bh=U1PkKA3q4mUBujbkPP5WpQphdyxWg1Gud93qcvyiiBI=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=kz9QN90CG40sdxRq0j+XMFaZ6PnObmZnuGpvPa8Q0xTngRiiyElADEOESFsMymdW9d5Oe5bg6tLt9mGi3HoNVOIdpAb0nyrSUJstsBYr0RAiH96ITuYSOrwxIEkfn/ZsjUit8Urko7+qJZfH6kBafs3myvu1pEql0rCZ5Nl+iolN6YZNRnMLh/OYBCprkF+azcNpiu2tTrFFpVYlFayFsKFB3EgNWc7yHqtVasDeqUmGv0HBwrj9kXgtxkOUgueBCNFzYtQcGes40Uv1xw/5BhIKGZqYi8S0TB1k2jm9MrAM0z+cj2aRk6jHDeO6FoGSUBUhbYYnIKeB481zwUwRIQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694515930; bh=NWfgOFN/D81Ef4aRznVwOPDrubWTmhLGtVPJdiZPqq0=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Ocqsbg92tJJEyAH1Dbgc7VLaGQkyd3wGKRen2a5S6Dp5mzDMmNNK9HJBgJJj040CZXnBaggUq55lTANDdUTSj5kr9cG3CXvG64hHFS6hQREKKGeKaVMubpcH/SITsmKQuvZZ5GU7DeFcu7VY9GBE3gKBgP/+wocq4BYNbc21aL6+aOxPSaLpTKNBA7DmHEQWRsuQo7sLfgNcmNQtCRVO68DEpNs1tzqV3TQcJKOr0q0hzSo5XrrFhdsByNMeTeV01AA2aM3oMGXcNXM1QUGaUPGuOsfYUMFPjtM2TdLRmjU5KOtH2y2XnAh57q2urgo2T5f5dqx6n0rV37Qff8GCJg==
X-YMail-OSG: ToUmnFQVM1nuKTzH4PO6Ev59yIpkmyMxvHJLTwf58w2Cp07kQg4Rgy4oTKza_6G
 C8CLBnrqRFKYRNGRPxkdp4fqRhpnjMTRrgam5YUS3qyjc3CqvalBLLjHCmdUGzujbSSGZK6TJf0b
 GdzvyThLaJsPElUgZF2PIaJVVrkuFdL2sEjYATh.3AAO1SNV_MylI0L5Ls_LhD4ATMxwUvUTpHkY
 UBpbRsJrsgk892FaZReav6veWBqmrT952Fz5lWAzmx0fD83EelusP6tJjEr30vU6Amn7yCqvjPGA
 mf9TvQborDl4qcG7ZA1tqFOg_hjHSINNKSGyFT8emJTypC1n9DwtO.KQUrguh6uC77cUuNswpGjG
 EEOXAZ_Dv32qDVu3G1X6FiaqXTnYIjNBIFfX9MwB.nQU7u.ibaQ3DqFdTfMGuOgsFCuQrQ280bTj
 h9_XvLbcOfue.Z7_CYDgndPv06zsdY0Yf2nPDd5b_HjOqvA96CCFgRZ.jvzkz8efOumBxC_o9KAx
 PSEX9db4AAAXsztaLFsuFmgYwZMPQKSgbajWWhQlW4PiWM0_Qua8Q9QFKwzLku3AXNDy_mdypUGA
 I16Iqf__jU4laDuZd3gmoE.fdYWX7CKGr8G8FzXPiNs4G_C_zKlCeLIsLYMErVdMgnd2M3m8hUa1
 ZFEeKR3GBOFzkp0RQ7OtYcQ8r4q6WvnALTyoNbxWuxkIev_pPhLcmqHSBvZHIiiVpVHOcQmebIjP
 O4vn.CKKwODHAd7peYsJH.87x0UJ3LoJfcQvbngbhlfy3u2qD02Jre5papAOlwOB4zxjZPc4eEcd
 fO_obW4L1uzCyHqnuLO0WwG.WfZcZUB9pODxQJpUyWl4bxa0O0bhafAfh7thkl.KE_4Sn9gC9G6Z
 dfVgSMGALb0iLbIkTUsYfsrdXGhUxMsbwJt1nnwysdzGyb72McKQ9dXe1AbnvhibO4ZQZMKMI80k
 JDk2uXJ2gooEq56ymA8NwpodETFxWPiPUgJpSRWwa4DQKOhl33G7PqgDksJs7uIRBv4bP5G7Y9Pr
 BIGb6IX0Zb.MY1R8chctTIyRWuf.suY2dTTc2sdJTzvlemxlkOLbT4EkgBqrvUVHf4fWxKnjKHiK
 bLbRrZPNBG4TWjDe8xdEoo5Hb9u9JPB1EMalkARLa8N4eom33k1t3EFpFJZe.yBawts_jP4j_EVx
 S_AiujYlvRLzZvrEhQlkxGyCnHeY6sTSfQFqJ.WvGRrRNwWdHw0iSoO3B3dnUxu0pWpPdQYBh7jw
 HwQ8xSVHoxDb0SM_DXfBYRh5f9CuKHzZljhJd4SgMF7VdTTaWdzLtMZ3Az_xX20M3o7ds9ruJR7U
 tOg0NQ_0lZySU4qXorYK2uMw4AROdLDlenfiLCQkTeoEzHITws0BzaJYnMEUw4ZCQnLQZCGopW5g
 Op1cDmB38ECrujlpnbmIlU1K5ZDkmWZsEBC67U3PmUnqHqQbo5ha.Mln.5u9A7BGdsjcO8vlQtEt
 h1VxwLnwWdHCrXbqhU5TtQDY5yPvQhqGmrDuUlxZ0UsCHXxsVSV2YkL4T5jb6YRHE0Bzl9LbhcwQ
 kMtk5YlbLhGL2FIjVF1wyb0I6G1cZG26lRXHskI6.LHuzrC8Gg5TSG_mg7iFHS2M4z0nYJLCSzGO
 EljERjZaEDBOKLCEGj4mNnr__pdi67kNeL8px9C5B6mMuD94VBq0lOpmUP53jM2gCgz7lNRFKm9D
 KdZ5PZfw9GlJ8Bp3ujoWT4w4FJ8lDXys3W070YxmcSv1QsyEACpvEbvYvI3uBH9cuCY6T.c3GiQv
 hAqCNTYRNxMVgay6N6Zt6bGnI3g.uKSxVq4hHLF.dbz4YYgspMWPe7p6C_M0vk.PR_wZwtW0TX_O
 NiwdsuzwzzDjyJYiyKzb7EqtCpVaoA.I1xl5MO2txCohnR8I_kDYof4r3d7xpUN6opBZ1wWPg3cA
 ZNfon32KQe0xgG_6XEYCDWIFgkZVxtc0ypRqjPlnEVAX9wfrdl03XHZRpUNTk6PUZN.DZqQxXnFT
 UaOoFLqNwBLEDM40emJbDZ1cetnIL9OONWE4iVEOSzNttYoCu3Iv5T4T8O7CiKhplNrorGOCOs9b
 RoDiATRlmDCXYs70wCby6vkRAM45hjJ.gV7ts1mbxOMTz82F3hlZEbPipOsshFr0jFl76lO0yIkg
 Za9sF..xHpp.w_rEOvPL3qUQGfa2qEEnpcMRTemgNvjhzzLy7w4TCiGH.HzucVIT_gPGg1gbfQ3R
 v4Gz3jQiz2PfEDId_52Hw9ppIyxuxJa0o71g-
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: d5edd25f-8a4c-4b04-9a70-d53a383d0981
Received: from sonic.gate.mail.ne1.yahoo.com by sonic320.consmr.mail.bf2.yahoo.com with HTTP; Tue, 12 Sep 2023 10:52:10 +0000
Date: Tue, 12 Sep 2023 10:52:08 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1518816302.133078.1694515928407@mail.yahoo.com>
In-Reply-To: <5ebf23cd-1428-958b-ea65-21e318401568@gmail.com>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de> <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com> <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de> <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com> <1218602222.4259780.1694448579632@mail.yahoo.com> <5ebf23cd-1428-958b-ea65-21e318401568@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21797 YMailNorrin
Message-ID-Hash: 5DX423FOVR5EFTAJS5277TZ2H4SPLSDJ
X-Message-ID-Hash: 5DX423FOVR5EFTAJS5277TZ2H4SPLSDJ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Benchmark test failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DX423FOVR5EFTAJS5277TZ2H4SPLSDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5291548268044648524=="

--===============5291548268044648524==
Content-Type: multipart/alternative;
	boundary="----=_Part_133077_1382195761.1694515928404"

------=_Part_133077_1382195761.1694515928404
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Thanks for your reply.The original ring buffer is 1024 for Tx and Rx. Now I=
 have changed them to 4096. Still see overruns and underruns.Ring parameter=
s for enp59s0f0np0:Pre-set maximums:RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A08192RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/aRX Jumbo:=C2=A0 =C2=
=A0 =C2=A0 =C2=A0n/aTX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08192=
Current hardware settings:RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A04096RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/aRX Jumbo:=C2=A0 =C2=A0 =C2=A0=
 =C2=A0n/aTX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096

Ring parameters for enp59s0f1np1:Pre-set maximums:RX:=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A08192RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/aRX Ju=
mbo:=C2=A0 =C2=A0 =C2=A0 =C2=A0n/aTX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A08192Current hardware settings:RX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A04096RX Mini:=C2=A0 =C2=A0 =C2=A0 =C2=A0 n/aRX Jumbo:=C2=A0=
 =C2=A0 =C2=A0 =C2=A0n/aTX:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
4096

Benchmark rate summary:=C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A01261=
7833512=C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 17321163392=C2=A0 Nu=
m overruns detected:=C2=A0 =C2=A0 112=C2=A0 Num transmitted samples:=C2=A0 =
9159225280=C2=A0 Num sequence errors (Tx): 0=C2=A0 Num sequence errors (Rx)=
: 0=C2=A0 Num underruns detected:=C2=A0 =C2=A0856834=C2=A0 Num late command=
s:=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0=C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0
I think my computer is not fast enough for 500MHz sampling rate. The comput=
er I am using is Dell PowerEdge R740, CPU is=C2=A0Intel(R) Xeon(R) Bronze 3=
106 CPU @ 1.70GHz
What is the recommended computer HW configuration?
Another question is UHD4.5. I tried UHD4.5, but there was MPM issueThe MPM =
software on your device is older than the FPGA you're trying to
use. Because you're using master, they haven't published updated
filesystems with the new MPM yet, but there will be a release candidate
very soon for UHD 4.5 you could try.
So, I have to use UHD4.4 now.
Kind regards,Hongwei




    On Monday, 11 September 2023 at 22:15:21 BST, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 11/09/2023 12:09, zhou via USRP-users wrote:
 =20
=20
 Hi all,=20
  I just set up a system with X410=C2=A0USRP. Tried to run a benchmark rate=
 test and saw a lot of errors. Please suggest what could be the reason for =
the test failure. =C2=A0 Host is R740 (16 CPU cores) and Linux is Ubuntu 22=
.04 with low-latency kernel. 100G Mellanox ConnectX-6 NIC cards=20
 =20
 =20
    $ sudo /usr/local/lib/uhd/examples/benchmark_rate=C2=A0 \ --args"type=
=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=3D50=
0e6" \ --priority "high" \ --multi_streamer \ --duration 60 \ --channels "0=
" \ --rx_rate 10e6 \ --rx_subdev "A:0" \ --tx_rate 10e6 \ --tx_subdev "A:0"=
 [sudo] password for user:=20
  [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD=
_4.4.0.HEAD-0-g5fac246b [00:00:00.000566] Creating the usrp device with:typ=
e=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=3D5=
00e6... [INFO] [MPMD] Initializing 1 device(s) in parallel with args:mgmt_a=
ddr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,name=3Dni-x4=
xx-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,master_clock_r=
ate=3D500e6 [WARNING] [MPM.RPCServer] A timeout event occured! [INFO] [MPM.=
PeriphManager] init() called with device args`fpga=3DCG_400,master_clock_ra=
te=3D500e6,mgmt_addr=3D192.168.88.2,name=3Dni-x4xx-3289B23,product=3Dx410,c=
lock_source=3Dinternal,time_source=3Dinternal'. Using Device: Single USRP: =
=C2=A0 Device: X400-Series Device =C2=A0 Mboard 0: x410 =C2=A0 RX Channel: =
0 =C2=A0 =C2=A0 RX DSP: n/a =C2=A0 =C2=A0 RX Dboard: A =C2=A0 =C2=A0 RX Sub=
dev: 0 =C2=A0 TX Channel: 0 =C2=A0 =C2=A0 TX DSP: n/a =C2=A0 =C2=A0 TX Dboa=
rd: A =C2=A0 =C2=A0 TX Subdev: 0=20
  [00:00:05.797505591] Setting device timestamp to 0... [WARNING] [0/Radio#=
0] Requesting invalid sampling rate from device: 10 MHz. Actual rate is: 50=
0 MHz. [WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual r=
ate is 500.000 MHz [WARNING] [0/Radio#0] Requesting invalid sampling rate f=
rom device: 10 MHz. Actual rate is: 500 MHz. [WARNING] [MULTI_USRP] Could n=
ot set TX rate to 10.000 MHz. Actual rate is 500.000 MHz Setting TX spb to =
1984 [00:00:05.799789467] Testing receive rate 500.000000 Msps on 1 channel=
s [00:00:05.801875415] Testing transmit rate 500.000000 Msps on 1 channels =
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUD[U00:00:06.33502762] Detected Rx sequence error. =
UU[D00:00:06.33952517] Detected Rx sequence error. UUUU[D00:00:06.34387503]=
 Detected Rx sequence error. U[D00:00:06.34802030] Detected Rx sequence err=
or. UUUUU[D00:00:06.35212894] Detected Rx sequence error. U[D00:00:06.35640=
910] Detected Rx sequence error.=20
  =20
    Benchmark rate summary: =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=
=A00 =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 0 =C2=A0 Num overruns =
detected:=C2=A0 =C2=A0 596 =C2=A0 Num transmitted samples:=C2=A0 1004650182=
4 =C2=A0 Num sequence errors (Tx): 0 =C2=A0 Num sequence errors (Rx): 0 =C2=
=A0 Num underruns detected:=C2=A0 =C2=A0819855 =C2=A0 Num late commands:=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 Num timeouts (Tx):=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0 =C2=A0 Num timeouts (Rx):=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=20
  Done!
 =20
  =20
 =20
  $ ifconfig   enp59s0f0np0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=
=C2=A0 mtu 9000 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.20.1=C2=A0 netmask=
 255.255.255.0=C2=A0 broadcast 192.168.20.255 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
net6 fe80::ba3f:d2ff:fe57:b77a=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link> =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7a=C2=A0 txqueuelen 1000=
=C2=A0 (Ethernet) =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 15144837=C2=A0 byt=
es 101888797100 (101.8 GB) =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dr=
opped 2423=C2=A0 overruns 0=C2=A0 frame 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX pa=
ckets 12311297=C2=A0 bytes 87947193629 (87.9 GB) =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 TX errors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions=
 0=20
  enp59s0f1np1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1=C2=A0 netmask 255.255.255.0=
=C2=A0 broadcast 192.168.10.255 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::ba3=
f:d2ff:fe57:b77b=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link> =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ether b8:3f:d2:57:b7:7b=C2=A0 txqueuelen 1000=C2=A0 (Ethernet=
) =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 406107=C2=A0 bytes 2296309836 (2.2=
 GB) =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0=C2=A0 dropped 0=C2=A0 overruns=
 0=C2=A0 frame 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 502690=C2=A0 bytes =
3421432091 (3.4 GB) =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0=C2=A0 dropped 0=
 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0=20
   Kind regards, Hongwei=20
  =20
 =20
  =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 The fact that the actual IP interface is seeing dropped frames indicates t=
hat likely the ringbuf pool on that NIC is too small.
=20
 Check out the support that ethtool has for this:
=20
https://www.24x7serversupport.com/blog/how-to-tuneup-tx-and-rx-buffers-on-n=
etwork-interface/
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_133077_1382195761.1694515928404
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe08cd28dyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Thanks for your reply.</div><div dir=3D"ltr" data-setdir=3D"false">The ori=
ginal ring buffer is 1024 for Tx and Rx. Now I have changed them to 4096. S=
till see overruns and underruns.</div><div dir=3D"ltr" data-setdir=3D"false=
"><div><div>Ring parameters for enp59s0f0np0:</div><div>Pre-set maximums:</=
div><div>RX:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8192</div><div>=
RX Mini:&nbsp; &nbsp; &nbsp; &nbsp; n/a</div><div>RX Jumbo:&nbsp; &nbsp; &n=
bsp; &nbsp;n/a</div><div>TX:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;8192</div><div>Current hardware settings:</div><div>RX:&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;4096</div><div>RX Mini:&nbsp; &nbsp; &nbsp; &n=
bsp; n/a</div><div>RX Jumbo:&nbsp; &nbsp; &nbsp; &nbsp;n/a</div><div>TX:&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4096</div></div><br></div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><div><div>Ring parameters for enp59s0f1np1:</div><div>Pre-set ma=
ximums:</div><div>RX:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8192</=
div><div>RX Mini:&nbsp; &nbsp; &nbsp; &nbsp; n/a</div><div>RX Jumbo:&nbsp; =
&nbsp; &nbsp; &nbsp;n/a</div><div>TX:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;8192</div><div>Current hardware settings:</div><div>RX:&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4096</div><div>RX Mini:&nbsp; &nbsp; =
&nbsp; &nbsp; n/a</div><div>RX Jumbo:&nbsp; &nbsp; &nbsp; &nbsp;n/a</div><d=
iv>TX:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4096</div></div><br><=
/div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data=
-setdir=3D"false"><div><div>Benchmark rate summary:</div><div>&nbsp; Num re=
ceived samples:&nbsp; &nbsp; &nbsp;12617833512</div><div>&nbsp; Num dropped=
 samples:&nbsp; &nbsp; &nbsp; 17321163392</div><div>&nbsp; Num overruns det=
ected:&nbsp; &nbsp; 112</div><div>&nbsp; Num transmitted samples:&nbsp; 915=
9225280</div><div>&nbsp; Num sequence errors (Tx): 0</div><div>&nbsp; Num s=
equence errors (Rx): 0</div><div>&nbsp; Num underruns detected:&nbsp; &nbsp=
;856834</div><div>&nbsp; Num late commands:&nbsp; &nbsp; &nbsp; &nbsp; 0</d=
iv><div>&nbsp; Num timeouts (Tx):&nbsp; &nbsp; &nbsp; &nbsp; 0</div><div>&n=
bsp; Num timeouts (Rx):&nbsp; &nbsp; &nbsp; &nbsp; 0</div><div><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false">I think my computer is not fast enough=
 for 500MHz sampling rate. The computer I am using is Dell PowerEdge R740, =
CPU is&nbsp;<span style=3D"font-family: Calibri, sans-serif; font-size: 11p=
t;">Intel(R) Xeon(R) Bronze 3106 CPU @ 1.70GHz</span><span><br></span></div=
><div dir=3D"ltr" data-setdir=3D"false">What is the recommended computer HW=
 configuration?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false">Another question is UHD4.5. I tried UHD4.=
5, but there was MPM issue</div></div><div dir=3D"ltr" data-setdir=3D"false=
"><div><span style=3D"color: rgb(36, 36, 36); font-family: Cascadia Mono, C=
onsolas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px;">The MPM =
software on your device is older than the FPGA you're trying to</span><br s=
tyle=3D"color: rgb(36, 36, 36); font-family: Cascadia Mono, Consolas, ui-mo=
nospace, Menlo, Monaco, monospace; font-size: 14px;"><span style=3D"color: =
rgb(36, 36, 36); font-family: Cascadia Mono, Consolas, ui-monospace, Menlo,=
 Monaco, monospace; font-size: 14px;">use. Because you're using master, the=
y haven't published updated</span><br style=3D"color: rgb(36, 36, 36); font=
-family: Cascadia Mono, Consolas, ui-monospace, Menlo, Monaco, monospace; f=
ont-size: 14px;"><span style=3D"color: rgb(36, 36, 36); font-family: Cascad=
ia Mono, Consolas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px;=
">filesystems with the new MPM yet, but there will be a release candidate</=
span><br style=3D"color: rgb(36, 36, 36); font-family: Cascadia Mono, Conso=
las, ui-monospace, Menlo, Monaco, monospace; font-size: 14px;"><span style=
=3D"color: rgb(36, 36, 36); font-family: Cascadia Mono, Consolas, ui-monosp=
ace, Menlo, Monaco, monospace; font-size: 14px;">very soon for UHD 4.5 you =
could try.</span></div><br></div>So, I have to use UHD4.4 now.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">Kind regards,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</di=
v><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-se=
tdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><=
div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp51326884yahoo_quoted_5466677158" class=3D"ydp51=
326884yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 11 September 2023 at 22:15:21 BST, Marcus D.=
 Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp51326884yiv8403730136"><div id=3D"ydp513=
26884yiv8403730136yqt95490" class=3D"ydp51326884yiv8403730136yqt1822100583"=
><div>
    <div class=3D"ydp51326884yiv8403730136moz-cite-prefix">On 11/09/2023 12=
:09, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp51326884yiv840373013=
6ydpecce4a95yahoo-style-wrap">
        <div dir=3D"ltr">Hi all,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I just set up a system with
          X410&nbsp;<span><span style=3D"color:rgb(0, 0, 0);font-family:Hel=
vetica Neue, Helvetica, Arial, sans-serif;">USRP. Tried
              to run a benchmark rate test and saw a lot of errors.
              Please suggest what could be the reason for the test
              failure.</span></span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp;</span></span></div>
        <div dir=3D"ltr">Host is R740 (16 CPU cores)
          and Linux is Ubuntu 22.04 with low-latency kernel.</div>
        <div dir=3D"ltr">100G Mellanox ConnectX-6 NIC
          cards</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div>
            <div>$ sudo /usr/local/lib/uhd/examples/benchmark_rate&nbsp; \<=
/div>
            <div>--args
"type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=
=3D500e6"
              \</div>
            <div>--priority "high" \</div>
            <div>--multi_streamer \</div>
            <div>--duration 60 \</div>
            <div>--channels "0" \</div>
            <div>--rx_rate 10e6 \</div>
            <div>--rx_subdev "A:0" \</div>
            <div>--tx_rate 10e6 \</div>
            <div>--tx_subdev "A:0"</div>
            <div>[sudo] password for user:</div>
            <div><br clear=3D"none">
            </div>
            <div>[INFO] [UHD] linux; GNU C++ version 11.4.0;
              Boost_107400; DPDK_21.11; UHD_4.4.0.HEAD-0-g5fac246b</div>
            <div>[00:00:00.000566] Creating the usrp device with:
type=3Dx4xx,mgmt_addr=3D192.168.88.2,addr=3D192.168.20.2,master_clock_rate=
=3D500e6...</div>
            <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D192.168.88.2,type=3Dx4xx,product=3Dx410,serial=3D3289B23,name=
=3Dni-x4xx-3289B23,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.20.2,master=
_clock_rate=3D500e6</div>
            <div>[WARNING] [MPM.RPCServer] A timeout event occured!</div>
            <div>[INFO] [MPM.PeriphManager] init() called with device
              args
`fpga=3DCG_400,master_clock_rate=3D500e6,mgmt_addr=3D192.168.88.2,name=3Dni=
-x4xx-3289B23,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal=
'.</div>
            <div>Using Device: Single USRP:</div>
            <div>&nbsp; Device: X400-Series Device</div>
            <div>&nbsp; Mboard 0: x410</div>
            <div>&nbsp; RX Channel: 0</div>
            <div>&nbsp; &nbsp; RX DSP: n/a</div>
            <div>&nbsp; &nbsp; RX Dboard: A</div>
            <div>&nbsp; &nbsp; RX Subdev: 0</div>
            <div>&nbsp; TX Channel: 0</div>
            <div>&nbsp; &nbsp; TX DSP: n/a</div>
            <div>&nbsp; &nbsp; TX Dboard: A</div>
            <div>&nbsp; &nbsp; TX Subdev: 0</div>
            <div><br clear=3D"none">
            </div>
            <div>[00:00:05.797505591] Setting device timestamp to 0...</div=
>
            <div>[WARNING] [0/Radio#0] Requesting invalid sampling rate
              from device: 10 MHz. Actual rate is: 500 MHz.</div>
            <div>[WARNING] [MULTI_USRP] Could not set RX rate to 10.000
              MHz. Actual rate is 500.000 MHz</div>
            <div>[WARNING] [0/Radio#0] Requesting invalid sampling rate
              from device: 10 MHz. Actual rate is: 500 MHz.</div>
            <div>[WARNING] [MULTI_USRP] Could not set TX rate to 10.000
              MHz. Actual rate is 500.000 MHz</div>
            <div>Setting TX spb to 1984</div>
            <div>[00:00:05.799789467] Testing receive rate 500.000000
              Msps on 1 channels</div>
            <div>[00:00:05.801875415] Testing transmit rate 500.000000
              Msps on 1 channels</div>
            <div>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUD[U00:00:06.33502762]
              Detected Rx sequence error.</div>
            <div>UU[D00:00:06.33952517] Detected Rx sequence error.</div>
            <div>UUUU[D00:00:06.34387503] Detected Rx sequence error.</div>
            <div>U[D00:00:06.34802030] Detected Rx sequence error.</div>
            <div>UUUUU[D00:00:06.35212894] Detected Rx sequence error.</div=
>
            <div>U[D00:00:06.35640910] Detected Rx sequence error.</div>
            <div><br clear=3D"none">
            </div>
          </div>
          <br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div>
            <div>Benchmark rate summary:</div>
            <div>&nbsp; Num received samples:&nbsp; &nbsp; &nbsp;0</div>
            <div>&nbsp; Num dropped samples:&nbsp; &nbsp; &nbsp; 0</div>
            <div>&nbsp; <b><font style=3D"background-color:rgb(0, 0, 0);" c=
olor=3D"#fdf869">Num overruns detected:&nbsp; &nbsp; 596</font></b></div>
            <div>&nbsp; Num transmitted samples:&nbsp; 10046501824</div>
            <div>&nbsp; Num sequence errors (Tx): 0</div>
            <div>&nbsp; Num sequence errors (Rx): 0</div>
            <div>&nbsp;<b style=3D"background-color:rgb(0, 0, 0);"><font co=
lor=3D"#fdf869"> Num underruns detected:&nbsp; &nbsp;819855</font></b></div=
>
            <div>&nbsp; Num late commands:&nbsp; &nbsp; &nbsp; &nbsp; 0</di=
v>
            <div>&nbsp; Num timeouts (Tx):&nbsp; &nbsp; &nbsp; &nbsp; 0</di=
v>
            <div>&nbsp; Num timeouts (Rx):&nbsp; &nbsp; &nbsp; &nbsp; 0</di=
v>
            <div><br clear=3D"none">
            </div>
            <div>Done!<br clear=3D"none">
            </div>
            <div><br clear=3D"none">
            </div>
          </div>
          <br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">$ ifconfig</div>
        <div dir=3D"ltr">
          <div>
            <div>enp59s0f0np0:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu =
9000</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.20.1&nbsp; netmas=
k 255.255.255.0&nbsp;
              broadcast 192.168.20.255</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::ba3f:d2ff:fe57:b77=
a&nbsp; prefixlen 64&nbsp;
              scopeid 0x20&lt;link&gt;</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; ether b8:3f:d2:57:b7:7a&nbsp; =
txqueuelen 1000&nbsp;
              (Ethernet)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 15144837&nbsp; byte=
s 101888797100 (101.8
              GB)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; <b><i><font style=3D"backgroun=
d-color:rgb(0, 0, 0);" color=3D"#fdf869">RX errors 0&nbsp; dropped 2423&nbs=
p; overruns
                    0&nbsp; frame 0</font></i></b></div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 12311297&nbsp; byte=
s 87947193629 (87.9
              GB)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0&nbsp; dropped 0 ov=
erruns 0&nbsp; carrier 0&nbsp;
              collisions 0</div>
            <div><br clear=3D"none">
            </div>
            <div>enp59s0f1np1:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu =
9000</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10.1&nbsp; netmas=
k 255.255.255.0&nbsp;
              broadcast 192.168.10.255</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::ba3f:d2ff:fe57:b77=
b&nbsp; prefixlen 64&nbsp;
              scopeid 0x20&lt;link&gt;</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; ether b8:3f:d2:57:b7:7b&nbsp; =
txqueuelen 1000&nbsp;
              (Ethernet)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 406107&nbsp; bytes =
2296309836 (2.2 GB)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0&nbsp; dropped 0&nb=
sp; overruns 0&nbsp; frame 0</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 502690&nbsp; bytes =
3421432091 (3.4 GB)</div>
            <div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0&nbsp; dropped 0 ov=
erruns 0&nbsp; carrier 0&nbsp;
              collisions 0</div>
            <div><br clear=3D"none">
            </div>
          </div>
          <div dir=3D"ltr">Kind regards,</div>
          <div dir=3D"ltr">Hongwei</div>
          <div dir=3D"ltr"><br clear=3D"none">
          </div>
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
      <br clear=3D"none">
      <fieldset class=3D"ydp51326884yiv8403730136moz-mime-attachment-header=
"></fieldset>
      <pre class=3D"ydp51326884yiv8403730136moz-quote-pre">________________=
_______________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydp51326884yiv8403730136moz-txt-link-abbreviated" rel=
=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydp51326884yiv8403730136moz-txt-link-abbre=
viated" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a>
</pre>
   =20
    The fact that the actual IP interface is seeing dropped frames
    indicates that likely the ringbuf pool on that NIC is too small.<br cle=
ar=3D"none">
    <br clear=3D"none">
    Check out the support that ethtool has for this:<br clear=3D"none">
    <br clear=3D"none">
<a shape=3D"rect" href=3D"https://www.24x7serversupport.com/blog/how-to-tun=
eup-tx-and-rx-buffers-on-network-interface/" class=3D"ydp51326884yiv8403730=
136moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blank">https://www.24=
x7serversupport.com/blog/how-to-tuneup-tx-and-rx-buffers-on-network-interfa=
ce/</a><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp51326884yqt1822100583" id=3D"ydp513268=
84yqt59428">_______________________________________________<br clear=3D"non=
e">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@l=
ists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" =
href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D=
"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div=
>
            </div>
        </div></body></html>
------=_Part_133077_1382195761.1694515928404--

--===============5291548268044648524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5291548268044648524==--
