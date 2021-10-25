Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BA438EF7
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 07:47:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF6BA383DED
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 01:47:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Iz9Ka5B7";
	dkim-atps=neutral
Received: from sonic312-52.consmr.mail.ne1.yahoo.com (sonic312-52.consmr.mail.ne1.yahoo.com [66.163.191.233])
	by mm2.emwd.com (Postfix) with ESMTPS id 44389383DED
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 01:46:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1635140794; bh=X3nocoihPJpXCG7td4H7KrM43oZB38ibilR1Gt+l9OY=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=Iz9Ka5B7F8HASbD7hb2O+alN/zqQJjQCo4FWp+dpgfKVB0DU68z/BIsbl2TL1n8VC3YAAHY0bAeP+viHrmNiAl6ZBOIogLUbqAEcs9AVSHcNdVX3KpGacAObMMUD/wMsDpFS8k9DMKmoZiLhAFDuUHmu2ocPG2bEec0ZLmBJ7yCrvOWvVBZLW++3CCscDJadEj2ici4OZn4xc4XjyxGLYLJN02rGUVYSseyQ3FT2yXPdEhdEIKx419SEkbVzPQLJS2AHFbGU4sZaLTA6J7MF4Y91B/jJjuOYpQv8bqZrPBno6F1sFboJbsqEog7MunFedBfCS2KZ1Q1/wJWEs5IMFw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1635140794; bh=rMkK2PW1I0D2MSOMr7RUE7B9eMyVWTCLGJg0827Uc8+=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=tCpbfkc62u7pmCENgfCRsdW0Yosm6Ch8IqVD9hhdNGha4qOqVLRCZClc3qZiarwvtDwDe4mCkdJGTzYM+C10cQWCsGabfL9AvejkfPR2uTO9V0uWFOhr7LSO9duA7OaKCoiEMZvu+T665le87WIfDT1rP6rBVnWvQcKX1bK+MvYlZZYICc8+DVVSHSutbzWfgcQLMJyY03ozNDbtFBYQHunzhVpwfd7aLqqmTeG6aOj07IsdoIWYzIkRV9NDIXLINVvD6g18IfMmQmiZbNrxhH2GLaY8uGQ6umFkZVwF784ypc/6/YPuw5LFsuBb5uSb/QsxIGgGScihocQG1EoDUQ==
X-YMail-OSG: 6PWCn90VM1mXQSl0AvNCs2yz_8psI4cs0BLbUs7f4fdNGssV_r8cBX5dhQjdgmn
 5oqRnAqpo.9ozM6h.gC0_SFnC.MWuk1VH6.Aqzu.eIOhOpUyyignQchDN80pgsmWf1j.mTH9Jq86
 GuUkMuI5fnJcnoK8xt_O7z82vMH3ji2hOzzMMgM3wtjS9k1hRet82nac1oret7oKiS7XgUBKUhsy
 ZMzYHrZOvOUqJoEeQm8XqO6Z7VfeEYT16AlLWEj4dq2KURBC3jIKzOE.KUn4TN7l3MUOUdUnkJyA
 XccEDQ09W1mY093ckIyphrLE4Otdfa2KMifuMvqJVpH29KQx90beE4t3VIn6y1QrJ._U3KHzIZhq
 _N8JzNTnJTmtVdXW9HYhsjYIts5cEb66qMpFVIGJGTyWrEOnhi8bzuuRx3AG8TRXsxFj2Quje0yx
 8ofEnIyCkVEc_I2fF0HPIMvh.BDAbje42IouTAZdV7YsTfLlR7sTbyxP3vO_AlrdcFCo5_jbYeCB
 z9_opWFw6AKKzNRLz2oiDQFk40fq1D0E3Qk8ayCfOC6E.72NSBTLG.eJuOTSzo_2vRLXoJ9KoYLn
 creSDJWoKOZYINsK2pvLgj73C5rj6VtV_rafxe8qrqWfkCpGB.2JAPULZQKEEJidRdmeed4Wi0pU
 l44buvLjzd_HwiCKyHsjzSWr05sSROhsBR9lYJ5PYzO_ZRUBSMsvx40X9lEGUdhIL8UmcbnzenXJ
 9Ef5bHIAVVTsS4D3OkvRD.idGFRUm_2tDdSqM7e1G0aWpP1Ls6slqChHNWFLRV1oA5NDXs7o_UJp
 FQkgUmArvbjD5vROpS4lvvMDD49ypYIttVXc.nomrQW3AOdm4I1c1or87x6m96y2RQ9Mb.XJXedU
 M9osd0oS.6A8VGJL.JNtmhiJUxZ61vIUDszG046ZyChjvchlktc.ccs19L.Uu4wMwAzCmhqt9dGp
 eDDbwGzAjha_qX8OBJK.ggijxwvyPjKfl3EppnzacxDS51ycPVFGFBUhL5Mtwr9AnhCyd_7ZMoUE
 fERWEat1NsSF72DBuiAO3XvTc59.rr5dpVWycli0TLyJF1Ee30rp.6MCBivcLdW6OSjzx1kF7rGg
 bQFO1l9JJi0a_lyHkqvFdjNyvaal1QsTX7K1GYz9bmVu1_ByTwsjtN1A8BCEOvJT4v1qic7AxRTr
 Q9.52M7ldyvI_YdG2lrk3px_NtPBSUM6sDZmacTlqHSxA3COR5dLF33EqC.2ZhJUOCZlzSXWPNHC
 xgtqmizljMmWBBxomfGOzmvg6Cfa71.3J3ziswlbZqlobtK2UZMlZeLQUB8muOTx99eZPTGb_rXI
 ptqz8R8WnFqY9w6q88Vg8g5wvQU8co96AwWZPqU0jKe1mGfL3mFstkLSg8k9U2EaKvENaDWPj9lI
 u5vY9ECgMmt8sJ6FYjQDxEqVedc9N5jbuDFDOLXkyCKMiS01rVJU6WWxLYTBvyA.Wvq4HRSeFpqG
 4z4xg49dzjbU_hp4DUcn0bEzf7dD1kz15v1eVH8onhgBPIEyVEvqbx1e5hjXCMrRgDcQLZF1Rvj4
 cgHklTsTKBiKsU57HtX_AAFjtVB71z1gOQIzvZray22C0QYc1R8sMgEfXS_hK0jG2X13Y3j5oqEE
 Wuus6dSlv3Zbg7l7d4tyrCvtfvTxg7w7hdfg2CYbeeRNZxFjHKoGNp3FFA91aAfk76smrny_zMsT
 OIGfbmf1UOgRlTl.nmzn1dUrA_YNYX5enZPrxmsB7oK84eN.UKNxOQnxSK2bGepmSvbEMyUKBXC.
 8qDtn0eGEuyXbgG4LBkoE9p_.cvxIeQU_h4c1elvtrZim2igefMw7kD9KPWazEXONrBJBH2dfQ4D
 BOTEJw8MrsGFIQVOp3lR0tvVCR9ORAOxhklFlaoS.YI1EUz3Jx_iXpSaFbHSSJwFhzNmRXCqchHE
 8T995w3NVRqt2hNGszdBvXkwg3pjpvRIhW.nUrpxt1atvQ6oXfFq0rPxX28ZeiPZnp6ZdMckxnuH
 49ZacB9qXDFe49KQYBekh2nPn.t61nNq74wQWpw44WKORuUPNt4iGfDtqB2tKkaUy_69zvMBlPO6
 iSBytU3dM.Vqp_zxk2AYbDNsIxpGggsBi8hfjKiJa7FGe.LvBv6JksFcJ4ws1Y3h3jtCN2SQoicc
 y7W6nzEKZSoWjRb597PrzSFfpT8W9hZTYT5gD2y7KoYGdP.zcCLOb7qOsyxBiUehzr5YwhGSN3HI
 AAeFmU6tJ
X-Sonic-MF: <parsafarmh@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ne1.yahoo.com with HTTP; Mon, 25 Oct 2021 05:46:34 +0000
Date: Mon, 25 Oct 2021 05:44:33 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <2102437284.1242411.1635140673062@mail.yahoo.com>
MIME-Version: 1.0
References: <2102437284.1242411.1635140673062.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19198 YMailNorrin
Message-ID-Hash: VVCT25OEU7OTKT3KA3SU75AS6KZ2YMU4
X-Message-ID-Hash: VVCT25OEU7OTKT3KA3SU75AS6KZ2YMU4
X-MailFrom: parsafarmh@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] cross-compiling uhd 4.0 and gnuradio for e31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVCT25OEU7OTKT3KA3SU75AS6KZ2YMU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "M.H.Parsafar via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "M.H.Parsafar" <parsafarmh@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6335640781496745657=="

--===============6335640781496745657==
Content-Type: multipart/alternative;
	boundary="----=_Part_1242410_1674314091.1635140673061"

------=_Part_1242410_1674314091.1635140673061
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,I'm trying to cross-compile uhd/gnuradio/gr-ettus for e31x with release4 e31x file system on ubuntu 20.04, but apparently the cmake,g++,python,etc libraries installed on the oe sysroot are not up-to-date resulting into errors during cmake / make processes for uhd/gnuradio/gr-ettus. how can i work around this issue? Specifically, would you please tell me with details how i install required versions of libraries or compilers needed for cross-compiling uhd 4.0 and related gnuradio and gr-ettus libraries, in the release 4 oe cross-compiler sysroot?thanks

------=_Part_1242410_1674314091.1635140673061
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false">I'm trying to cross-compile uhd/gnuradio/gr-ettus for e31x with release4 e31x file system on ubuntu 20.04, but apparently the cmake,g++,python,etc libraries installed on the oe sysroot are not up-to-date resulting into errors during cmake / make processes for uhd/gnuradio/gr-ettus. how can i work around this issue? Specifically, would you please tell me with details how i install required versions of libraries or compilers needed for cross-compiling uhd 4.0 and related gnuradio and gr-ettus libraries, in the release 4 oe cross-compiler sysroot?</div><div dir="ltr" data-setdir="false">thanks<br></div></div></body></html>
------=_Part_1242410_1674314091.1635140673061--

--===============6335640781496745657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6335640781496745657==--
