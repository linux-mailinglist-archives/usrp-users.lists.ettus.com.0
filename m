Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5956C58CA
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 22:28:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0933938455D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 17:28:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679520502; bh=URo7AKekGEWoqoVl0HGSsJ71MDHrj7OHASpWr/4JqC8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lSmH4jwfXnqkp5zlCJCIkw8GacCqcyz+S8iBMw94Be5ciWV/V28IFn2gnW4oFoofk
	 fEWj3eXHNnZ9+/pPBa4VjmjD/abQGA8Smfht/8RTIP47HUCkAwh0uQyVpfdaQunXZH
	 7mv77sAfJIheuVwHDvPzMFACdXmP/uaZxqZPDOxrV+7AwteHN730wWPFQxiHejmilm
	 5lZqlCdg67JkBcegzg56sPBNzPFLNWR6kqiOIT5LDDnGA1VZeAtQQOK4P1elYU6r+n
	 7jYbBcbVGWw3HXrrigYlUJ5yPyG3PACJxPCupLcw3yJ8Rzyk0NuZ+KH577xc9vcgLc
	 /QIX7ou7ImgsQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79D31384013
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 17:28:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679520496; bh=L2KbspTYhC2DNb9YnJ7kEevQ5Oo4zeN041GFCyW5Srs=;
	h=Date:To:From:Subject:From;
	b=EJs/5UCH6vrG9hfClIBh5oYrCTwWijc0WnGxEblyzKFXR39zSo0Y0xE43/WG9xlUL
	 QjbF8SUnCRWsPe76rM2udQ0lsc5nkCQQOoczns/l+cTdtO74hGXBxEar2hoYRdONc3
	 b3sx55VrzkH/BKQK97yh2Dpt7bb3jmKd3uBM+E49rKqbXqQO/TPBRtvzG5LRTfTyCy
	 YOPHhB+G+lVIeQ9uQZ2VPt4+Z65hcdommO1LnbSzv2fP9e4smARRgTBPE4e7vwokVg
	 +6hB/tBAE5IKZPjQL4x0mSDeGrSBa6fCqikP6YyxhjncsepB7DsMvcW+u9eLeANm+4
	 7TwRhLbBbtvbw==
Date: Wed, 22 Mar 2023 21:28:16 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XSJE5ZQ7LAWCDQOV5OQKP7M22CVFLOR7
X-Message-ID-Hash: XSJE5ZQ7LAWCDQOV5OQKP7M22CVFLOR7
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XSJE5ZQ7LAWCDQOV5OQKP7M22CVFLOR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4526918523676440274=="

This is a multi-part message in MIME format.

--===============4526918523676440274==
Content-Type: multipart/alternative;
 boundary="b1_gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to recover a signal(sine wave) that goes into my RX=
2 path on the Ettus N321/N320. However, I am having trouble recovering th=
e signal.

My current set up is using a separate signal generator that is fed into t=
he RX port of the Ettus.  I run the example rx_samples_to_file with the f=
ollowing parameters=E2=80=A6

`./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2" --subdev "=
A:0" --gain 50 --rate 3e6 --freq 100000`

And my signal generator(asynchronously) is sending a sine wave at 100 Khz=
. However, I am having some trouble recovering the original signal.=20

I have also tried collecting samples while the signal generator output wa=
s off, but the samples I recover from IQ appear to be the signal generate=
d by the internal RX LO, which is strange, since if there is no input on =
the RX, the IQ should just a be a string of zeros(plus some noise). Any f=
eedback is greatly appreciated.

Thanks

Joe

--b1_gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently trying to recover a signal(sine wave) that=
 goes into my RX2 path on the Ettus N321/N320. However, I am having troub=
le recovering the signal.</p><p><br></p><p>My current set up is using a s=
eparate signal generator that is fed into the RX port of the Ettus.  I ru=
n the example rx_samples_to_file with the following parameters=E2=80=A6</=
p><p><code>./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2" =
--subdev "A:0" --gain 50 --rate 3e6 --freq 100000</code></p><p>And my sig=
nal generator(asynchronously) is sending a sine wave at 100 Khz. However,=
 I am having some trouble recovering the original signal. </p><p>I have a=
lso tried collecting samples while the signal generator output was off, b=
ut the samples I recover from IQ appear to be the signal generated by the=
 internal RX LO, which is strange, since if there is no input on the RX, =
the IQ should just a be a string of zeros(plus some noise). Any feedback =
is greatly appreciated.</p><p>Thanks</p><p>Joe</p>


--b1_gq9aPKD1ebdvEkfvpAwKJd7UlVDMWQzC7NAKLuUy4L4--

--===============4526918523676440274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4526918523676440274==--
