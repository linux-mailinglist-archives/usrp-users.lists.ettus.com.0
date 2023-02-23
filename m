Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9726A031A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 08:02:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2975E380A36
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 02:02:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677135777; bh=+C7PmU9iyhOmR2BKigW1G5eeNdkjqR9pQxx6yTKvmHc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ATEEIy43Rl0H6A/7Oqkw6Si5nw0EZLsDUbsAvxUetp3lMJeKX4pjACb8AgBvobNB/
	 NCXn2Lg9AqRERxoCM8YK4UOuxaD7xMkf9ZAu8zS1PAoJCslc119p5XuR4EWuSukeAy
	 /o7LkYoz/JmNyut+cglszQ4A0hJ34gAfHI6bmM7XM2/T+FaVpBE0LOHDoLc5Lhv9o/
	 U46dDUdbuNgUZgzQP5HhzzZJcJbH+99rQhkQd5NH4FELjtxXfX7jZ1rcy1JukuSQST
	 PujVj9o9T0W0q+nWBviMfnM0ATSax/gkUW9Elb6cqPPMmxObCEBicxLh43AuWDi1HK
	 KiS+jjFfwO6sQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 302CA380A36
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 02:02:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677135771; bh=2QI1NwNrk4JQEZSRrXvBWV1ebOjjlGQ3ows5c7gcyME=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=M5A4u7Sp1o/zZPAYCh5b3fnHD9/nCauqObHrxE0xe2KI1IkobIS7Ds0WdiJZTFJe/
	 fEovQh+alXyylKmBuXezEjEmfUgU7AxZa5ljWHHA6MQpfFasOTH3slogkadlaPf7Zj
	 zMwBchEsIupPinRVbirvyLgroIj2g53dTXdDrcuabFBpksDAbZtKZHGp2FEqFiJ1Ny
	 XDAqQ9mUDFh5s9mR9emJIiBrjbnCFZr9SfNzd0LY8sLGMkw6RjhYatasuYqqZZySrh
	 vzVRIqSYmeha0bpSvomsol2FQqt09beXy1i9zMfbW0KymsALQVxx9A6Abd2bHQhYOQ
	 Dbyl4p1UA0bhQ==
Date: Thu, 23 Feb 2023 07:02:51 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5e289ae7-e5f1-f4dc-d5f9-c07dedd0a063@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4FY57SWUR3FFN7VWLFEWQH3ORMFLQNSX
X-Message-ID-Hash: 4FY57SWUR3FFN7VWLFEWQH3ORMFLQNSX
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4FY57SWUR3FFN7VWLFEWQH3ORMFLQNSX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4603043305714263981=="

This is a multi-part message in MIME format.

--===============4603043305714263981==
Content-Type: multipart/alternative;
 boundary="b1_uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I wanna make this operation in far-field so i calculated from (2D^2)/=CE=BB=
 and made this distance almost 2meter. My horns are good at 4GHz i am wor=
king at this freq. I adjust RX and TX gain with range operator in GNU, I =
mean for the observation I am changing gain. To see the signal, I need to=
 make 70dB gain so i set 30dB RX gain and 40dB TX gain. I raised gains 60=
dB for observation but nothing change. By the way, if tx gain is at 40db =
and rx gain is at 30db, the signal level is -75dB.

Thanks for the advice. I will try attenuator.

--b1_uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I wanna make this operation in far-field so i calculated from (2D^2)/=CE=
=BB and made this distance almost 2meter. My horns are good at 4GHz i am =
working at this freq. I adjust RX and TX gain with range operator in GNU,=
 I mean for the observation I am changing gain. To see the signal, I need=
 to make 70dB gain so i set 30dB RX gain and 40dB TX gain. I raised gains=
 60dB for observation but nothing change. By the way, if tx gain is at 40=
db and rx gain is at 30db, the signal level is -75dB.</p><p>Thanks for th=
e advice. I will try attenuator.</p>


--b1_uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ--

--===============4603043305714263981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4603043305714263981==--
