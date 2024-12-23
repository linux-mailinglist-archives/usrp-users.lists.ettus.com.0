Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C8E9FB2F9
	for <lists+usrp-users@lfdr.de>; Mon, 23 Dec 2024 17:39:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 245333854FB
	for <lists+usrp-users@lfdr.de>; Mon, 23 Dec 2024 11:39:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734971941; bh=uAd2UWVvG0Gca6zK7ocV23czHfzPQBqaeqSpHxymevw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e0ZpdSIfLiDo7u4/VP92x6GjRzp7bcm7GC1LU08zKzj2uuaRHmmKJNnX09372iQcq
	 QaDG5YErWw4N756YAbgxoy1ujJhVPErfpNdgTGsLsgSl8w6Gsd86ZxLEGlPZ65DvE5
	 Hj+rjWu4Zk0X/OoQD/1PLxcinrKzNUeWMg3VdbVYtIwmD4XtHCUcNIIwPCOI1q9ftp
	 ZhwN+6ec8ZvR4ZF8GSzOaUZhv5Q5aVwjM0MB23HoGUHOZVvnQOdHTA0/z2NWQX3FqT
	 wZ9/wC2WDiUOTxEBNsKE74bx0yusBbD+5QHY+x8SApA0Ajb0FvZvCy+EMxZ9KMiFlv
	 CQUGdpVR+scqA==
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CABA4385BEA
	for <usrp-users@lists.ettus.com>; Mon, 23 Dec 2024 06:53:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734954818; bh=TkVIY2id02WTnpRmvR5eSHDxj9yPsD4wPSsT07WsSaw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=PH5EN1TKgc85CYom8xe/x0Tj+PP7eb2mJuwVKALEM6ECeEaiHt69SeALFfdrRsFWM
	 VvRWznzIM9JovoMI9YL4Yjfoefb51N5onTwjK8zP1Kv/X455QUKkJ/haISmSiJ4Mgd
	 JfTSSPbg49Qw67gqwmLoCt26ecd7PiJdOFxgiEG6Bo3NDliHaGGcomSucpNMNuEjM7
	 1MiNEtmRTqGTalcc2TP2I1HU6DmtLSWUiCuKawcAKTHVJUY1hSUtvBW0J3hUCVpSPG
	 D0awUvofzrxI6kAic2hM1WK9s0W4MSPgNqWNlVZ3PR/LTHHivY6JrYLXR/ZHoYqhIr
	 NlSh7GPYlWQ4g==
Date: Mon, 23 Dec 2024 11:53:38 +0000
To: usrp-users@lists.ettus.com
From: elkana443@gmail.com
Message-ID: <Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY@mm2.emwd.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5hW=VJTTZPShcWLxucOMect=Tq2C059TF8==OPeZF-eg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: IEQRXHANVYTNXYC5P5BVWS2BMBIEMBRN
X-Message-ID-Hash: IEQRXHANVYTNXYC5P5BVWS2BMBIEMBRN
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IEQRXHANVYTNXYC5P5BVWS2BMBIEMBRN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4236803637193952407=="

This is a multi-part message in MIME format.

--===============4236803637193952407==
Content-Type: multipart/alternative;
 boundary="b1_Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thanks a lot for your help! I followed your instructions, and it really s=
olved my previous issue.

I'm currently working with the master branch, and after running the comma=
nd:

```
make x310_rfnoc_image_core
```

I successfully generated the file:

```
x310_rfnoc_image_core.bit
```

I uploaded the `.bit` file to the SDR, but now I=E2=80=99m unable to inte=
rface with it.

I tried using `uhd_usrp_probe`, but it doesn=E2=80=99t detect the SDR. I =
also tried specifying the device address as an argument, but it still did=
n=E2=80=99t work.

Could you please advise on how to resolve this?

--b1_Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>Thanks a lot for your help! I followed your instructi=
ons, and it really solved my previous issue.</p><p>I'm currently working =
with the master branch, and after running the command:</p><pre><code>make=
 x310_rfnoc_image_core
<br></code></pre><p>I successfully generated the file:</p><pre><code>x310=
_rfnoc_image_core.bit
<br></code></pre><p>I uploaded the <code>.bit</code> file to the SDR, but=
 now I=E2=80=99m unable to interface with it.</p><p>I tried using <code>u=
hd_usrp_probe</code>, but it doesn=E2=80=99t detect the SDR. I also tried=
 specifying the device address as an argument, but it still didn=E2=80=99=
t work.</p><p>Could you please advise on how to resolve this?</p><p><br><=
/p>


--b1_Db9UUeiRsublnFKxAI359TDFxCairBAR8nM3wOY--

--===============4236803637193952407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4236803637193952407==--
