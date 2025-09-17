Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6DB7C7DD
	for <lists+usrp-users@lfdr.de>; Wed, 17 Sep 2025 14:04:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3C6F385E78
	for <lists+usrp-users@lfdr.de>; Wed, 17 Sep 2025 04:29:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758097763; bh=MMmu02wlxi8DIsT2HtYEGS0KHvONbNxE3BFJPdlw8lY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zznHjHm4fQXRge0HT187+mQhg3POhGjzkU7Wjv0jPGd4FE7xp1jB+L/wMLWSUZSLW
	 SEtbxn4c3WtMpDoSAZ0qaYIkAJbKYoyLuu0ai6g4e2ZXPl6JJrdiMrOmW0YOPSL1VA
	 rw6+BLIft6NVbiGJ15kNDvuJAAjRXYSqpuyiPHloUSGJzyyUj6zhpgCz8ByYgTmzvG
	 4SWULD/ykyxEfJErkAP40fr4AIuBew8rOAX1RNdsir8vtm291JKtz2tgl6yv5OgQC7
	 bUE04ctPwG1irSQZq3zArnLDVXduBEqHhjM6/7lVQgUADdEtM2UQ3nXUpWbqkMrXY6
	 At8PFlKIouG8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B80E73859F8
	for <usrp-users@lists.ettus.com>; Wed, 17 Sep 2025 04:28:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758097707; bh=t/Mc+ZNnOHIFHj3+xIVohteFLMcoCHtdBGXkWD/eA/g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=A6AyOtogQDBV4GrQxg4neCSHG5t3GkM64kKaI9PFgS+X2ZDhzmZT9AbBdjMZLBoJH
	 svFpjFO1xHLZauFDhvXxlaeJeAtXZtV5HJ6wMA7hjNlnUFZBFAu2J03xUiMZT0GZOS
	 GOHN2j+uoeOgr/w2OjG87Q9nH7uFeeNh5xaGYC1HssUQesFeE2GsqYmTAwlUxc7URB
	 fZQ19nSxMjgTTFZb+iJ4KfrkiwefBGt+SZjiPqG984KY2m1sssINoZbdjk8Nv1CmT7
	 Djy7EThQGJa81/XfYIKjxQ2j990a2aAR5RhT2Xu1AjcEUEAMenfWdwph2LBPZ85ksa
	 ydwRldNj0jTlw==
Date: Wed, 17 Sep 2025 08:28:27 +0000
To: usrp-users@lists.ettus.com
From: dennis.joosens@uantwerpen.be
Message-ID: <1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6-3w_eEP15WV8jEhxsz9q8or06QZG5BxEaC5FGzP6=Wg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AWQDFLFBEPPYRBND3553C3LEPQKSQULH
X-Message-ID-Hash: AWQDFLFBEPPYRBND3553C3LEPQKSQULH
X-MailFrom: dennis.joosens@uantwerpen.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration USRP B210 UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AWQDFLFBEPPYRBND3553C3LEPQKSQULH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8127206808099285212=="

This is a multi-part message in MIME format.

--===============8127206808099285212==
Content-Type: multipart/alternative;
 boundary="b1_1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U
Content-Type: text/plain; charset=us-ascii

Hi Martin,

I am a bit stuck here (still). I performed several measurements using an OFDM signal (20 MHz, synthetic signal) and a sine wave on a smaller bandwidth (1 MHz, via uhd_siggen) to verify the effectiveness of the B210 RX calibration files that I had created. All in a controlled, cabled setup with a 30 dB attenuator in place. To this point, it is hard to tell, as I see little to no difference in power when loading the calibration files. Therefore, I have three hypotheses:

1) These values are so small that the power calibration is negligible.

2) The calibration file is not loaded correctly for the B210. Missing something in the code (I only get a True or False when found or not found)

3) A specific value in the calibration file is not loaded because of frequency offsets, which, by default, exist (I measured this), and so the value of the calibration file is not used.

Is there another way to determine if a specific power value from the calibration file is loaded? Rather than getting the message now: "I am a B210 and found a valid calibration file for channel X or Y".

Could you give me some advice on these points? Or am I missing some other critical point here?

Thank you!

--b1_1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>I am a bit stuck here (still). I performed several meas=
urements using an OFDM signal (20 MHz, synthetic signal) and a sine wave on=
 a smaller bandwidth (1 MHz, via uhd_siggen) to verify the effectiveness of=
 the B210 RX calibration files that I had created. All in a controlled, cab=
led setup with a 30 dB attenuator in place. To this point, it is hard to te=
ll, as I see little to no difference in power when loading the calibration =
files. Therefore, I have three hypotheses:</p><p>1) These values are so sma=
ll that the power calibration is negligible.</p><p>2) The calibration file =
is not loaded correctly for the B210. Missing something in the code (I only=
 get a True or False when found or not found)</p><p>3) A specific value in =
the calibration file is not loaded because of frequency offsets, which, by =
default, exist (I measured this), and so the value of the calibration file =
is not used.</p><p><br></p><p>Is there another way to determine if a specif=
ic power value from the calibration file is loaded? Rather than getting the=
 message now: "I am a B210 and found a valid calibration file for channel X=
 or Y".</p><p>Could you give me some advice on these points? Or am I missin=
g some other critical point here?</p><p>Thank you!</p>

--b1_1Daj2uqX8lO6RCY1QY5xQvkXbt7Fj1fFXdPtnHxoT3U--

--===============8127206808099285212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8127206808099285212==--
