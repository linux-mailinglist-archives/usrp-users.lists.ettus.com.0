Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8033C990BFB
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 20:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EC39385022
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 14:41:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728067267; bh=f9tMkfFu3DEbBS3e2IbNpRVPsdZXAWtpjuXL/FnE9o0=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=CZit2rMWTK2maL4iNciOru2DvQ2q86qwGPKokNX5wWXAHhm+64uH//i8OUPB4RsVr
	 T9MfNPZiS3HUUvUx9y84iPlhhbIAccQ+sZsOjkizQjrE9WJOayllD6TAAPl7DKaYUv
	 CawmNpMT/la7EfLU8XpcJ2jpt/yRI7UrxUvG5er9YWJJ43g2aenO+aNC2AsXGLLrtI
	 E+47zxNlt+8UQSjYnBFbzBs/SInFeA7M9F0CXafwL+xKglQ8Q8wpAxEPczc4r2bylq
	 FgJx+p8vGlrf6PiSupJkFpeodGzGg5LUEFTf/siCO0rZUSxHUbQfBfZJ7VA6CD/z7+
	 2ARiiGgVL/IEQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DC0C380D7F
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 14:41:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728067262; bh=06+LWSFb3JjI/ALPAT8S4mi/XejfYIc2X1+nzrURIsA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ecAZjt11XA1WhpwNprTqy/uVPfbyP/eEulubICJX5xJQTtm7Xsl71AKdu+7PlAYdD
	 lzeytmPylF56XLTbaxYpVUIP4uWhEAT41Y0zhqSPViSOhU07sYB/X4bko136nfsrCO
	 v8WG7+zEo7lP8AwNx6bbNaZ55NLJCAIoY+uXZhqKDzQ8lVxkjF2+ggL17SbrTqMfTr
	 Ja7ezDywUddtQb8xSjozLrpKJPsjURKgHolL1oAYfDa0xucy0uCgOOcEpiBie61jYr
	 doi31jCYHASIJmGJqyDPTu70a9IX6KZkZ71crdrypsOH8116rUGDxM+Lm3HPu1dcRc
	 +n6q9ASWPXaow==
Date: Fri, 4 Oct 2024 18:41:02 +0000
To: usrp-users@lists.ettus.com
Message-ID: <gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A49Pvy8Mw7q=8r6ziQi-NR=mGEOf=cekyamJ7mjKJoNbg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MQ6ZFJHWBD56O4PR6H66DWA44GENSPGC
X-Message-ID-Hash: MQ6ZFJHWBD56O4PR6H66DWA44GENSPGC
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQ6ZFJHWBD56O4PR6H66DWA44GENSPGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============1732812954564019860=="

This is a multi-part message in MIME format.

--===============1732812954564019860==
Content-Type: multipart/alternative;
 boundary="b1_gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

> Be advised that bad configurations of kernel and/or FPGA (or device tre=
e\
> info) can lead to boot loops which are pretty annoying to auto-fix.
>
> \--M

\:-)  You caught me daydreaming about automating the tedious debug I=E2=80=
=99m about to start. :-)

--b1_gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><blockquote><p>Be advised that bad configurations of ker=
nel and/or FPGA (or device tree<br>info) can lead to boot loops which are=
 pretty annoying to auto-fix.</p><p>--M</p></blockquote><p>:-)  You caugh=
t me daydreaming about automating the tedious debug I=E2=80=99m about to =
start. :-)</p><p><br></p>


--b1_gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg--

--===============1732812954564019860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1732812954564019860==--
