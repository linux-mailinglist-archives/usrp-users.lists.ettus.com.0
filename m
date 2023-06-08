Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE1E728282
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 16:19:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BA07384982
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 10:19:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686233969; bh=qKEe/aUjEC7NcHAJD/ZnrlzFJKRlDr7lCtO1QqupVRE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CpAtr9HksFalr09djHAVLc4XaVTUmz+CMuuGpTa2Nr9/7kuXhiaLogUWZJ5tO1AI7
	 dtZKOCbP29UiZbW94p+RPkBuntaFSLShZsi+CQAQ8A0PjEmIE/kaPnaeZhjcmwoX72
	 UHDctZ8ceVv/DpJFmoFwSvpYMA6kTpcStp1RLXPcPaBMdnkUMA0EHJNO13RENbxa/v
	 OX7JLNnMi4qjG4LKlX4BxNGDJfyIEuiAt7jN3xMfhD8qIq0XCCDXkN0erjk+rrMBDM
	 WT2CKwx6wnPZWrVBwu5zR2a/wRwyxsS6E70Tays6jC9EzN0b838Sb0i4MsuMBfuqje
	 BdwuT/rVkR9YQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D4C038495E
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 10:19:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686233945; bh=tjotm+zfB+bzfwYrJCdrek4KDJRJvXklukboC1ukoU0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CqaL6qxpEH3SDpKI+HsdSuLC0Lh3yUsNHvqa0gYJpuEOySlfuYyYHgZkGOPpCDhV2
	 1O3Qag08fc2cqNJgVpcO37NekE8vkPi4yQtC5MTUrhv2U4/Do/LrOtRAHgplj3r+8e
	 /grqcF0ODmxJfIqspQGHyonOV84lTJyHCsO+DLrdhs7RfrJoH7SJSEz7Xc92nWQbOl
	 jwpmZihV5vU2vpdtUc94jyymckUJMta7TFA5Wgdac104i4xUTkgcQhn9uTiOU9SM5P
	 9yidE+F5wawL1q/vuWuJK4dS4fLnbUQLv+yHtlqGhZKAKQ455JtV0k/3Kh4N40KYT/
	 UjIj+OtACstyQ==
Date: Thu, 8 Jun 2023 14:19:05 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jr0uQpg+0i6bwWXKw_WitVet50tgEPOtMLQJcH3byvYw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 3ERCL4T4DZIWDBGQBALDASA2W6H73M74
X-Message-ID-Hash: 3ERCL4T4DZIWDBGQBALDASA2W6H73M74
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ERCL4T4DZIWDBGQBALDASA2W6H73M74/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0010351511017425081=="

This is a multi-part message in MIME format.

--===============0010351511017425081==
Content-Type: multipart/alternative;
 boundary="b1_tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I had customized RFDC IP block in the past, but I have re-installed UHD s=
ince to try and resolve this transmit issue. I had just compiled it with =
the default settings, except for my custom yml file and custom block. The=
 only difference is when I run with vs without the GUI option, without tr=
ansmits. With the GUI option, the light next to the port does not even tu=
rn on=E2=80=A6its strange.

I guess it would be helpful to know how the indicator light actually work=
s, is it directly controlled by the FPGA, or is there a separate circuit =
checks for a voltage on the port, like a voltmeter. Checking the verilog,=
 I noticed some indicator LEDs look like they are controlled by the FPGA =
(PPS, QSFP) but I could not see anything regarding the RX/TX indicators.

--b1_tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I had customized RFDC IP block in the past, but I have re-installed UH=
D since to try and resolve this transmit issue. I had just compiled it wi=
th the default settings, except for my custom yml file and custom block. =
The only difference is when I run with vs without the GUI option, without=
 transmits. With the GUI option, the light next to the port does not even=
 turn on=E2=80=A6its strange.</p><p>I guess it would be helpful to know h=
ow the indicator light actually works, is it directly controlled by the F=
PGA, or is there a separate circuit checks for a voltage on the port, lik=
e a voltmeter. Checking the verilog, I noticed some indicator LEDs look l=
ike they are controlled by the FPGA (PPS, QSFP) but I could not see anyth=
ing regarding the RX/TX indicators.</p>


--b1_tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E--

--===============0010351511017425081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0010351511017425081==--
