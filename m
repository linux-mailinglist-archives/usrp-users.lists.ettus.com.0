Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C55A9ABA38
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 01:50:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05FB8380097
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 19:50:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729641033; bh=nPABUpz5fhfIICqNDSwIQLskLxUxCipaua7VJluhg/E=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=0XQo9Z95lQRaORCfYs2iFQGafoVKalyCCDgYz6lQ08bEDkpYDSbTXZswxgdkaVOvR
	 GVLlEVnXDKUvwlCL8Yb9ebfC3GoVNxCiOuGSeFusDVKyuOOHKwFBKeTL2FAahWheU9
	 yfy/Nu7Ez6u9A+3IBvTkS49Q6LXMNR+K4uPyNwyLQkrk/qf7E9coXKzhurp2+AIhIk
	 LzvPCZ7D9ztLs/cNbXt1K1aN6yFkUpGx/qLuskjEav7ZIIZvwx+T8ZZTC01ac/Pigc
	 dwextARnjUhxToJcR7zYk1HITVeto11Qi76000ugOjfl150Ms+sMQidMW6pFwzgSEh
	 nDaDW7MenGxMA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BBF6383F26
	for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 19:49:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729640972; bh=tja7Xoz+e43YWGh9ZT9oSFCTOGxUmh+jJFlAn75sYzY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=WV7kpuPK0bcx3mzxzVlwTtMz/7z+uhIqghmhMfe4TBL+CRPXxEbZKBCw5Nnexl3jW
	 TEoBSZoAdrFDdShUPpyi2Mdwt35LLlqCSS+2DnDa85Tvpeaou2YQn1c7ul6VZVnIrY
	 sZobTZr3UB54oT2gQPoPzIqbZvnNw+TdXXuJFDgMCc5Eg57g6Kz+foFCLP0C/vBhs/
	 VG2i8C77Ub1gPdNWedoWH/fig6gmOFTR1RYVGxP7ER2RXwIJHpr9VZO/BByUZotDQ7
	 oAWILATI031KuLEMbPLob89HFyTYEgdpUO/dZRhagzegU0LprNZ8RjMcvEPFb/G94b
	 EwT2a1YNO+0LQ==
Date: Tue, 22 Oct 2024 23:49:32 +0000
To: usrp-users@lists.ettus.com
Message-ID: <NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c1a4ae00-e813-41ab-8b6d-71479da6bb8e@o2.pl
MIME-Version: 1.0
Message-ID-Hash: RT67TBHAJY5FN3BMWDPZSCNTWA6KIGE2
X-Message-ID-Hash: RT67TBHAJY5FN3BMWDPZSCNTWA6KIGE2
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RT67TBHAJY5FN3BMWDPZSCNTWA6KIGE2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============7985860173214886234=="

This is a multi-part message in MIME format.

--===============7985860173214886234==
Content-Type: multipart/alternative;
 boundary="b1_NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr, Martin,

I=E2=80=99ve had some success in getting the driver installed in the kern=
el.   It is pretty straightforward, and Piotr=E2=80=99s suggestions regar=
ding `xlnx_dpu.c` and `xlnx_dpu.h` were spot on.

Currently, the driver fails while loading during boot.   Some Google sear=
ches suggest either the wrong driver version, or a device tree issue.   I=
=E2=80=99m pretty sure that I=E2=80=99m compiling the correct driver vers=
ion.   I iterated through several versions, from early to more recent, an=
d I am currently building the v2022.2 version, which matches the DPU vers=
ion in my design, which is 4.1.

I suspect that there may be an issue with my device tree, as there is lit=
tle information regarding the proper DPU device tree entries.   My guess =
is that I=E2=80=99ve messed up an interrupt, or stomped on an address tha=
t the original x410 RFDC block design is using.   I tried to keep all of =
the existing addresses the same, and only add a new, unused address for t=
he DPU, but I=E2=80=99ve had Vivado IP integrator change the addresses a =
couple of times after I=E2=80=99ve modified the BD, so I=E2=80=99m checki=
ng everything to be sure.

If you are interested, I pushed the `meta_ettus` changes to my fork at ht=
tps://github.com/tetonicus/meta-ettus.   I didn=E2=80=99t separate the co=
mmits in the fork, I just pushed them as =E2=80=9CInitial Commit.=E2=80=9D=
   The kernel-driver-related changes are primarily in `meta-ettus-bsp/rec=
ipes-kernel/linux/linux-x4xx/`.

I=E2=80=99ll post more when I get the driver to load=E2=80=A6or=E2=80=A6i=
f something goes horribly wrong and I think it would be useful to share. =
:-)

Cheers,

Mike

--b1_NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr, Martin,</p><p>I=E2=80=99ve had some success in getting the dri=
ver installed in the kernel.   It is pretty straightforward, and Piotr=
=E2=80=99s suggestions regarding <code>xlnx_dpu.c</code> and <code>xlnx_dpu=
.h</code> were spot on.</p><p>Currently, the driver fails while loading dur=
ing boot.   Some Google searches suggest either the wrong driver version, o=
r a device tree issue.   I=E2=80=99m pretty sure that I=E2=80=99m compiling=
 the correct driver version.   I iterated through several versions, from ea=
rly to more recent, and I am currently building the v2022.2 version, which =
matches the DPU version in my design, which is 4.1.</p><p>I suspect that th=
ere may be an issue with my device tree, as there is little information reg=
arding the proper DPU device tree entries.   My guess is that I=E2=80=99ve =
messed up an interrupt, or stomped on an address that the original x410 RFD=
C block design is using.   I tried to keep all of the existing addresses th=
e same, and only add a new, unused address for the DPU, but I=E2=80=99ve ha=
d Vivado IP integrator change the addresses a couple of times after I=
=E2=80=99ve modified the BD, so I=E2=80=99m checking everything to be sure.=
</p><p>If you are interested, I pushed the <code>meta_ettus</code> changes =
to my fork at https://github.com/tetonicus/meta-ettus.   I didn=E2=80=99t s=
eparate the commits in the fork, I just pushed them as =E2=80=9CInitial Com=
mit.=E2=80=9D   The kernel-driver-related changes are primarily in <code>me=
ta-ettus-bsp/recipes-kernel/linux/linux-x4xx/</code>.</p><p>I=E2=80=99ll po=
st more when I get the driver to load=E2=80=A6or=E2=80=A6if something goes =
horribly wrong and I think it would be useful to share. :-)</p><p>Cheers,</=
p><p>Mike</p>

--b1_NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8--

--===============7985860173214886234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7985860173214886234==--
