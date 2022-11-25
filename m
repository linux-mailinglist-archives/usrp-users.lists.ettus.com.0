Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A4A6386BA
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 10:50:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E595384253
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 04:50:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669369832; bh=Vemi/sX0QPrkadHlDrdEVVRG6eRZ0xcwiyXRERp3V80=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=m99QqOFheNt7HjXNf2IHDJsU0sU1KmcLyKUwb3D+QKDs1LSl21szxublNJq01oriq
	 UaBILkQfppze4BYGD1UpMVG9Y5IH/yIfQ8XzYYMexrbVOnC/b7/M3K8DwOtTWgDdRq
	 NW5ATHGfHSo89F57w/WHKdtcEEqSbrySnujxSk7lx5YxzWLWwEOA9OO/JFoMBKJKi8
	 cxJ6frZwJH+JqMxkyYtKFJ4lGPYSDt26LAXhaZL2oqMYaghhTpThK+tm2+EghF7kuF
	 R8H3HHBCCKk4dljqF+muwuujYYiV2edduucaeTh1ecahZW3bMIDyOktEexw8uYATqF
	 Mum63LUWrhq/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71E34384146
	for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 04:49:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669369780; bh=ctPoN0FkcdIC+hpTBeth9BkjqPsGQ4GFPjLNh0yeDAg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Rotpr/oZEbWrar7F2l9+yI7CzkJzbxoHDvOculOr8WIB1w11VEZFFcHlsjgE9Tnws
	 pm5eeXth9yaYUqbOabDsVRgvkPQPCIKZfq8i89acnJYSJIgXEKUr0blrIZ5HFrATks
	 gCiGSEu9UJIs3Gr9Yxg612qwd4+YXXubs3S9WEnihAc2QPoQjrvyrn14R2FygUUAIc
	 fo6tRSfQmekZKyT8IinwcbI/HIGgx38kBQkYypw2kwePeAYvhnmH5gbCagkkPz7O5X
	 VDV98BFKwBcYMNa4bPk3Lt7xaKUw7r34A2g8RjXaoqq055jPxMa21FS8YRjzfaPNDH
	 acHW17vRdI7rA==
Date: Fri, 25 Nov 2022 09:49:40 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAKHaR3nc+QmrxDe2G-ax0Yh33XVtjC0kuGBkEsaHArj_EoWwEQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YDV4KPMA7HHO2XRC4CX2W7WXAVULMKLL
X-Message-ID-Hash: YDV4KPMA7HHO2XRC4CX2W7WXAVULMKLL
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDV4KPMA7HHO2XRC4CX2W7WXAVULMKLL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2895595425006015384=="

This is a multi-part message in MIME format.

--===============2895595425006015384==
Content-Type: multipart/alternative;
 boundary="b1_ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I recently experimented with adding new master clock definitions for X411=
 (my port of X410 code to ZCU111).

Here is a commit that does that:

https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c701=
14f5011

But the clocking chips on ZCU111 are different so from you perspective th=
e commit might be cluttered with useless stuff.

From my experience the key are =E2=80=98master_to_sample_clk=E2=80=98 dic=
t from [x4xx_rfdc_ctrl.py](https://github.com/ptrkrysik/uhd/commit/719257=
702b788703e24fa8595d190c70114f5011#diff-512da83981e88a61c70b093f36b15628e=
c086f429613f79abc25234548a6cfdc "mpm/python/usrp_mpm/periph_manager/x4xx_=
rfdc_ctrl.py") (currently there is no master clock rate of 125MS/s or 100=
MS/s,\
there is 2\*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=E2=80=99 =
[zcu111_clk_mgr.py](https://github.com/ptrkrysik/uhd/commit/719257702b788=
703e24fa8595d190c70114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec590=
2f6ae807f09f9519903fe276 "mpm/python/usrp_mpm/periph_manager/zcu111_clk_m=
gr.py"). Maybe legacy mode (is_legacy_mode) is also relevant in your case=
.\
I don=E2=80=99t what it was for exactly - I just removed it from X411 spe=
cific code as I don=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff tha=
t I need to support.

Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx_samp=
le_pll.py (and maybe x4xx_reference_pll.py) contains everything that it s=
hould for\
your needs. After short look it seems that it has what is needed as it ha=
s definition of 100MHz VCXO for 3e9 sample clock.

If this used to work once, and you know when it worked, then you task is =
simpler - you need to look for changes in the mentioned files and especia=
lly\
in the structures that I pointed to.

Best Regards,\
Piotr Krysik

--b1_ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I recently experimented with adding new master clock defini=
tions for X411 (my port of X410 code to ZCU111).</p><p>Here is a commit tha=
t does that:</p><p>https://github.com/ptrkrysik/uhd/commit/719257702b788703=
e24fa8595d190c70114f5011</p><p>But the clocking chips on ZCU111 are differe=
nt so from you perspective the commit might be cluttered with useless stuff=
.</p><p>From my experience the key are =E2=80=98master_to_sample_clk=
=E2=80=98 dict from <a href=3D"https://github.com/ptrkrysik/uhd/commit/7192=
57702b788703e24fa8595d190c70114f5011#diff-512da83981e88a61c70b093f36b15628e=
c086f429613f79abc25234548a6cfdc" title=3D"mpm/python/usrp_mpm/periph_manage=
r/x4xx_rfdc_ctrl.py">x4xx_rfdc_ctrl.py</a> (currently there is no master cl=
ock rate of 125MS/s or 100MS/s,<br>there is 2*125MS/s or 200MS/s) and =
=E2=80=98prc_clock_map from=E2=80=99 <a href=3D"https://github.com/ptrkrysi=
k/uhd/commit/719257702b788703e24fa8595d190c70114f5011#diff-d91773ec3db6663f=
cee00c00022faff9981ec5902f6ae807f09f9519903fe276" title=3D"mpm/python/usrp_=
mpm/periph_manager/zcu111_clk_mgr.py">zcu111_clk_mgr.py</a>. Maybe legacy m=
ode (is_legacy_mode) is also relevant in your case.<br>I don=E2=80=99t what=
 it was for exactly - I just removed it from X411 specific code as I don=
=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff that I need to support.<=
/p><p>Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx_=
sample_pll.py (and maybe x4xx_reference_pll.py) contains everything that it=
 should for<br>your needs. After short look it seems that it has what is ne=
eded as it has definition of 100MHz VCXO for 3e9 sample clock.</p><p>If thi=
s used to work once, and you know when it worked, then you task is simpler =
- you need to look for changes in the mentioned files and especially<br>in =
the structures that I pointed to.</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ--

--===============2895595425006015384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2895595425006015384==--
