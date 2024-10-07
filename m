Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D10FA99347A
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 19:10:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E1A538588B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 13:10:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728321000; bh=JAsa7hckyEVarsLIbs7eqQGLA1p2NXNOkjQBMops8p8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Dh6nUOUduQr6RJTPHY5GfRRZdqlXx2DfTTJgIqbzmfYE3zp+aeXOIRWEqiQx+v2Cx
	 6hqxf9zsng4JTYE9SfljeunS1KWgYKAzLjjBcmNEvdt3ogWKgUHTWPPp7F8rir8/N6
	 jT/CCuA+I86Q+IPodfbuZJG7o7+6ZpiW55zusXsMA0feIRSOJEZjHd+2gPiFQdN07n
	 iry9W8yKABYkdyHIerIpz6ctzz1ylWOqQLWQFh4AM1buggKosm2COPG3I7YZryDdlP
	 PqfhtQrqYxrV6et1oOrUSmj/5oW3BbrPUUJ9Q3lRP/5dJFvQbvslZwcAJPMn2Qv7/c
	 G5JYwYEYUtSgQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62D6F38093F
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 13:09:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728320945; bh=7MMqp1GKFlsoOJm7wk9G/H+ubkSzsco8hDr1iiuzqns=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ja6NWurtqaVN8vjuHoiNiq19mxRcs+pxUNoAssizR5SZ33QuYHFxCGt1xLXGRni7B
	 ga62pYBc4uwGX1Ny5IXIlZUIGWoUsbWGE74wYA63CUDfsWGDygua6co46jFWknYr0f
	 tTrxCxbaxoD67YqvUcHuDTgs40ykr8kBJWn2VbJ1KMFLSSVVSVSQtR+sSDvPQRy9w2
	 I4oq0x9QOO24/Bt0ROuANUytQY5DGIpdgG+wy7WWF70y5lJuIR40nTxSV0l/deVp4A
	 cWyI857av3xCOyTrvrH6rzQM5USssO0NRf6kAN/ZUfwQP4ncDNq6QirJ68vO8W3vA+
	 E0zqILoy1XnIQ==
Date: Mon, 7 Oct 2024 17:09:05 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4QVNmYRkji6bAy_mBSU6Cy+27HmiKkKeYrqjkB+u3atQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2LNU2KD3JL27OBI5D6YRGFMBTUBGXY6F
X-Message-ID-Hash: 2LNU2KD3JL27OBI5D6YRGFMBTUBGXY6F
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC e310 block yaml and bit image file examples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LNU2KD3JL27OBI5D6YRGFMBTUBGXY6F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0845427762910587516=="

This is a multi-part message in MIME format.

--===============0845427762910587516==
Content-Type: multipart/alternative;
 boundary="b1_iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Martin for always providing a quick response!

The two files I noted above, are pointed to in this Ettus docuement:

https://kb.ettus.com/Getting_Started_with_RFNoC_Development, and are spec=
ific to the e310.

and do exactly what I need, and since they were ettus provided, Im assumi=
ng they fit (?)=E2=80=A6. and have the memory settings to fit on the devi=
ce.

I have now modifed the [e310_rfnoc_image_core.yml](https://github.com/Ett=
usResearch/uhd/blob/master/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml =
"e310_rfnoc_image_core.yml"), and am compiling it.=20

The original ettus provided files would show me how the memory was alloca=
ted which is key on the 310 FPGA for size.

We are currently using the UHD 3.14 based fosphor application witn an add=
itional block to identify and characterize noise in a power ditribution s=
ystem. I had intended to update the system to UHD 4.0 and the new RFNOC a=
rchitecture.

--b1_iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you Martin for always providing a quick response!</p><p>The two =
files I noted above, are pointed to in this Ettus docuement:</p><p>https:=
//kb.ettus.com/Getting_Started_with_RFNoC_Development, and are specific t=
o the e310.</p><p>and do exactly what I need, and since they were ettus p=
rovided, Im assuming they fit (?)=E2=80=A6. and have the memory settings =
to fit on the device.</p><p>I have now modifed the <a href=3D"https://git=
hub.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/e31x/e310_rfnoc_imag=
e_core.yml" title=3D"e310_rfnoc_image_core.yml">e310_rfnoc_image_core.yml=
</a>, and am compiling it. </p><p>The original ettus provided files would=
 show me how the memory was allocated which is key on the 310 FPGA for si=
ze.</p><p>We are currently using the UHD 3.14 based fosphor application w=
itn an additional block to identify and characterize noise in a power dit=
ribution system. I had intended to update the system to UHD 4.0 and the n=
ew RFNOC architecture.</p><p><br></p><p><br></p>


--b1_iy61ntpl3fkdcDehP1UGblOCRI2WaNGtZWxzQX44n0--

--===============0845427762910587516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0845427762910587516==--
