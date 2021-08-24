Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD62B3F60EB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 16:48:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7ACA63843B7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 10:48:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Lboq4HAq";
	dkim-atps=neutral
Received: from sonic302-2.consmr.mail.bf2.yahoo.com (sonic302-2.consmr.mail.bf2.yahoo.com [74.6.135.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 30579384204
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 10:47:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629816460; bh=Ob4sE6EhJcDNWfDMWmRdRx57W7HEH3dr8aGLHQDJDo8=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=Lboq4HAq15CofisylvwEqBpW+DNuHxy/SPs+hReFhiQ7KkazB7VWZnwiBrMW8J+UylLrgN+Xi64F4OBFC/9q0P49dOMhwyagYn+5funW7Tsq7PVY1t1q7VPNiV41eRyy60G1EzHtKLv/Gy6vBmZDeu9yQ25MNrLLjyMhU8Hp+IIkXPkO+v+CJeL9+rJmDUF82pYnJGwXXdiewAPnv/jXYRv1ufvsiV172ZPOhnkVq938uzlApVcN7sBt9gdCTnO9Iuuc8xUXPYbmHYSxPI3q36c3aDA5tgUW+vkIv5thZvAHE50Ibd4izbpqLd9gqmdJ+9qoKLauUvAjW9hyeT+/vw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629816460; bh=BtOgGNS9pkXr3X0MOT80SW3PL5SPqjDpz2LWUHhtaN0=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=XLXceh2Mq7lITD1c1kVxpQqmAVNmECIJ+OjPAxKUQVbPlZncww7yGn4VWEs+B7YrICm48ZIL6lgDukH35X4Kdzqi3BH7GYokA740hEMlqtZ1KTOmOyWHbHctBgQx//58PFZ3d1amZpV+yZUXUGgJDYazvrVy62AAMIO8o7pcOOwEC5u+qMN1Hagv3QjNCjezaNkd8tr61soM1PHb40Ozijh1XXiTbSj47A7M6p6jyVf/TQpqXJd2hlG1Bsk2lOfFBbM7jo2CSZeOUJVDa2gymRq2Mpm5v4DCu3cOwMw/mEGwgGQCHKlxcwKGL3aUDIctSYRL4Zuurp1MvHPBca9lig==
X-YMail-OSG: JVpjFFIVM1np5e9Sct4K2XyJhG7PPKh4a8R77yu_eUIAqDTWZWtN5EWuExY2Gkd
 DlKLygEd533yLSygJPAvKOuFssIBJ4sJDSTIfnujeInPNJmCl3yRKy3MwaB2E28uTB8otqP_Fxjb
 K9aNbl4sMZ47B0lyS8PYkn1A5Exu1nue8CqY0NdT.tN.HI3ugXT.tzXBpwzH7U_czKYWXwu2m55K
 LZ_nXOJGQ__BGPlckR6dJFICiuly4cCbn3m0mFmQhpEj7l0shsTJ1_2eVS80OKwR9jpWIrQ_ju4_
 h84avS51vZhZ28DJCXnnmPble7tiDcadqlP99lVvbLhZ46PN86KvTqXi0G04DmJY2vzWIyVxIw0c
 rmu1bL_yGisYVnzxo_.vYkFGWEvYDukkbPQ2fAjUF5o9OWFniIr0huDDTEsSJxGt1EhjFwymsMhI
 __KfYeI5L7o8byBkzI3EfbtoTytFoP0OS4PBmayhH_373CstnfzJvJbicf1PP6JOe5yRF1J1h5Yl
 eSJ5SLjE4s23xqLgmZW4Au.eCUTPBFmTMy0ol1JrjRswwF43A2YI1YE.yElgCf4KGd3aQyQRRMnh
 Gzu4Yjgsv9HZ2TqcGq2VrbPZbeLwvYPZhu3Msy4UcfcY1oDJbGkxlD_g9qCrgtswT3hm8TXhC.HT
 JfkMKzvtOYI2sfaRhbbgdULh6wOhR0u0he.B2yTEqvz9qFVSXM1fZesjgLTlwCBtG0Rn8lMDrL_R
 b94WW7DqLue88rJ6zSOeZfNmzke0eWvhgW2Pq2CIiydpeiBAb2AbBp2pbU1s0_BmBMULINFUx7mI
 OTfcKPsPPOqxjc_bk7iJWTGa.uoF2Prh_dQSWSc_c9layoPqcGZq3JLU_kaAo4yJ55CL6nlCIPxT
 iUDwd_S4n4chdzqvu5Rvuw4dibS3dqpvxaHGEgHj_M6dmFYqHZXee86bOdKabx0X1FbGgsIOGSBR
 I3as8cuTsRZPkG9HDbBzbNsTmL_lBqarbEQ3XuwGeGu.G9_WqLZBm2QOOdPq4.QcJtnExRwO.otB
 ij8pBIDI1DlM9lzxPBc4XA.siLcYU19CeEtrUemrfbZHOQG0RXPv.1ZAPp_r.C4GRCgdfQL2Mf4o
 ziXbkPa33JA0DEPWeGVJJ6JO6Hw_vsSAl5ndHUyhgCIwZ27kyfgFprT6wPn6qsM7DpTA9SPrpmwf
 Uvqt482RaPdQFVILaJIsnS.mfXFssFg3duWiqsT4gyB9NeDqk_gjAkYRACjBU0pZmQnGtm6gluga
 IRs74XHwH8rOBhrVuFVT8FcFeU8IJvW9NRyACTEiiOyMZJahkdKSM1SNDmaA15oifObuxZ6TQWUi
 oHyX_EBSvk49sf8T1XvobV_iVrvEzU_61Il4vgyGacIxJ9EXtnEYm8MUcWmWCUDL3NS_W08FZr07
 4rdbjUT_QmFi4Ur80gw3vTGO2NJuTF_fGVeD4QOHl3vFmYXrUb9pw0.eP0QS.Vfr3HGTIKSFu_Ev
 XYqGuSIdSTlxs7ggwSBu8rGOR.Dh.23mAYpZO8XCygomYpdOXJz.YD1zE3q2F2frjhBhIo.M5WI2
 noOycTscBLWBOXEiXZ0lCwEuSIeIoYSrgFZTDNgyBLABwtM.SgjaqWYAvOi3JEuD0P5Kkw2bQX8X
 8BfPN1i80o_a0IAd8KI4u5mFzR.Lm19yrbV2tp4SeajUEMuQveq9N_R2mkMXs4YXNovd77mS2U_z
 sBaB4v3D54YQHpJtBmsmXxFuyZsIMJT9pBgp8Ehehu20ivBC.1zDNiTXB44NZlQ1Pfc6RW1klKa.
 ClhwlLPka_1OZEhU9R54tNCyDimXIoIaP9aogCaAQkF5r9k_87rZWtdiHxRXGMPOjKdPz51Z7rah
 sBYzn6ndMo5PsuY4ymZEMZw25_aC_ksipiEj3OPkBNBaGPwemBzP91u2W5U37GV81GYF4pAiaE_o
 l4Bd1C1f4MtJoAqKunNM_iJlDGw76kit22kwpbXhCJH6eoyYRlU1zHGuc__vYzpOfOu.Vf4zhIE2
 .KViu0eyA28lo2bsL4SscDXi7.hiqb.fbZZ_y6pJJw1qjVOFqgIza_SO81Xl5DznlCHf4ZcZu4kG
 aQ3kpnGU9pikRNnqmtbSSyCOctfnhIV.0sLeII2vp8gvdSAawbPOKUiSMJ1grW_wOG8A.n47hda8
 mH3hvUuUM4ad.eTHsRF3Ik3Urqxyf8PHa00vXSJx1C7LWGhaWg4wrviMEHfH12oapoa0Oo5kpQzK
 8YNjpSfqkZRzgf2vKs71WV846BfLmgcfGGBTxMGqMsoHC5xH9isveWBTLq.Y-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Tue, 24 Aug 2021 14:47:40 +0000
Date: Tue, 24 Aug 2021 14:47:35 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1603286005.133827.1629816455930@mail.yahoo.com>
MIME-Version: 1.0
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: 6R5K2ILJGY4FVG5TWDKX4LDUUPJI4AZK
X-Message-ID-Hash: 6R5K2ILJGY4FVG5TWDKX4LDUUPJI4AZK
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6R5K2ILJGY4FVG5TWDKX4LDUUPJI4AZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4369063648339359312=="

--===============4369063648339359312==
Content-Type: multipart/alternative;
	boundary="----=_Part_133826_433257110.1629816455929"

------=_Part_133826_433257110.1629816455929
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I'm trying to run the rfnoc replay samples from file example on the N310. I have updated the file system on the sd card to UHD 4.0 successfully. Are their instructions on a cross-compiler to use on my host machine in order to compile the .cpp code for the example and run it on the n310?


------=_Part_133826_433257110.1629816455929
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">I'm trying to run the rfnoc replay samples from file example on the N310. I have updated the file system on the sd card to UHD 4.0 successfully. Are their instructions on a cross-compiler to use on my host machine in order to compile the .cpp code for the example and run it on the n310?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div></div></body></html>
------=_Part_133826_433257110.1629816455929--

--===============4369063648339359312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4369063648339359312==--
